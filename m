Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3985D5FB95
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748979594; cv=none; b=lVu1mjI/+MjdmDrDFs28bcu/MjRZc5bqiqUHFktU8avyEFe6rcCSLqlVgDnCwX/0+WJRjklwHgSPUAnEDJ4AX9hdQu7bhup7jgS2e9ycr72C1vvTRl/g7pTMe5nU1mVvumGkdFr56qMuPedVxkZphOqutkOuhYgl9u903Y7fm0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748979594; c=relaxed/simple;
	bh=KuIM4jGe46+np6RTbylQzw7V8Tw+dcBEZ47CtKMEBLY=;
	h=To:Subject:From:Message-Id:Date; b=T/vLdZ4FXi0psIVx4Pm4FwEbdSI04mddL1aMYA4EauD1TAhG7oMAi4MIk8b/hsnLabiDqD6vhJirlQAjB889VzydH6Xi5aeTugCLY6YmkoUbPghLlrxlSBrvg3YNOGojOJlYZTqGvafoRkh/sqvFLNnU7yzmbUKuReAS/FHTb8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ap3S0waY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ap3S0waY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D17C4CEEF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748979593;
	bh=KuIM4jGe46+np6RTbylQzw7V8Tw+dcBEZ47CtKMEBLY=;
	h=To:Subject:From:Date:From;
	b=Ap3S0waYPev2kkgoiIl3R0Mgk33ll923vy1BqIc92Z7PLxKt1LYw+TNxH8req4Cvw
	 P3HshAvHq8vILc7tNuVRSzs1ku6ixystGs4btKNqr5VDmaBE36vl9rnMZTRvLbkvJM
	 8X/ps1Y4casaxbz5KQkNMuqXni27gW7vvMK/9QrlMI0ZZ0YGGX6gwM7T4VY9xziccY
	 rctKKOEWMEPAMUCs5W7dmgIwNS0LpICDNmHO1Vka/mn6UAdrJRHEoMwuoGDzeM4fEN
	 a5Y40FHq7x4FiNhKCpVliO+fS7ySfSawxj4CC9uu1m63V8/7p84NIOf8bpVIQOCIXD
	 CwXn+L9+NCZ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE7BC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174897959357.32523.14794181603858974447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c811d081d4fa81a19fda11afb61aa8f892eb963c94caf11d6c0dea79160bb4a4
Date: Tue, 03 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748979593
