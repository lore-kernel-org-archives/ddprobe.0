Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28520148FE6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727234754; cv=none; b=BAp2hKi3nPROFoX1j0bxhpySSKocdQ51UZ0USJkl5gkvue/Q/ARigXOkR5y//shrTZJZ5C1R65wNI3lq3OtNu0pSC6SdeMdbt54k56awFPDD9JlFNxGd/GaAnxlztQtr3zQ9s7A5ElQIivGznTIRILTc5XZxEJW3SehbGaXRS0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727234754; c=relaxed/simple;
	bh=nFG0PuI/cV3UFok6ptgkytjUnuwGi5bc8DlFeBvoyOI=;
	h=To:Subject:From:Message-Id:Date; b=aO1A2GqSM/EecRW4lGiWQ1OT3GscdPl0H/Y61V4Qe+orfQ1yIRuyVCn+SE47yZfFlGUZ+aghI7i3WcXjiMcBJg+CAma/QCXjT+ta3OLrbnHYirprMggFNCGp0eoSVEcqxb6ptYMegeiTGLlZoxEmaDGVBjiG06mMh0vbk5/C430=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP9l8fyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP9l8fyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8EDC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727234753;
	bh=nFG0PuI/cV3UFok6ptgkytjUnuwGi5bc8DlFeBvoyOI=;
	h=To:Subject:From:Date:From;
	b=CP9l8fyIRTUeCxEROLDH8trOOdYDh7Lh8tSEgb3O/Jb3HWKu562YAoWNhgFWE7uJG
	 UnYIgNr8MtG70WK4tdVGH/00dxcFl7NzrQubkgS+mKuHlPyL9XTykOl9B1+u2nbRq0
	 EF5oIYpadcARFG1sElYnQO3fYw1X8FWh508WArKmV7DMs9ISg0tQCr3uMb2BZYJBrS
	 MggoNv6MLJXLSqmxjfOV3i35OEA8L4hZ8rocCNBstfiXadA80MY2YGYflP4JMmut8l
	 LIqPGeFEvGHL0vAtLvjteI6VIlx4ev702ZLgUQH03ZnLbjUBcnVUZ8RoEEPLdj0qkm
	 1cYS2YKQG7VMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A23CF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172723475360.3564.16287377401743075374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e051a3c21e9e0ea08495eb75aaa0cf58f8aa2f79f2a55043c364fb39619cb31b
Date: Wed, 25 Sep 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727234753
