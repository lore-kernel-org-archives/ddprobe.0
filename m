Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7B893CF699
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775747254; cv=none; b=s0fVgEUc0xoHEhwsga743OSfcpxZ8m9gSN2ROEqhfpox09TGFgt/ewwzzRYCJJP6yTqTs69dPuqEdUC3cYCSwqtCj+B7eY9QNaVljJGk0qpAZ7xx9+MJJW9jkgEZGP8CpLdPBVtkOBtRM1hIZ1R3/U5MDte0QpEMMNBl7XA7pc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775747254; c=relaxed/simple;
	bh=FOIY5Y2eWz2ZKuyZDIqaS4xqpeTbVUWsX9OK9DzWY7c=;
	h=To:Subject:From:Message-Id:Date; b=L9lcEdanmfat+vbjFLgUDkqGlN7JfjvdjVuMQaU/+XtyPSD1j7dWYs1ZFU1vD91J6/elNaLCXe1n/09dgpduFzySppWhd1g435lSv2sBzxI1MXkBvirKmLqSzn/MZH6f00YLS3Hl+n79uBBtFUkcMw+jqC0izUnmisRAQvQk3hA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upO18vP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upO18vP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4C31CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:07:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775747254;
	bh=FOIY5Y2eWz2ZKuyZDIqaS4xqpeTbVUWsX9OK9DzWY7c=;
	h=To:Subject:From:Date:From;
	b=upO18vP5PYwcad3EuMSZ4qPLMtgEZO9JUyFedyMGlCol8uiVXPUXoOu/Iied15Bdc
	 9QzXlTpC1FCHsji4jvtgSGmHV7w8C8CRxBSA1ZO46fzt5PMbkuIfahhI3ZuQdhwKCi
	 MxEZjQmMNdUjeuIkY/TJxO+JOY65m7qgVqtvf3r27FxP0O51TqUhAYCFtRiOOU+CTo
	 JYLxzOTa/SrM6xDUENgOuYbmvArM5kXuUyG608kUbSt65NviGkmAsln3wKHhTda4xj
	 zW30HJIBvTcJ4Lq/0ixK63NdSTL+80h+z4Ac91Ai6Z4Hq/uOdSqt0AfH1iLojHzTY5
	 cX36N6316FacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 031DDF31E25
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 15:07:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574725398.19586.3904148497376004396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9bca545c6ac4bfe7367bada4c4bc6b15a7892598f1bdff3a6fd016fd2591bf7
Date: Thu, 09 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775747253
