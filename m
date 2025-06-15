Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB1126AA91
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750003194; cv=none; b=iZXUwE6QqbnSDItCa2dkzvhEPIo+a4lbbMn+HW13eYM2NcTjPT1ZV6xnU7Xv35r0zqmURsELEr9H9p7hYSFqRK2u+Rbkpp3sfoJ5+jRwOP9mYAOA/TXO80tyY5lbgGs0EkC32GUatfUTi4+n/OEBryaEkdPR2MCIxLRkG9/OSEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750003194; c=relaxed/simple;
	bh=WpPVVYbSilQ8c0uuF4H8VtCCsXCJMZQIkL1u8Wd10fg=;
	h=To:Subject:From:Message-Id:Date; b=U1zzH/CTKkWTf0jVYzoBQClwiw40g1IEdjpeO0irspclEAUP54eO0ULmjYI1CnnjzZ8nuWgeeDzwbnILUQyY6G+qFc9PRLvM1nQvuQbk4iReM1u4v8L7sfGfk0m2HxX7nsVQ+dQblctg1pgPhgucMaasFrUPBrHck9lMJsj/wrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EOC0E/4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EOC0E/4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DEEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750003193;
	bh=WpPVVYbSilQ8c0uuF4H8VtCCsXCJMZQIkL1u8Wd10fg=;
	h=To:Subject:From:Date:From;
	b=EOC0E/4d1MMgDM6EtaZJPQXWQe+kW+F+IIZbKBHD/hLEDaOCoA+345UBbIr+Wzued
	 +dobjbuMMT+50xxHpHFhX3Kfq96D/eVSyEOL0aAaD1WFnZW79bCi0zqH9KlHmW32tp
	 LhiIIJWjvsr/exMZ+6ln/iUgkmHjdZZjJ2uoxdhookKWQSXp1G4bY8y8ztO/R7Ss9M
	 P2NlaEeIltfmwGoPYrGtz7TxUxRf4XW4hLfJxvVlF5fbbshd14p8vvDH0uFz9fH3fo
	 MOpqep1+/cFSNTDcBxyWFiUbkogaOVZndCAK5SMGpEGI5x5hefs+AgR2qhygU9mfmx
	 0X38fLsB/AFYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E5FC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000319358.3338.10320501015655116035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb15575484ba14a36ebace275340ec31f8903b4fa7eb8fd5f6c2c986e28e2b74
Date: Sun, 15 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750003193
