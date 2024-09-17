Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DCC1B85C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726540554; cv=none; b=PEj3+SDSA9hi6t3ndl4l/FgTAQUNLyuSmD+mP9RAHtj5TZxE0taFkkFuWhpAqaLg20oVhA0wByajsv0aCksmuUeq3tVENX+IDFipffAxeQtSpPqSSvVDnu18PfkxoK5vUereypcFBaEKX7MeuaFX9E4vXJweRPK0TJG7IOkiDZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726540554; c=relaxed/simple;
	bh=aiSyO3DK/Cr1qlNsKGOygRs1yLgy9Lb4SygxcsAKWfo=;
	h=To:Subject:From:Message-Id:Date; b=tNqNlOlp0Fv+603mjaCbPZKNKDdR5XiWNAp59jhHXZr8tfzxrTvNHs0EXCGrGEXedoLf8SfpCihCH8WbrGCLmfqIZ16f7a4r5pgIkcVZVuljBCgKeorxUNkchWg7vaqw9zCYtijD7hPsM7i79Igc0ALkVtv/ePy1IAsP0wEgR0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1k/VNdh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1k/VNdh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470DC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726540553;
	bh=aiSyO3DK/Cr1qlNsKGOygRs1yLgy9Lb4SygxcsAKWfo=;
	h=To:Subject:From:Date:From;
	b=s1k/VNdhzwpaXEOKt4IQvBRkx7/ig/3XfpMQ+LdbkO/H0l81uoQcmzHFRCv/4AnYc
	 uuhylq5hOyF0NbbkfA+c6yZKKWSZONH5hL0x+EQPucYO6rsPEbpCsngnmV4dmZFUZ8
	 gm34Anot+0w8r1wRMw7Wz4P42ZgETacDi3MUL53tAS94M4ljLX6w7IZVruBSt/6KV7
	 4Z02KOD2/k8NSly6kYR7497eIQE8idlX+3jyxstlIZAkZdpfAyFfwOM8BBFs2+AM7L
	 uq6kOZ4tBp5La7/P2dMSjrdL/DYLIzQoGSmSRqst7PtiiKgLRNiHDSgmEeE49VXAxN
	 dwgJZCk8vZOPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C7C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172654055358.24500.7595886033733110661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c6681580d146f18d74eb7422baa38f84735a7be6d85b759db4d3adb4e389fd
Date: Tue, 17 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726540553
