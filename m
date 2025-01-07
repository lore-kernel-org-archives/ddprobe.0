Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5598D56446
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736286954; cv=none; b=IvxehMZ54APRee843b7VNWHuShH1+Q/NY2q79AjhEM82GMaG8xBS2d73edb4fgy0OuK6CPgWmFLjht3VdpXSoIb/bG0ss5zJLSdeuOvmETCSR8CC3nKVCWuLHdRzjHj5rRoIyUVN/k1AOtyqGtiBKYLJwgkIHc9vxb0PI+Hle6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736286954; c=relaxed/simple;
	bh=UpOTMflAfWSZIjo226/7UQaXqbe7wAXPnArqaICUKiQ=;
	h=To:Subject:From:Message-Id:Date; b=oFBqG+W+p/JyoQa2LzRH+EzEn7vmRExIoR2apduuut1UM1TgwzyvXJcX6CI5k+aDe/2DAXJh/XMWAdJP0BtrpOf6YwnS2mm4sIuPg+3AyvIpcPgS3xfxuEr6APzyd3Kgr2iHzMh8AQkuzEIWZ8UML88c053ndFJVDr6PoxakYlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDfLCAXE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDfLCAXE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABB1C4CEDE
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736286953;
	bh=UpOTMflAfWSZIjo226/7UQaXqbe7wAXPnArqaICUKiQ=;
	h=To:Subject:From:Date:From;
	b=fDfLCAXEQRW8GYHnw9/J8PkEA90ysiAFXfZ1a+wdRfjaU51arZEwzs0HyQnYZfWBc
	 Xs5lrn6OoQTmSUgSHBI3KZp1tBftIdjqdD0Gj5UUi55I8Od1qaa72QvauOmCM1lw8Y
	 VG/QWJI5/u3B3W27g5I7DtQcjRRQD8YI/aumox78Kt12l7mVvsmu9/9m7fZmP6JJbk
	 Tk0l6oXTcBgaWLXG9O8gaNBBQVoE56WGJwBAe9WANQyAXp2DsYEEMEOuzi9qTmcJiO
	 HL9lV/GYTHxQnQbV20OiYzXoNlyyue3dI8rj1+1UeyGgR/kNqkBYvng3YvlHzPTKbQ
	 gYbjw0Sj+bX1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A52E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628695368.1000.15914426092922513218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9250db26c7e96832ed9622df187af5e55b81a759c2d426de268aa3f0f862f28b
Date: Tue, 07 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736286953
