Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C9A23BBFAE
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785090035; cv=none; b=Jm7HtnAwJYaR9pXpQnPHIQhDMmYsoOnzzjqAh0K6DXlJeKGisSE1t7ECyAbEHL9EDBdgdJAEsCgVctx56oyy+Igr1LLnXJs+XbD5/RdeBPIl5wD1VWGNUH+kT3a3vh+Hqb8Lsn4jmf5OgRrhCQ0M53t8YLhJ6Ajyrj8HDbqRPaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785090035; c=relaxed/simple;
	bh=+qlmBVQifP/c05E9tvUmGZt9XFmFcLVPYrRIoimkYaA=;
	h=To:Subject:From:Message-Id:Date; b=cDwh0mXZaDTQgfxuUNVAjTuUIaze/CECu6i7y6GUfO59tmxfsYaNsdcJkGt3lTDTwohIL8CWKd1WZdHV2B485uwBMRQtoTn914U8/7KmlzRx3f8Zx3HYCds9M5ik8P8UPWlqBa2HeBUyeeQXWZbMTRfujq+MQXAprzidcHXU704=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCVtQIUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCVtQIUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAA10C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785090033;
	bh=+qlmBVQifP/c05E9tvUmGZt9XFmFcLVPYrRIoimkYaA=;
	h=To:Subject:From:Date:From;
	b=NCVtQIUPwPAC9THg53QJH6wjExrStEptw0xu1notFO0+BfbhRnrEMOjCYROBILyBc
	 Qe3DjCzus80Fz79z/Z8I/Rza2yYJWjF7wbPM+kQhdHY2m5stmC0gCpicN46YQ/QSG2
	 IWZUvJXWImItzP77a/boofydmQ0I871xQUiupes7KQD6A08EBj4ZeMCkEJdFpW9X8w
	 w16esMzY3E1TQi/+MhiTgjgU2zVsWGFo8eV8v/dkgxMoQxaKoh4QwMJGUkJKMU830i
	 DYDOpjGzvXRaA7dcnPlp/6kKvOtYExh+qsh6er3MYjSDFCRKwFsEkCoLh/E+aFskla
	 btXgEd5UG4ytA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A856DC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178509003368.25979.12635521248150514191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35a296a32eacc6c772c44dc6e393ec82f0e448b9c54a0075b29a3c118a199af
Date: Sun, 26 Jul 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785090033
