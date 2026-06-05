Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A4623F9288
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780656274; cv=none; b=a+A2Om3ZVF2EaDCLsfqpRV/Fwc1/qitsTLv7EmPJ5Sn8asFC93rIZ2r35VB+fNwxGO2RYGE3zzxmw1ybNrmEMwY79NDAVC/hL5zkXj6ml/3ntK1cOiKuEvOzSAAnbc9Ats6MFq6k0KYQ6dB1MZmfC38giiv/tludzu/JBqou8a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780656274; c=relaxed/simple;
	bh=71UIFRdVMp3VisaWeuU2rn4TWS+Ip9vXEU8G5JUkvg8=;
	h=To:Subject:From:Message-Id:Date; b=BaPjOpIuTSN/ta6nZKJeLCpNaswtRzLN0tz6qjuKpy/0Fv9h7G9z4PUHWi4sXCWPP+m44LNQ63LhPF2EWiWSeTRMeBn2hWZ+3/YplG5XuqcCjmWu6Vj5Bzb1YH8xmqPWhrqm2kMc+uleMIg1sHCIN6lsctXE500Sdber0n/lQ/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiwR7RkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiwR7RkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA602C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780656274;
	bh=71UIFRdVMp3VisaWeuU2rn4TWS+Ip9vXEU8G5JUkvg8=;
	h=To:Subject:From:Date:From;
	b=OiwR7RkFLwqcHuBH1Vhj+s7OHp1qM4nZYkQDgmTM+XHPSAcnLGLO8jCy6bm7WKuHw
	 YDBPuYxXeQMhcG9xOZuZuzu35LiUmJUwTgZORuJRzNy3BiBHy6gPaIKS1MD59FQ3Lq
	 AXQw22AraA8Gu7lXyz7oC5Fxn2REe9k0++FKyWbmDXi30y2EV5Xnnwv/cjOetTTqOv
	 aftDtzv6EgxbnRxtuaNiZuuoFNqmJxIJFsTmuT+SUuou+9Wo2Y0v8ROVzo2cm42A3Y
	 9s+Si7UaPrUyDFeq57NcfPjzoIA2Mlr20WUxPddGkwYjPYPOk+isaM1p+0CY/S6fet
	 IBe9X/LRzOO0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0609CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 10:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178065627370.10275.12941573140040961217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c71dcb7c3b4e71aa50ca8521054c7d3beac0b8180fd875c3d08e37550c98b941
Date: Fri, 05 Jun 2026 10:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780656273
