Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A450285C88
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764192174; cv=none; b=WN2WypAApD+KtwO9nxT3/qd6P7/AZCdoy75cO33zxRIIgarfq6liLXyptlyZ2gkRXJeH8Y+D614nnL/r7tDiK/uEjnJUury/c+n9NWYWbbRnW9Lp52TjdeuHVPxXVGYnB+E3RmcsXitfigCeBPkXL2TlsRRZOtfl2i+Q55t7jI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764192174; c=relaxed/simple;
	bh=d74g1fwAT2DizTbutyy8YwOEq3Ddg9DKC9qbkv1BhdE=;
	h=To:Subject:From:Message-Id:Date; b=tOkfXfNHhNWhMeVutC95WXHV5xweVMDmh7bTss/IXt9Ib54RB1iJbuoubxa3zUi8kpRNXFrTSxpjPBke0zbCYXyiXA5mD4BQUrf4bNip5sGUU/AEpKJYu7HgOGvTBbBmkDs/n6YRzFa/YL55IXu1Hk8eIHqGthVER2+o9PfQpwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2ChVRfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2ChVRfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3101C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764192173;
	bh=d74g1fwAT2DizTbutyy8YwOEq3Ddg9DKC9qbkv1BhdE=;
	h=To:Subject:From:Date:From;
	b=k2ChVRfxE7I8foP0+2s5S+EbELN4OfvzwxUYE6SQ8+qxViFibsAhznzP7Sb1PtWu9
	 olnFbEv2xjtMFKWb2O6zH07wu/SrKAqXgb4Mp7ypjMaN3/Ovkit85KCdr/3r1WxcDa
	 c87a0isCVT0e5n4FlUN67sWvDvel/+kwpQwIgD5Q5CzA7bgGqZzNhXWK0qoVTFvGy6
	 f0oQRgwftqC8k4veaVycHgG+9v1xYfzz3ZuboDZGTFQ7rQ+i//mjr/H0vCA0BzLwBS
	 UpgtUCh4ovo5wdOg19xBKwjU5F64zvG6nXpfC2wFpx3ZZYm86bmODiVRCHo/XrtOQx
	 f86mpd9Bw+Vug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D86FD111A2
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419217362.18269.15198322085164358291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd892de95fb7e14018e10a4418bfd88bf69e60a92c454d739f51785f019e30e
Date: Wed, 26 Nov 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764192173
