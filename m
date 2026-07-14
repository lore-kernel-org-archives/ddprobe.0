Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD9037E5E0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784060916; cv=none; b=QMvAKVwtNqHaVTkcsUPJrUklTIBoUOwExDX4McWPpHvy235L/2adCipCMz0ss1aPyJZGPyIHv+pTQ1IGIpidmfVJY3kVHAcxuuKuaTxZOqSMMqRrqiu9C2wa4Y18icxctotNs0xRkdmFcLJTf9/p2DELMFg1RucCF+xvTz76o+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784060916; c=relaxed/simple;
	bh=nAICFY5DsMSyV2AY4Sf6mMWlmQr5DHcuu50v/o+Vz00=;
	h=To:Subject:From:Message-Id:Date; b=GY7z90YUSYI9AjqkT4py3u8j7MLBZmxAvgqrRmnPgEENWoJC6dOfjA9I87xDkTi1lqKJ2FugQBl+DJzjPqdVdUEpKbiaqnnJbd+O/mtyUA7GlEesaE8WeK4QeaoGf2n4SsraZkc16GcL0iL+9HlhDtuV+yV4VQNl6Cg9gg0cWAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BItpRocD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BItpRocD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DB1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784060913;
	bh=nAICFY5DsMSyV2AY4Sf6mMWlmQr5DHcuu50v/o+Vz00=;
	h=To:Subject:From:Date:From;
	b=BItpRocDqgSvFlQ1CZSXBK43aHAJLu//jATurP9IMtCBTaVghjhYvv23sdAdFSgiP
	 eIBDAc6mdf0z/K5Pl32CP4DKefKgIwHdjR8+iGZgy8wPSUyyBlvkt4zS5/bP9IjsEf
	 dJcC0n1B1RomZ4RRzXrQY9Y89b1uIrjAg5w9z5BSU1syqH0w0Qfrj/R4UyXapJiH66
	 uMa+yiZRHi6iTg9Sz0Lqv8HnloZI/QVCSFjSlFFru7xl/xudIvvxq40aLERrd2ylBv
	 E2wLHnLyqyAGdIpORf3Cu2ZfyHxJfDkBlfIDJ55hjvgfJI3zMtOdZWwFetM2tT5irz
	 iZwCX4uKfrm+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FC6C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406091371.8667.7250394062664680666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a38b7aaa297a9337400a321f5d3b4fa5553cf51ea1454f2d86719bc1b57c99
Date: Tue, 14 Jul 2026 20:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784060913
