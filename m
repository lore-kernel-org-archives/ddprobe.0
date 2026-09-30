Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379E021E097
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790733634; cv=none; b=EjGrnvBPVlTlloiwGIWGXLeirSImDdCXR9b76RbIbyq0ovecWAG1YZqG4U2kFNqwcDUkDW0OsbFS9FN6LVn/6nooZZd2LT0bG9y8QocjAqLaBCHj3fY3iluV9Vc/WL14eSPvIvjVzvcqnsYD6MuzrdUPPe4irFCONRUPcD4c+0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790733634; c=relaxed/simple;
	bh=2I3uO27YoiTua4iubLL0PfKolIghQKZ0RsgrzRBJxfU=;
	h=To:Subject:From:Message-Id:Date; b=rRof8fbWEC7Xzn9S1NQyubrpLZ230tDSTMKfagprz/LcKKOHnFdFBr3NiPu/vNUDgCQTteyngXokzqjt72zjMUH9xsEfAC/uUgzQyUXKnhyswRnqEVoaIDpQ2sEsdsGj60JbA6qqYoJpEGIh+zqWt9U2+c4PD2ddIr+idI+Qbxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCDmx/gJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCDmx/gJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC592C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790733633;
	bh=2I3uO27YoiTua4iubLL0PfKolIghQKZ0RsgrzRBJxfU=;
	h=To:Subject:From:Date:From;
	b=kCDmx/gJmkjqqQRGM+GuhaFtttnOHrn7S7GvgrajGOYq1DfoV/gvKzl0EHQPFGkiV
	 B4Xrax33fKp1jeCdw/Itxz1+5Ijw4kMlwBL6s514s4tIPRsI108v5NmVDol+E3WEb2
	 dcm5PfrSEz2mcZnbsNP0FvJ/qbk3+/FCn+wYe1XYjx6lcLRqMr5h9zeONnIrQs9gXG
	 gE0rdfZeSy3vMiDqqeMGz3Fj+L1DWct6m8tlscY5WApY/8nJ2OtppszDyO93GvzOLb
	 cWSIf+q2mE7xsjTKcE4EB7KX5mhc1qk4FVDzJg1bvyHctWI2fy2rjAJEfI+pEmDKQJ
	 hFFoadelbkbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D0ACA5FAD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179073363368.3971.17114460742682132818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff85a5f060302df8795b1c4d7eb3f01c43f71e3e182154d439caa47c9b837c1f
Date: Wed, 30 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790733633
