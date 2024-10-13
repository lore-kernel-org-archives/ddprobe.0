Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C00360
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728777954; cv=none; b=NkFGQ5eBkjIGPvmm1ITwCfwHqAq2pgxImZ8iITG07L4j2jCrOlgt5kRzb/Wh+Ss4WSPOCug/0QtsMo8I3fp0jVXWoyx1ZfGwDif7RpLT+ivE0dZctLSQZ8ObxZAfYQNbM0IME66bdSXw5tCxhierXFjGOtF3JJDg0/6ks4RGamQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728777954; c=relaxed/simple;
	bh=BfWmHmFASRyeIJ1Z4Ssg/6y124n+lo830tTuYHkxko8=;
	h=To:Subject:From:Message-Id:Date; b=Nyu7km/K5l7FKGdXQSsbelbACwEr/c55G3oi3/hGWI7rcHtBgUV9EWKLOWuoMgRN1P5EXM2Pr0sxsc2OlggrhyCikXLrIWRQ4jpvzKwxJg12GAQASt2JyaIO9wEs2uV4WO5cWKzTq9I6oO+GWAtQ+MTThb2rFv5a95vKN8LhLMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JD7JsPnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JD7JsPnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D35C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728777953;
	bh=BfWmHmFASRyeIJ1Z4Ssg/6y124n+lo830tTuYHkxko8=;
	h=To:Subject:From:Date:From;
	b=JD7JsPnr4Vo0N3FtheK57/qU521HxsbwpJO6xQRlTJ7YuwfrMrisP7k8Oh4Ls5ntw
	 MjkMmpJ6zgvUImx+6Skf5iPFPqxk63moGR6hlzJ2K2DlRwR+eVPxa/I4lotct+ZqNQ
	 BQdu71mX+YBgmOphzpi6/Zt1j5LSCvaJoj8PRHG4ZAdMuWNdXfezNztyLXs8DwQRI4
	 CtNhYaMOQCFKp2YqiI0PAcNcQ2jKM6tV9CUxFNnw/tB+xhJnSB8OjioJaaky+jinDd
	 YMFlND2Ol89OGnjHNHfqXFjTL0joUbK17le2KzsHLasWQwYzzVBetegNqkzA2FVyE1
	 j3qmXUQC409qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B546CF2588
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877795359.10729.7251881633365674371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599480f57169ff4038b3ccbde78d9aee5124bf6565bae5016cfc504a4842d6ab
Date: Sun, 13 Oct 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728777953
