Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530C73CCFD2
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791650434; cv=none; b=ct+ju9B7deygNwPYM6N7cNcZxVDxOeq7xtVYZf0fK7LNK4qGFXSIES0dgOD+vCA0vXaf9JGqgIt3fwKmxNJHgNP6J3R+rJ5ViRBcJLz3JAnhXytVdcHB3Rdgm0691HgfbaxQdDi+XRvgcVcMDOD6IcWmKI2MT4LanmOjMmHj8+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791650434; c=relaxed/simple;
	bh=+kt/WDHCVKipZMLkIPTSxIy64cHpU3BawwlyQ8mjRR0=;
	h=To:Subject:From:Message-Id:Date; b=YrI0BYHeoeWobfFGEeNmoqCNBPC+/2jhRXbi1yYy82NfPu+wlJqM6JNvbVOd7uVDhh/cd4MoLgRnD/0TI7F7C82J1pnqcQ6L0R6MD00djxmLBR0HMMiNSvlYKi4TzGLuhgovNW44eY+SAX5oQh2GzAyqiTg/LBq8Q/yYIySUpnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W46jgFFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W46jgFFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D109DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791650433;
	bh=+kt/WDHCVKipZMLkIPTSxIy64cHpU3BawwlyQ8mjRR0=;
	h=To:Subject:From:Date:From;
	b=W46jgFFif8AQC6bNhzIpp50gjUXwqQjJiaQpHEnOZfnvlpFYZLBAgjUm3yX63wngL
	 /raCHQoZAnJvzjFOpPhEFvzaB5KX9/XkI1ywrIbRponqisj+UOqg5XidqAgv56J5mf
	 L/d9K0U1R56GUKf6Z1+JBjDTDlSmmKxre7xEk+WctIsoA8OusYIQhNOBFbGX/EO5nv
	 cKcLhQau5CwAM+GgpDFkcqufJPvdOumEJq+zYbosOVRIrTpxwS0n0AbaA/iURH/YjB
	 BH0i6IeNQFhgbHNkfwv4V4XjlKkpRYW9qzqahrEZ3BzGnbSJR+aLFmmVlCf0Ph2E1b
	 Keu9UTm/ZTYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBEDCA9EC1
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179165043368.16611.5204417132933342911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5e001b136edaf2e71e0f0cd0ca3fa43606fd1aef673781a614ab1165aa2d1a
Date: Sat, 10 Oct 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791650433
