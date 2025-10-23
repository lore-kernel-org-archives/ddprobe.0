Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C9F2DA746
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761227394; cv=none; b=sDJyyTbEWYt9mfZXxBcy6+WPmW9RwdNCldEZ6IKqaUN0LU+lz2idhZCCGuRxXZU+01YlHaiFRh9HzL6VfLPp/MjQ4B0ItMAHRJwyg/6z4Anw3owkfgkQ0YomNzpXnUCSPyqD1S31rOU0BATOJM07QCfgFmS3zbZzBIgRO/JCxAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761227394; c=relaxed/simple;
	bh=7uHTj5rYkPGyRu5kVDc7Ap9Qm4Iid+3TXeXteUzXYZ8=;
	h=To:Subject:From:Message-Id:Date; b=HSuuVo3Enh1f1m7baAPHu7jZ175Bp3fodOZ5xGbYK7fKJJtV0zSU2dJKwArsISTtzttuhHfRcGLowqHBVuSAivhdDDppmCdEeBYr8mqcQyx0ccGo+sG/f7lXgBmIDLAmrPa3jSdNb1e95C3tANzF0HuI44x59pJyKMdqjKX7PP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SG0UTqSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SG0UTqSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EFBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761227393;
	bh=7uHTj5rYkPGyRu5kVDc7Ap9Qm4Iid+3TXeXteUzXYZ8=;
	h=To:Subject:From:Date:From;
	b=SG0UTqSE+jsoaxb+hHO59DlYUZa4l5G/OwQiVu77zoqkz3czXMcmjgi6EIrcbqAbB
	 ZI1MZ6SF1WSsfce6u+RuQcCsogCZgcBa7k2NNkmfY0lK2rJB+dHfmcX3Am/qE+pqGO
	 np7p/c6ucw0FJnt+45kMGFRxa7tdXY/EVcWZsv02lddmzs2Jyi5zoDtZBcUIyDfMd8
	 +abNaltu8w41KPI9vsblnUffLaGXl7S6gEzS8nyXq5cyrQZnEdZ//o9+tVsUkUBT0h
	 gJ1naetA4z7tZgl9Bo74AQw2FtFjK4vOtVPF2Uy9Nqxm81F+4cvjkEzBv/GyfhUwxa
	 2Kaq3ENaZoJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904CECCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176122739358.11193.10099036949703022675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22817e52e55c15d1c5ff54b8a4cd7a58c2460313975ad05a7acd964b6e1a8def
Date: Thu, 23 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761227393
