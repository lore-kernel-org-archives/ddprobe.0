Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C18C182B9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720353383; cv=none; b=fgOz+jn+DRuDhNNBrhz5+T6+PYzbBhEAXfuLu9CS33Q7VHnx9fSOgay6w9dQV9kro6K1w+O8f4GMC45EW121IQu5NzCjRn3XuefgLkpf2oAcVMugu/PdaUQkQRGEDjA1k3uw5OD68iRxdkL0OBZpZPupc1hIVGAwtGm3/AShyyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720353383; c=relaxed/simple;
	bh=GTH12PzmOFzk4RDyY5cs5k3HsUw6vwOlTMKRhU8tjAs=;
	h=To:Subject:From:Message-Id:Date; b=VWZzA5SiQLvJJuBa4oLkHcQ6IImdx8shuRK0HUT0xmC+Kg3c/vpbq3DhSvjM1R5O6NpmLXupSoTVaYo8FFi5K2K9BiJMQ/wrYISUQuudEAsCuqAYwJKBGfWkpN+3i247LW7lf2E8KTOTk0POc+io/Q8BFpFwcJ0SgtF6OSzYHlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpKphjf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpKphjf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA75C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720353382;
	bh=GTH12PzmOFzk4RDyY5cs5k3HsUw6vwOlTMKRhU8tjAs=;
	h=To:Subject:From:Date:From;
	b=WpKphjf7vdRFd6va3yCX7lrO3Gb5GVdr7zV+4gyITyqFc2myt71vh4gYEdgrgF72f
	 QSVK53iT1+gVHWTJoVZYicb6FnNQVcEAfRTi9GzdgGAYvdcyTKHF39W1+vRo0qztCi
	 UmyUwdVVneWydjEb4ghVXnsIB3dcLr1ue9GRgm4X4cFybuXvvA+Vg9TLv4Dlb0BZc/
	 RtXK9XUhrhvzRxy3+KTZUPy9JL+bMQVTC65J0Hnn+c+99QZ0XalRcJiCm8EZYaLtUK
	 TpGtPMptUofedZthagxFmC0tk+koQND6IsScOlczUq3ML6WNkpw2Y9IEoLSvs1NyWX
	 sIkFmpQ3v00WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53A0C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 11:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172035338277.16209.10597498083098625258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d40792198e7daed045bf1d2bb47d9d3634de1d57331b412d6e3f4d4eb42a99
Date: Sun, 07 Jul 2024 11:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720353382
