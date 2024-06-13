Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51487446CF
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718254103; cv=none; b=JilgvJCej3Hg3NXSKnyV+ReaQ1+pmr46MNp8QulBhKGI12NiosZnCDrC9YNPJ33TcUt62CD6rdUq5N/PbmNj4uqlopfDmuutOLy0HmLDrufreP3jyRGNf3zXUtOgUnXMGfcjvLKSw1Cf/IgWN7oihHQ4MoeYKXmxEmLTmIWq2RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718254103; c=relaxed/simple;
	bh=1pR6V/K2EbmkxeEBgoosSra5SCmbrq2U6BVvNrH6Ofg=;
	h=To:Subject:From:Message-Id:Date; b=bCIcqa6llRYgbJtzA5Z7s7e5vJUa+9HX+s8xsRPSDvLVIsqB9uQLUaD8ZjdijZVa0oIIzq5IYpdPbxy2aax8BqCHgUWlo4RKz6p9YU1sYuwNfrKXrIGziXfDEqEWAkOUa7c8Ps1jE/U34r0VqRWDSQoXR/s0hM3La802VJmOGCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgYifFOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgYifFOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0B77C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718254102;
	bh=1pR6V/K2EbmkxeEBgoosSra5SCmbrq2U6BVvNrH6Ofg=;
	h=To:Subject:From:Date:From;
	b=RgYifFOPtiz4fgauNk+1EG/gi21tFOU5egj5QKC1RCZERwRAsP4nzAbYxK0Z0FysN
	 zNS8eRChQmOMzEuLrpSaiPQCpXP56xfS7pwkNTxsAxYdVpfi3q7KJC7BeiIWZDBRf7
	 FmuQGZ3p4tFYzd8IkKRETzTGz1XsrzoG51rlqyjP2wUUp5HICH2k7FDsNDlejzLdjP
	 yrEegklX/SQDw8TzKnNY2eef43h0FOEPyI4KsL+Nnd2Ioyy0OJqtaNdC/WY2is0ABW
	 u2cQdK15HdDvL+Zz55Zyte5W2Ajqr44QDVlPj15QOW+K6cPgyYf11iK6GNegNjiDfo
	 Eryz3P20hG6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EE3C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 04:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171825410277.3928.12450926589620119704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 977312e10df2eadf79544421ed899d87e16e8fe56981deb229a802069700d1c4
Date: Thu, 13 Jun 2024 04:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718254102
