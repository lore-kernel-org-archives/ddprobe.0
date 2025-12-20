Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC8E1B424F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766236434; cv=none; b=kHOlJmXBFoV3YDbIbDFG9ja6ZjpkfZXeQ2KhEsROxLZsnZl7cSoiuehGeqX7L6Mv5zyJUzPcMXvyJdwE3zVZcyvksAx87F3gxLQd3WQcvRXMeyK8169WfmFaNlqahjrwx/YH86CacRHEvCiNHO2dZZA1YEj+8WLmxeIIkFxTUC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766236434; c=relaxed/simple;
	bh=UrhFSK3NXiR0l8RG3kXHoxstxdOsLcrh4ea0gKIfdHo=;
	h=To:Subject:From:Message-Id:Date; b=Acjw9phagNoBkDzsKsMVScvZOLVHnYAfmKG/csdVa8HeLo8Ubo9NKnM/+5oxI5fez895R3UPBViCHLx5Ybrk8FS0JwooXOWbrbGahMvz08AuW+8jTkkpE0AfbZosH8tQxrChqi7+GDt8zuveV9n2TT1voWo56bja+LaqxI1KPTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pN9giL29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pN9giL29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A016CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766236433;
	bh=UrhFSK3NXiR0l8RG3kXHoxstxdOsLcrh4ea0gKIfdHo=;
	h=To:Subject:From:Date:From;
	b=pN9giL29Un7zsuD/HoLQrjJ/AzY72pKlvqbQ/AXUQNZtP8Sa8SUjTdOxL5e4BhMxl
	 IcM1BSPgLEeWqyfqRgBMMHokjT0CQaQKM2QURRvrqcMZ5zFR1YWcoU+8C5jAqZauu6
	 X+WC8jyAerYaMxyAhZBaIswRIhY1K17D/J5QCPQEUMy39wFG1din7GKpPPMy7ZCkXu
	 rHjMsb9q11TPrl/WkVVV0vhKETkS73IKZ6zJHsAX66pnu6uM0k053TBMNgaTgwyJD8
	 WiWG5jDmWnCc5V71uhDKAcouPx0xx6DPhkT27HDmuopAGSB2iiykAFgFGt7NZKNEyN
	 WVDzrMFc/IFUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FACCD78797
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623643358.15335.1028169874125022557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319dba90b023f7cc51126fa0fca8886d78626e730d49e0ef148858e11e7a0b8b
Date: Sat, 20 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766236433
