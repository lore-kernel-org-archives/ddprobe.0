Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483FB1A3154
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778897434; cv=none; b=BB7KBJe9cqozTF5F9EjFaFKRrH36u/uvWbMUQ005VG/azvQd2Ily1C3xcYUE62iTQINSSbnTk5RuUwR78Q/yTkAqpP5vGNkCskrLdcXIHVrorBkg3nbUaTu1Dl3YSFVTjlkG74PN6xLFSrES6wpEQ6SC94qAaGtAeZXHxc8DPlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778897434; c=relaxed/simple;
	bh=BjdrIi+JZWPjG26QWw8Ch4/4apupUosfjNW3SgSJcD4=;
	h=To:Subject:From:Message-Id:Date; b=YCj2H/8Gg0ktoVRaND0IdAvyIna8FvHaB3yI2+Jo1i2AoY/IxvUOMIBwbEQIXVqEjK7M7Gr+ackwfkQW2Ku7584JqP+aan71RX2eyKdvuFiEug2RLiiC3ZGUKIKkAI8H18LbqzPFX4OWxR9vROmvPiSfgvxfz+sU/+cNdsFFxwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGMYfxjC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGMYfxjC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7790C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778897433;
	bh=BjdrIi+JZWPjG26QWw8Ch4/4apupUosfjNW3SgSJcD4=;
	h=To:Subject:From:Date:From;
	b=eGMYfxjC4qEnbnjGB9HOIVMieG0zykyWSmtBMoNWfZMUFFAJ3BZBGJaqGJGFax4in
	 gTB42WN/2dI508blvuIbaC4c3L+cJRIDCc3S5kF+P7R91eOQvttDKKaWaWh8N8mthS
	 UNuarRPn+HXZJyqlT23eztr09uLl6GNQH9zxdixOFGL9g39JrmUuHybVNGLYqPG35n
	 nNkvCYpGcEW8tXIkbOtR+QH6W4AIa0ewsNtzq9qEXhnILee+ebSGeZ3BtckvJ4w3lQ
	 y0xwdU6PCVzuJu7ZwjKRxwv2SVLBX1D3/PXu/H1oXLhG2EgJyfVV5pIiF8FyHyFOXH
	 FiYBtR2KYHz1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E5FCD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889743374.30809.11784213339422494601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1639dfade98ce5b62275bbc2a91c2041834a0d60e10e5a689a08ae6346c036
Date: Sat, 16 May 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778897433
