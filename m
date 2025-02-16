Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F2218BC1D
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 14:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739716736; cv=none; b=eD+tPs9sV7Zz5yYXdCByGE/WKgGskMA7IvgV/95/fSsW8Em6/Uc/WdndZdT3DdPgcrNwCnNWlEyfu08zTnTNJhLbgrycgWdmRkuwrAYU3h7q4SRk6XJ+W/1HmPWKtk7qDSBbiCKfJgRZIOx8DZ24K5O9elEAu9X2VY9DAZjiCSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739716736; c=relaxed/simple;
	bh=YL0fjmY8Bi6NKxC09J+OEMP9QPJnD4yCShk998exnHo=;
	h=To:Subject:From:Message-Id:Date; b=NyTac9B8SGARw8LF5KbtbCiVR4ujPwqq/ot8ocR8GC8/B4QoVTfdofgXtNDqMqge/moKJIrmuFoRqNVZL0JR148HFC5WaBljk1mw03TzDQJzQojOl45t9MlznjHBvDj4eWqu6CsLfS+VzZtpzrBtN442yIai/qKSR8m43CYziaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRMTkasp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRMTkasp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E8FC4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 14:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739716733;
	bh=YL0fjmY8Bi6NKxC09J+OEMP9QPJnD4yCShk998exnHo=;
	h=To:Subject:From:Date:From;
	b=rRMTkaspiK6l1djOgsPO9aFlisMlO+Dak7H8PiEJdaI5I+aQdkuiOvrn7UAS/e7X6
	 9xh5hYV8aTEsLkJk48+2kzyKaDU4WG4a3z6wK+mgnd4KYxLMOUkDQj7bUbVDWQ1edw
	 wbkmy4BxSnWMzIfELhgvU04NVkyPfw5aP/g/3+62UNY+U7bvv2z0+g786gjxIf9gLx
	 zI1Ouhb/NuhhQCLB0F1IlUOYkKI/3aXgqLIrflRJrvhDTDCZCRObQQET31Hx6xjpj+
	 7WZANWOO03bgAZuhX67dOW9GcpRNfBRHOfvH38VpFP5/QpWrZdb2SpPx2h7Zq2cJDb
	 QUL0uMBCZJVhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4503C02198
	for <ddprobe@lists.linux.dev>; Sun, 16 Feb 2025 14:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173971673372.22163.9901919976039723456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31fcee7fca68eda8a297f6a0d3c8c37a159e4ccc1ebbbdcba891633f7405cbe
Date: Sun, 16 Feb 2025 14:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739716733
