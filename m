Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7728154706B
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790391634; cv=none; b=sUPIiuN8YPye2jtQYnRlDOAzNYlCyHRnr8v2wTTSEsAz66HlomhECG+VwE/jfRrg7Sl7RboB38q5V+4fzcA7TYYGkWtEybnN5j8VEOI7YkzuYAfFSDMZX1VaBFEL6IbwtVUchDx/yOIso1cX1+Vak5rbZPzueT9hFKjn2NxvqAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790391634; c=relaxed/simple;
	bh=XbNZ6nY83xQOfCCSXqE1UUiomWSS4HTWecrawKhb43Q=;
	h=To:Subject:From:Message-Id:Date; b=NDYhe8b0Qvr+hTe4KACc4e6YWyKiUzXqHpIaSd2j253WbwY7MKr3Jgj5yQgBIVYKYyMKI+RFSZcybUulb/ie4iIOballCrqLjrEYFZs0k5f0+0drPIvDxF8Ay4oKgyw7vbIAfZCthZYChFzD33Z3lOe3C/ftKykuBgSnSwkT1YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izBAsm3M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izBAsm3M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E00F3C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790391633;
	bh=XbNZ6nY83xQOfCCSXqE1UUiomWSS4HTWecrawKhb43Q=;
	h=To:Subject:From:Date:From;
	b=izBAsm3M6qrM4AHKm0Ey7kXehc5SLKS6IRaybug6wRR3rqGwTLtDQQyGaeq7UpclG
	 fRgUi7AK9akXjKjc25nc6rzk1C2NaqZ99D2JC9/T6ZrkY6ht9CDFdBvv8ybFYdhysn
	 GYf6kkLPnf5Y9eQFAscblcrLmgiCeCA4GsMRE6TgytRk+PdazWVHnUSj/dNjvmxMcP
	 LxwERM+iu8AdnSA+Vr729l5PESqHaHhaYZIRrCVvQwlqFbRixpWsfT+7gcuMUqz2ME
	 Z+RFU09xIMX3D34GQQOxmR2fnEsQDVycQKCYoCwKWaML0eTesf/+sPS/sYfTI6Pxui
	 lbIRBF8WvAILg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADEE4C98324
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039163368.11392.5374546873828597850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681105d4db9e28462b81bd85f1922056f25c647664f24b69c1f9aedae379b373
Date: Sat, 26 Sep 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790391633
