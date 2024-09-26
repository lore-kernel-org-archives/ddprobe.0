Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235FB13665B
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727358954; cv=none; b=eOpJCZhRdiBALDUmyT47WQntLdmMVd7SoSX12wnLXzkiKlumn6P/RS/Q2vLTdmVu0rDET2TUUA/cTcsrONvylV5HXhKaVTNDCB38jJtgB27Rnn1HGTITTNwoBjwP57rq4f3Almwe9gE8XSXm9EC+8iQikYg1yT7MWDqj/B9pJjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727358954; c=relaxed/simple;
	bh=UjLCJimnbd6Z1e3Fa4UkSihYhwRZyOdzocVm9sv4UbA=;
	h=To:Subject:From:Message-Id:Date; b=GEvV2KLPEUEHerEZ6B++/RQeNqDFSbJmSb2vdGJ11NAUjIQKAilvGAOyM9dN0gTsbzhqT+pjCvKPKE8LKikZkeZJTl/Aq0Q+hC2mBObhcALV+UKYmq2Tg2+RJVV6CyoC0x174t7Q3vfKvmuqtNaNz2xztQBtWWdyWyOZ3IPJg0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIywj+NI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIywj+NI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8323C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727358953;
	bh=UjLCJimnbd6Z1e3Fa4UkSihYhwRZyOdzocVm9sv4UbA=;
	h=To:Subject:From:Date:From;
	b=GIywj+NIq8N45YlXRDWhV3GitDWNkqr434drIZ3N1Cicy3/lS/6ajnUQdNu+XEjNf
	 2Q4HJWU/03FE7QPxFw+9tKX2m86Vv4Vmyg5OcrdOqtef1wcYpCF7689ih2wxl3gd7e
	 we50RbUC/wiUFEdyJTIpnq76No4iofyUi5c8cll5ojpIw4V1fAiFHzHo2z9dvUhv5G
	 ML4D1kqfapNB7YuP1lrQSiTOip9iVhwvnV/m3v9OJn2AwEC/NVGGFN/CM944i1CLkT
	 TC7wGQRCbUEiyl7/SoVOfsyWXr3NlH5TwJHwzgI+Y3IbaYS2bctHJ55IWtUgFSrViY
	 nz7KXD36ZGVqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94293CDE009
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172735895359.18714.9574011632596211713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1637cf1a4e62d36a2567bb011acb1c7724ab7aea19146e808bee3192ce0a7285
Date: Thu, 26 Sep 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727358953
