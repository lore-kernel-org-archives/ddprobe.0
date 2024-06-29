Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A331D52D
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719668663; cv=none; b=hcUr37QHxC4O4MVl8AdlQ+qwjT8sJveCmmS7wCh/urSJTbPO58a/ynKTMrVc7Dkyk/4Xnk6efsSl3VhLbM2Jf6DD2bm9BABJ8ibiKDLg82DM2/Q/xjgKf3UTOzMSwibX8SNcj5hAfZAlSywEEHbq3gKqxgjBPbFG42Bt01ijtzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719668663; c=relaxed/simple;
	bh=hb4LQoJ2eq0RQoIL5EhOU9XtLu/YkwMaKH1PrQ/zLXk=;
	h=To:Subject:From:Message-Id:Date; b=Wvagij9yPAPHYaTOjggNngzwIZA41BkgQrMLcQ58KYkUuDL5H622kUmO3UEWgfnv1qlG9ALBtgLymdYKefXXRB3bwBKM46n38KsrGyHngLmS5RZfTgc4cdqo96sNEGyZ3VC+OdAR1pUFPCDtL6KntSfGlbcn0JFY1rmXC9fuKV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTb2wKMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTb2wKMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1746C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719668662;
	bh=hb4LQoJ2eq0RQoIL5EhOU9XtLu/YkwMaKH1PrQ/zLXk=;
	h=To:Subject:From:Date:From;
	b=OTb2wKMq11UzqoMX6uFCwn1tueI5gd3QrjBwXpf9NSyDfFuZvv0YiGWbFuc2RaNUY
	 mh58hQUFwUnutT5Ber08KfG2V/0+YmJSTJN1rKQ7pSXr4e3uIG3Onpn+cdqIUv8yFr
	 OowCeZhi2GzRA3ESZTLr0QxlGBMJvU8LM5TOju3MDl0NHTCbybIEbJJEZLVp8Jm2eF
	 lZ5EdJCWum1+y+wZkGj7w9tss3US0pVC0rTTSbJVvtJ5h1nm+UuqIdEhGKUYpa58li
	 beqm9pSaQrFPyaldo8OvIocvHenOvDqknr6Y98UZSFkiXCmT80aFdGJe13OkXc14gI
	 H4anqf/XMhE5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA54C30659
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 13:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171966866277.29196.15171880393171133493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8343f6bd1ee90c02105b0a36bb37b3017c7ddaae1955160a9374ab630068e1f
Date: Sat, 29 Jun 2024 13:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719668662
