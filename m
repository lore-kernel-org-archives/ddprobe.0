Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5115723E35F
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786291234; cv=none; b=XlweVbRwtt6S/c3ISsb/4ySeVjiv8sYfGIfcGwyOYuvk9FQx7I6u3CSgEvPnIVSmu0QxP8KskZ4EJBDfHDHFwj9K6+SwdJ4kzl1JfU/wmwOOklZhu7gLkh51ztlgEoNcs1VPCT8By2zSZsquGJpJGXJEEXXs2/lABajiNVIHzqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786291234; c=relaxed/simple;
	bh=qsQzSRQUI7PZrICCEr/jIGtOshyykvtu2tvZaVR+NUo=;
	h=To:Subject:From:Message-Id:Date; b=L3F6DblMpiUlG61OPEO+TEazsbQnDffQ4KT/XbwY7MASIrX2KPf6AWJL8MMpgeh44+08ofv1QrMa5o58eF9jJQQb2FcZr8s1g/NzgWHpbwskHkzuuDJ8ePnlIFQXfL0ed/IuRjeKAUHR5vDxgrX6cWFmC3trRAjvPx7nEwLk+vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPpWDHeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPpWDHeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5656C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786291233;
	bh=qsQzSRQUI7PZrICCEr/jIGtOshyykvtu2tvZaVR+NUo=;
	h=To:Subject:From:Date:From;
	b=HPpWDHeA0mHLlrW6RzQvziQFhjK85t04TQ5S9jUs3mwI1aFXFMXyX1OZaitkcHc+M
	 6SCdc5BBCMq1tc6HTLJeXCHKdD51svVMgZDNLmGkgud1T0NCRBYtHmvEW1SBxUbEEH
	 3BxGkCKvsDPUhCQK3dHSps3esOYIAn+k1TSejOBtl2bTDxMfHxHlNbFV5zmdcn3W8I
	 XczGhS3HHDB77lkI1tYy50dBa3dCZUk4XsBxsv8Da6XFkcqpo0MnsCAuAJyQBHKKmX
	 Aa6PjJoyzJccpWUCeCBKotfufxm36rbn1ZuqbYOcbhrtY8VdpJRNfcPbUr9HX3pDWb
	 R3CWm1Ly3x6yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AC9C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629123368.29593.3448541878668592503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7a7159ed0809410da748bc60315b89a600cc8819c40261376ec47c1b11f4a0
Date: Sun, 09 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786291233
