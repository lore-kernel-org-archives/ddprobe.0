Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237D71339B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758608994; cv=none; b=Wr4ZK8ToY8FxM4wzVn9MnOfkLOLDyRwu+Eb1YSeg6bYDIgjhmh3ZgncXRyIjdZmKy8lbju+cTWQ9TUSUdg1QBdvl+6xFO/bSq4kkHewe0w3RmFdyZgzZFwXc6cVl7A7V+0v/rOSBMYM9VpZF+VznVxnre8Nznv2Ra1AvinOYRZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758608994; c=relaxed/simple;
	bh=T1CEIKkUKpoY2NUGzPDFMYzG/69zktEY95cULrYOzlw=;
	h=To:Subject:From:Message-Id:Date; b=jKxwt6T0y0dxpy+fUcj85Jm6szZj6DsKDANh9RaSZBfcQSJOG/JkKVTQovV98hVb7hnZdKejzfEeis3OPLa/LKllMUyRuGTaoaIXrCEm3RbTG7wTWo7ZK8V2v1Yju3S64oHJF5jofYEEiugcuute98A4FOZnkcaTxqCXfG8yXMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Le0gKdoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Le0gKdoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F3C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758608993;
	bh=T1CEIKkUKpoY2NUGzPDFMYzG/69zktEY95cULrYOzlw=;
	h=To:Subject:From:Date:From;
	b=Le0gKdohK0nC1tSC7NTWDiaMRSx5avB6txhJJK4jeX9K3wR158FYasCz/zNJGV5Hl
	 Qu82HV87F/DVcWBCsBOfuj2MBEqbBZah36SCwsY1ItbjJE5bRoEztR4JkuygNqkpsg
	 +zXaELYfmDbdXgoNnvhF932RtWNFOW7hsDTMDZWhTuuy07RUYKTOxEEVin0423Meb7
	 Vq3GiyQ8HG716XpqKFtFTpOAV/U+4CFTjriPT5AFfiXz0nshrG8K3ujWmQsEtbDf4r
	 QF8EpFk/CZWqwVUW5Y2RfH7Ml/O18GX0FLDNZcG8o1yE7HkhlcsUbegJ3T4QaLeIK1
	 wr48cAa0VeuAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE50CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860899357.16267.5263310995923606511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c939cbff8bb886d51ca770c82b82dd4cd96893ebc4f8a1229051762d0f3eecfb
Date: Tue, 23 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758608993
