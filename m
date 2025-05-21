Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EFDA231853
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747810794; cv=none; b=F5+xn8odgUrXS3P73hPOKNp+BoFnOufB9+bjzsHlPMWpb57jDzzur5n6x4//No8KjKOoXZwszuD9qIfSuHLMU2Mp9ZDwLLWOcnPU62GT2M7D3K/G98VD3FDK1ufP6pcS0gOkICHaQvtOgg6f4nrrz8W9xDYRjbgfgfEPiglBNTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747810794; c=relaxed/simple;
	bh=xBr9GgjEdcBVvMXCZxdWcfEgQ3++8FtqxFA20jl/p0Q=;
	h=To:Subject:From:Message-Id:Date; b=U5U+mDQyl8RXe//fmRZ5PIZmK21ykDRDKboVv1vFCYSWdIyjzZS++5eaA3NltAfKZ8VbM1341rxn5FOt9PJQpoEEBiBMLPBLnFxYzmyyJvavq2Pu7vWSqz4DP6wQUIGno+x4IzG/5zmjgM/lYsi3PVgi19OJeCpPID37SjH8448=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQFRLNQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQFRLNQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA88C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747810793;
	bh=xBr9GgjEdcBVvMXCZxdWcfEgQ3++8FtqxFA20jl/p0Q=;
	h=To:Subject:From:Date:From;
	b=tQFRLNQkOVWwnlBg11mdKwdbJbyo6/GHxSc40dSS1Bwjo8uF/qPNGpk0yOjq6mrbT
	 OIYijDbM+jGRTBE1eAGuDF+wlVX/drzrUHekOapCu7OOdiWOJrDLiqJhF/ftsa5WxJ
	 aRJQ3hf8mwIhOt7lex7vCCSAtQIHHhHm7tHp7RjUOjv+08NFLD0ee89gG+CZnLyo2F
	 AiBsN/iPNO6u6p6WPY8Uc0l37sFKbRLia/2eYB7JHSnimQM4qXDbw/n4xXC+BDhQ78
	 FprNN0awJk1CAWxC1HGO0NTEzkPqDDvl1uJlihSrm04l6jaG250xh3htXJocob+0cv
	 M9vTwJGAXu5UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F854C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781079358.1064.10729244547078614363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ef2721c7b43891dea4c775f9986656a2b005f29fbd833315d3186fe0d36edee
Date: Wed, 21 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747810793
