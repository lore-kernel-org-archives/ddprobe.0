Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F84B2D7DD7
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787379034; cv=none; b=S6NYnvbA69oTkkZibd63aU0wzUL0L4KR4fXtx/6XPqfhnGyuhWEIZybNeJLc6Y11mwyTFa0e22z8pcGVA10z+SzD1VyefSBEO1EhUHr4jnjNtzN6Yz8+VZ2JhPzDylPNfnGAcBAtrtHFLbB8hM14lkstCH3eWIyvryIzjYlZwks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787379034; c=relaxed/simple;
	bh=FfWvhle6vCWELer8JLrVJaCwVFlcrbDsa++frsOg7mY=;
	h=To:Subject:From:Message-Id:Date; b=vAS/g+WBzjQAXd2Edb36o/xkj45ZHMLflvYatgBgpTOx0rgol13Hh5gw+B4w2ne7+kxUt9HZ/uqM3LicI9/2THmrb5kd7t6CYUbOczg/Jd38AlzltW093QlIS9sufqb9M9cVTzss++lAUPIZjhQiKiStzcD5RuNHCDKEQGvMklk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DTUEUf9d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DTUEUf9d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE574C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787379033;
	bh=FfWvhle6vCWELer8JLrVJaCwVFlcrbDsa++frsOg7mY=;
	h=To:Subject:From:Date:From;
	b=DTUEUf9dVr1v5fQyGZwPVf2BuHNF8I23lZ/Pi8DJLJRxxpcZ+qiRjF4CjICra1i+Q
	 znb5k+fdmOVN8efytytA2K3tSkAi6Ir1icLR/zXp8zd4nccAygB81xD3QmLPlU+Rqs
	 h+54csDuTzSKecyVo3eqgyGBqcSdHawX5uN+ijNT8tRKIrpPubTOxXJ582OmgM0oAp
	 MhYUbbBJB4PrD1+q0MW7p+9XlK9LQBZnbXIGUVNV0Dc6wkBDNtBwdNjbFRNuljWuYB
	 QflXiaVE1t6PfLu/5MiBH7gtkZcHurKnHfxPZ7yX4s/XgnSfZlR2p4HUXF5dtk0gTC
	 9GXCIXBL/fVRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B008CC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737903370.22234.13378954301290870955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3ce8e20b4fa3397f8c4070ad62d114106a7f11e16283e554673fd5bd1c5fe2
Date: Sat, 22 Aug 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787379033
