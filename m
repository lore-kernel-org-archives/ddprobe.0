Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E94426AF3
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 03:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717041263; cv=none; b=TWFpB3wExTmwl5Bjcmz6U5uEtu510tSLKSC5dsN6D59YyyB2jLB9PB2d+oIBxUVlT2MsVVo8qwhp/dqVfYMOQplaon4SOdTyhadU/1x3wlZX09ZQij7q5tzoVpyHH4n0M3VjtTk299kzifpfBwCOWVuXHyG+YD0vR7K35WyuwtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717041263; c=relaxed/simple;
	bh=YsT7Agp620HoxDeZOtpnBViZddkT03THILL4eV6GCco=;
	h=To:Subject:From:Message-Id:Date; b=Zlu6GIReRSXRhNQA1i96+Iv+DzO+u39xCTPNhBwB/v306bCf5j2KXVcc3W7yWx51FPZb8OAv0SJDFZ8lnXRaQdEPlV1TkHjOwrb/246Sc9DN/pbEjEyNwRAGJyJ7Z1GXGZ+Lzjnf57VWIuSD4224ziEKoYCM3xkSBc6muDzQwhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cReWN6EI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cReWN6EI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE5BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 03:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717041262;
	bh=YsT7Agp620HoxDeZOtpnBViZddkT03THILL4eV6GCco=;
	h=To:Subject:From:Date:From;
	b=cReWN6EI4ssLqrDFIoXIQh3q73bLt4nsGX1h8EWVnb9+Lu3wAxFlN1mXsbF0bgn02
	 2pPsABjBZIXDoJsVq183TgD5ZB4OycrOygJmq7rAmbw1jZoTxfF/b9Hp/E8j13y74h
	 zpRVBixk9UlfcWLURPME8E53XKdIs4vRVUCjFxot+iUjw2QLR6yAypqwUohqS2ymvv
	 9ZSzAXhn9GLgGLPoQIO4zXUp3fiCxpTEFF2O6IgqFzHDiepqYXuV20DXsiBhySjil2
	 GZtvhaQvpSAuscZE4fiIQYSG/8BQ4Q4TqvAyl8bJ8MoxZOQPkQyfOQU2fM7vtihNCh
	 KerD2Pjw+ZfvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C65E5C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 03:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171704126279.12261.16601747705735531456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aa3978ac13369bb10b5562b72e50299bc7ff896c8403a2da86092e0c5f1665c
Date: Thu, 30 May 2024 03:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717041262
