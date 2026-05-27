Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CFE377ECF
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779879754; cv=none; b=HVymbt/NGK4m9xo06JdjY7HmYM5NaaY76ri+rE5qPnD9sRdoM7scCssBFfSuG/mja0AbNszQdstePpwh/iMaoTr3ZTh+GrhUr5Gxn/Lz364dswwIJ1ZdzHUGnMFZSSI0hjxel58Wxk+cdE1crUb18mk7we4GNQETw2w91wRBY2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779879754; c=relaxed/simple;
	bh=9d2gM4KF9LROwrttWulDbnziwyKOo0nJqpBI3DVnqQo=;
	h=To:Subject:From:Message-Id:Date; b=i2N/e4Hp25bm39jjq859GIAP4fBaDlpvv+M+JevoataCp5gnivrL8NQzSMiZQ6hQXbNaeVLQRigFPu/oqynK4hLOtqI+y003VuoZG3YLQSDe43rYKKMHlGjNdu9ZKLiWL1o3L78eO9mU6M0Mj70/99zpPYI9olp05ct3l2WuXss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PErvBRHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PErvBRHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C929CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779879753;
	bh=9d2gM4KF9LROwrttWulDbnziwyKOo0nJqpBI3DVnqQo=;
	h=To:Subject:From:Date:From;
	b=PErvBRHVzF+14rP9EC5GDZ+Fcrz4dkYaTXAlyYQ8TA1gdIXaSjKoYVqRpTq2mOgfE
	 0izhDX8qeVIasGa+UzyYCS0MHlORtKeG7NRjbRwjkHDC8ZTgqf/gUD9FBm+oAQ3KFk
	 qin1nPGGHN4N46MCIaQEQrSUir7aYC8PNXYSsle9ODlhqSKk3v9Hi37MJUFXG3gmNr
	 B8m0guQERerZRLe4b7HMKqbacKkrIFZddeTKMetjtMflcKyVmEvIrVu3Gc+IPeBji9
	 6uHMBXR9WZgsVm2scNQI69tDjoG6h7q6lZfUnot3MuN1X+wsBCZK1e2eXu230tEiFC
	 GwdbbpmmTHsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A59CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 11:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987975369.19159.17347932483007973335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b5d3d0b833e44f96a784a0301ca165b88e69a58087bf07181344f0b66c619f
Date: Wed, 27 May 2026 11:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779879753
