Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16C172D60C
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724656554; cv=none; b=azKkEAnSLuYV63mgDHklT+QRpUfgI1lG/ZZEFnEIwLLAAC1JLt3aAswiExbgrRIveLr8zV+Nw6KRQDdgMXraXl1o8j41zX0bgX4YxqLF0M1P1P33Kewwx3Hi3Pvrd2AUmg5LyyKnsaiGhiF6Arvy3Qh8de/VKcV8ZCFMbzekfYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724656554; c=relaxed/simple;
	bh=NaIldUGFUSi34kgl7fn5Ovn8cP6ooTzipRtFMH/vc/c=;
	h=To:Subject:From:Message-Id:Date; b=vBIQ67pCeECs0M/8Vrmtg+zBbhaBqqCFHX/zon0KYaBaxq3cyiIfvyBEt82LiMhBJKKZ7kTmrodh6D4rCbh6P1OOiFKpA22OcOmlFKwhjXaTVh5X0+8gBsjd/qSbin0HzklROfIeDJaZGM7ZT/mQ4L9UtZnt0OxmR/OKefSwVao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fW4Q8HJZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fW4Q8HJZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21ABC8CDC4
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724656553;
	bh=NaIldUGFUSi34kgl7fn5Ovn8cP6ooTzipRtFMH/vc/c=;
	h=To:Subject:From:Date:From;
	b=fW4Q8HJZUvFSFQEBDV+JtexQ0WYweL7T/jDZjBq65y1lTnyA/Y3mzJSn41wxJDX9b
	 zDlyAgirRmHIkpU5KcDObK4B67AenbLfmJtWGFfcMpyt26rBQquD6uwiO871aYUoxJ
	 JHBAuKX6PQWNxMi8HTfsdM71mUF7VeQClfcqwFcboJ49sR8vyz0SIiaQZvOJWiGrAI
	 uECrvYIal/RSiYqyu4XSTLFeCpsCxnUzM6Vx1vwVx/L45D+1PFwDMkPWpfCUG1OnSu
	 R4wf3Xt8zQIH/mt/9lkQVQKxFPWE3V7s7CTQHdAwkiduZO0EM5qwSXFZg0v3Gb/Aw9
	 VLcWVJzqVbS0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AD2C5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172465655359.7967.1237976655224357994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfff5f1908ca1a46963bcf890d1c4a104b128e41ac81a6d6ba345fa1e07d0ad
Date: Mon, 26 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724656553
