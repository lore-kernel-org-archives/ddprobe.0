Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE761F936
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792230634; cv=none; b=Y6P4dMClJq8uXOrUncR9f2ge0bPR4MegREiCh2pMalUp8LmigduEojSSR7x0Fb4DGROYgnB3zyzYaySRrf1U7C5y086X6M52vfHPWLzfBeNNgk/+ArQpgOWLuQovKL2ywDdks0x//Ix53NkZxWMc35cxuBkTytO0PZOZ05Gzsa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792230634; c=relaxed/simple;
	bh=y+xxAU6xK+WTS+XdELzKiP/CZIr8YTFR27QR0VGTDoE=;
	h=To:Subject:From:Message-Id:Date; b=urlH9+1AWVbu4EdClRujo7cuGnHiZpLZmFU8afo1fMqit4U+DQB2pd0I82Ge3k+kRzk2MTaBcM1HWFGPOsYXjfA+lHyq14UQmhOk5Zay1QSTIhCSUgfU8VOij2eo7uK7poO7wxYQ9Rc3zSQHRI5m84EkMNpMcSvftkGbksjcw2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2OGey5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2OGey5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D217BC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792230633;
	bh=y+xxAU6xK+WTS+XdELzKiP/CZIr8YTFR27QR0VGTDoE=;
	h=To:Subject:From:Date:From;
	b=t2OGey5ndVlOwFZ4Lnbl/qGMMHMlmALXajqgXeO/ce1U9jf2trvl+K4yI1k/lTfGn
	 CJ2Io96YVrBajBPFJfz8KScCUtrw+hZyINpGaxpO4vf0odtGjCJQPyCFnvcQgjSo4v
	 UJ1I1UZ4SdwsqAmijkHphGaBU6gCdBLjgFxEAUf++LBTIcOGpVDdCF5bmptK+H/UeT
	 s7TZ+nUzc6n+pejFKT5pCpX64BfwOR1rTq27Actpf66HwW2THvAi3EIDxGzVm4YvOK
	 Lknd6d5GDjzrL2aHtu1/aGUWf0mbVES0GhhT8vaPGhYZgDZlBgeGBZQ0yXfC1tmMiC
	 S5jvgaSQqxdaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B008CCCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179223063368.22087.11795302321870051277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e5640bdde59c1db429244bc10da18841c3a28c3f162d47c82e5a5b650ff21e3
Date: Sat, 17 Oct 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792230633
