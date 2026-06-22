Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4610653E0B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782128194; cv=none; b=OgcnQeEhJPCntjESBHRZwqQ5g6Lxk3rQHyNdbFlw5RMpQaTuK4ARQgJSxrHt5dB0So6x8RgY0xthraD50yUoBECOqDdejEy5KnVC+uduAyC4mPkmxeuvjnsFYQFx0ru+LcW1JbSFk2UafavvdeRLF7fqoSlJQD413Ll/i5l1qzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782128194; c=relaxed/simple;
	bh=Xmro8R/wjwX4f0Qsu1IQTAPAZjbIcpNiCFW7FvgnzEg=;
	h=To:Subject:From:Message-Id:Date; b=lMGs4CtZM4+sR4NJ0diC0JTtwV6FE9rF7c5fX6REV5wSiJ1/kLirQRZOjSbrAB0Ye8TXzqFIXWCf/IMOyfdy46k30tGCdfk6x/9CMW9yNVj2DH9RVAlEj9VUwbVa9CdLDD2X+8X0K0xJtNCosFpmPgVOb/6gxUxYbdTgyZEo0LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNhKzPIJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNhKzPIJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D89F0C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782128193;
	bh=Xmro8R/wjwX4f0Qsu1IQTAPAZjbIcpNiCFW7FvgnzEg=;
	h=To:Subject:From:Date:From;
	b=TNhKzPIJmLEg63ycaeLvhJQ6FDxiaxGLYaNjT9Il2cWa8z7jcvgB74NC1c6nT97d5
	 9sibRNckw1+YZp258/8hJS1gFHZvNRz7536lCEda2IWwRYjUJwJKQkLamKyMNlbwas
	 MGty7BOfYHmg902uy9TjpXT38tqMn9ur+yh4kFWDh8p32NtwG//g8DofQTcienJOW8
	 I8M+Y9zBiK31U69FnpgKZnuYbSedrLPp4jZkRuirHWfmBQk3PgYj70H0BAtBB8ap6C
	 0Eg3GLMa9g3s6ssvffFbsX84ChKIgRdlH4v0Qei7zMVKLmdUpIuiwIgqi68xH06MXM
	 MEBvaX0SkFcdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4D13CD98F2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212819372.13662.7635935059424530321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1930b60f8db737aa994133281ccf02c972b2695dd3dfd644d1fbb82b902af819
Date: Mon, 22 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782128193
