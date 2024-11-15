Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AF7558BC
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731637554; cv=none; b=Ulrn7w2Netkqq6G10QctRb5z/XC9dnO4YeWfewNm44WU7nLzuJqOfs2qy7OL9szo+4LAbF1M6wtyGhWbPjF1pDv9/arn7bjF/Gj0CiwO/UinmTPrn2S99A1RuIMZhBA015yvCmJexce/816Hi/bPm2grc/Can4ur7EDXE1jWAjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731637554; c=relaxed/simple;
	bh=odl9QO2NIfTyTV/QB5kDxhmn4qYxEYdsuB9g1Kw4+pQ=;
	h=To:Subject:From:Message-Id:Date; b=KZs6ptFCvIWl2UdUdVi4rKi6hNBVVEwSe2feV9V5g3TyqUs6vzL7plrIztvlW9lN0L8H2VFssfbYqUu715JZuCnPcFnEBeSo/MJ2t6E3AC/8jQFDRP/7hsnXTZUprpr/6IzsVyUj1674GGbnXlfxcoIOl26N6U98xAB0BBOqMPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i4OkH2IW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i4OkH2IW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C637EC4CECD
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731637553;
	bh=odl9QO2NIfTyTV/QB5kDxhmn4qYxEYdsuB9g1Kw4+pQ=;
	h=To:Subject:From:Date:From;
	b=i4OkH2IWlY3TRy/a37KJc5KrypbpsuWKhO+AFGzW4wG0A1AvTbmdjQFgb6E9Gplu+
	 Ig6krNLddQcnDMEJVWO/Cq/PGW0jchGLPqw6x5i/afRexMH8u+269fCL090aWkOLFR
	 ic/n35dn3EMZwfLNocKHQhc244/Q6I3KdIHGusUaPLahUTMD1vWDppn+TrOb4VyDb0
	 IXj+Z15jaUd3b2HpNG6pnUgeVBK7Q91tnUUE7pIiG1sfzm0iWS82d40O6sAuIeCMZ+
	 OAGEFs543ZhL/r7aX1eg0x0IVoR76zZ09YmtSdTZMa7l+b/8vkFgTb+lMh5pF60Mla
	 e8OF67wB9gTKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDBBD637A7
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173163755368.6602.2861961656479541161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d70cc9c3fac9712e816749aa9b7e3c64fcead7c8971a0753b46694c2bab83daa
Date: Fri, 15 Nov 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731637553
