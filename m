Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD311E531
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782012994; cv=none; b=R9Ul/fvHHw2HCYHKeFHQfo7nKIOAhGZZ3uZ3Zbom0P072TjOygP92fbYtAcCmdGbmQTZZoMc878AWMxve0rODdMoLvnBMMR3ZVjLPk5m+GfvesrVnKXo8PV8mhHudXRTJkVAah757ePR/M1uuhZqzaAhyWJIJ/JLaFFqe2L8wfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782012994; c=relaxed/simple;
	bh=j3Oe0LLA1NW4Ihye3Cg1jOePH4EWmXvzFjZAoX5uHaw=;
	h=To:Subject:From:Message-Id:Date; b=b575Mq8Bua91/LJeMiHv7nxseROFlgILvSr9Ma3kCvpO4n/TPyHhakt9v/vKJeI6v6JnRw8hvHvwxamulMBcMUnSVDNAykiWo3NKYM4XS+JZigKcpHQFh+lPPDY63YL4NwqRfRhySkEPZUdkEUeiULvYAXg1+eXYsv1ll5SVnKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Adbc9d9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Adbc9d9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE914C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782012993;
	bh=j3Oe0LLA1NW4Ihye3Cg1jOePH4EWmXvzFjZAoX5uHaw=;
	h=To:Subject:From:Date:From;
	b=Adbc9d9zhYvZQHVmh3YVeGitIZKE2P23kIg69rnjkJ8BvQd2abDuAZYN02AWwp65q
	 65CF4sHkgt6SYiCkjKhLxiDzi0eTdSDlicK1k8QB+MjMtyE2rUgAoSd+H/3gikvDvm
	 GcnVC5WyAT+2zBK8zDjDwdKoyhKlugxlUFaAvh2g9Zy92OI/GldjpWgub2/fonB7BQ
	 JxOKlEEU94O1WDrViaXi/8XjgKHchDPhqkWekgZgo6ZP5LWlbDtaBFvKFzkymC54/Z
	 DY9dOw73xWI853kbt6998Bt6Dh9L35mM3WmkD20M41VQtDejT4jsPljGY7A5OO6twQ
	 izkKEB4HZa5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C5ECDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201299370.12246.124656104243936611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da250b28b655ecde3a3e1c42960020fcef9a16a8426fbd201c3460e0714abb09
Date: Sun, 21 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782012993
