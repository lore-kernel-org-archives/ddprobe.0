Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94C33F589
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778181454; cv=none; b=mjKyx+CaQYXE6EAzKxd3tfV13/NYsWZAmdnnpYAzkEBce9tDTkATWtZwgpk5PA9zKJfQDcd8sLe9rwsnteoSJYL7mbwpbgQIOXa+Y261UQ1yNeqVyLGKhhNWzI8qN7gYbSUQ/7ZJBBXXBEYCFb7PB4j+trfcnu//nXjCv2t5sgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778181454; c=relaxed/simple;
	bh=bBJGwsBWj+jYXycNjnTBCd0P56RPSZ1Rh7gTa4ZbKmg=;
	h=To:Subject:From:Message-Id:Date; b=YWznS93xiT4ZMbgPHxsGhrvPu99SoAdxhRYSzeo56e8JuG8Sr4Ma5zi64HyRahr1bKUgA67jF0cjq7nNrnOuy72+DnTWy189mNg9mTjD2V1/WdOKktpP/AI7+Zse3k8J+XAVCeO9VhevPyy/Vche7+bCdTiwZ9bgSMRjviDXCVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEC7IawG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEC7IawG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD3DC2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778181453;
	bh=bBJGwsBWj+jYXycNjnTBCd0P56RPSZ1Rh7gTa4ZbKmg=;
	h=To:Subject:From:Date:From;
	b=AEC7IawG5L36ZeCLGQwCEKA38L1d5mCIKFEDuVLcEQ+UIDGHld3qoCtUif3RN5hMs
	 E92ZSqmJz9LgRM4QgZJgmy68PT5h6WFE6GBESSfifFJHLFHd+WKBItHrbQ9ES/esHw
	 xF1SaywoDmA/7tT8jaNi8O69ZUEeXJcwl9uQlEVUo1dJhYhgddSE1Hd1nGBvn/k4Cr
	 P0jIKaG6vRPub7dCCHFgLSZLHrE6QFaujuVeX3NCoOSt5L9PBt7m8olYolc5K3m7y4
	 WemuPx1KM5kbU2iA64xce0S/PL0lALf99KYyO7nH3RaaXk7cSH5alsVxGeLi6aS5D6
	 dSGHqyvdn2EQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA887CD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818145369.4578.18278639352761686173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aaba103302c8e8499591923d339e6b023ae8b161b7017d519bf495b2ae5e972
Date: Thu, 07 May 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778181453
