Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BBF737CD21
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772507094; cv=none; b=KPV1irRLk3WRpviFXEGqnswKGxhsyX3EoS4T8cOYIQwJC6/eX+4OL2FppPqlsotGukfyWPMojL6XUg1zqOYBfDAUx4DsWvCqKDdazhUvjk3Uam19ZfDLQEhaSYamEK5HuxT8bpgBG4YDrDfm70/kC/cE2LIiJcdFe8DgGEZPrLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772507094; c=relaxed/simple;
	bh=W4sxyBwnEldpN0rlDXav4chE6/PxPGmGsnMOv/6H//U=;
	h=To:Subject:From:Message-Id:Date; b=RrjJE+E3GdeSGgOuInshVZc1m3qNzaiPbGAhEbEYl4A7LSXCpGEs4VT76Gx8u/QAC2d1V22yHKyuViVG9IdKbXWOwtdZu0q2PQrsrioWhYz+xZ+d4IxOqti64FZghpvfkpir14fx/w1ByUW3OqmjPlURu5ZcAQ3juMH2XuHhwR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVVToFBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVVToFBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0657C2BC86
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772507093;
	bh=W4sxyBwnEldpN0rlDXav4chE6/PxPGmGsnMOv/6H//U=;
	h=To:Subject:From:Date:From;
	b=BVVToFBXVmaFTjZo6//0OQytN4vIxNQJFpCSMEXHWbh1M3v5DLIqb65fUTcdObdlM
	 BYK7mQzGAPKabdcRmtko6PtKcyLur8V1CkalKUNR1jKVJsE5XIp7QL8j35cBE8EEAg
	 In5ARsJ5IoHL3gdBMWURJOwZhVpW7caJ+n5XvK3QKCPljCnfQEAOjWIQB8EYS74Y/s
	 oP+p93n2Uk5MfYCcXYbx4+4ObM/Bl9wMIPi2hcmDDXGEOe3JvthQZDLU6VAW9fwMuI
	 mM6JTI97qPGC/9Y7Jw4SWudiW8wTUWsGoNsV9+Xf/AiMfxoeafa5ZtG2Jj/hiXDArW
	 HNTK35vjVylhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75DFEB365A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250709366.5616.1199255957961632144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c9e4e191b00dd5b037860d245cda8ad1272ac43fc5f43fc7af6a790ad922c3
Date: Tue, 03 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772507093
