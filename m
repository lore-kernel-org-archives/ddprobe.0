Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83BC938F253
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784689114; cv=none; b=Xb3UhwOTZH7lcNn8xZLjY3O1R1BOKv2sBO+sG/8jBpNAnJkj0VlExfYiIoaV8GIAt2kNdfQ/dRovR28GvZ/SImcjt2b53KZxfipClXydjadWn0cWHG9bsWCY03lSZ+aUkgtOCMEVCvrCL89fAco00OLqZZT1Ym1RzyiX8QeGRng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784689114; c=relaxed/simple;
	bh=9QgIXZ/al3aVzez+kOF+54nut8d57oLsYIbbj3xC9Gw=;
	h=To:Subject:From:Message-Id:Date; b=pt3Xfy8tvgmRRiBGXfClLWkjEYC35trtDLT2w9EQuMLl2tWjhQUMFEOuH9eHE3b3ApMpVspcRqALAShYNB0unD+BvmbZIRthA92UsXTYhkv9qsntbQUQMMw64YXtdiKF2O/1W4eeM3+uwPYgGzmvvqYAVOi1kAqr6FYj8ov/K1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj44pGh6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj44pGh6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F44C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784689113;
	bh=9QgIXZ/al3aVzez+kOF+54nut8d57oLsYIbbj3xC9Gw=;
	h=To:Subject:From:Date:From;
	b=tj44pGh6ur6vT/M6BIVykU68HQYyE0DwsfMNAYXgODwiach8EJc6YW3oFQY2F7JH1
	 kPYYh5z6L9vSsE3W2wlP/2SMUuH76+N9utpMW3POqloUGLiEeY9lXZm/1HUfEaZsM5
	 e8U6k7+Gg7KEXGcbKZVLYg5TVXB1sDCainFE7r4K4gQYaCOGQQfdcT9QF+M/u1LSvO
	 NdhN20yAvTZyAf5Cq/FbI9abKIvPCw109joScHXjCTcp9qxuFosjN3rBQbvxZ6aisE
	 NqDwBLEJH4N5MDMq7sgthX4BNZtg95TICSJy/aXlK9Yo8w1pxqAC93ClP+yaaGtO6d
	 WjGFJkoTKAE7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF51C4452B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178468911368.20424.13926881014064793243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062f9c14b3d00fef1792c55964d5224beb9479d75eda41a1dd4b411033dcdb35
Date: Wed, 22 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784689113
