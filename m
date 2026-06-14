Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456E71FC7C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781441194; cv=none; b=XdW1CemOjvGjIATU1Pd1uQOBrhOjEE4ZaAdu7jUAn70lCT1ah1Bh5CiT3bepT4QTbv8heEf61niiJfM0yG8pta4Bygfpm6MPiWQlEbOW1DAzPC5XZodExZNrrSszINkpgJ1WyTYq8EE4DnhrqND5Z15GbMOWosj5ZpXxR3quN5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781441194; c=relaxed/simple;
	bh=6aUsr+OK0K9CUkItRNnaW+O/985tzmzQdABPDZCavKc=;
	h=To:Subject:From:Message-Id:Date; b=SV3NcuP2Gt2tzWiTJpgC9ukZXFQBdKCYpXUSO9FpPYxDk8VSj21GqjFB4z/XlxmnUxkcmI+HOIMsesqzv0V7n8iVBMymJyao/H4S5LDdJ3ddhNO3MXSeFrd6FXwPDLNDJ7QgkS0kFGI89GCVs7OxxssmT2q84gedc5h8ODYuBhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aq0UKxRT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aq0UKxRT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F4BC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781441193;
	bh=6aUsr+OK0K9CUkItRNnaW+O/985tzmzQdABPDZCavKc=;
	h=To:Subject:From:Date:From;
	b=Aq0UKxRTTLft8YidgBqcumFsoxPpSupVBPMEsvLs/5m45AvFJxFI2uj/TZ4T6oeVL
	 yZIlqeCCXLLiau0Rt27uwMgoQgTsgJ5hsDCcTv/53ChLcGQUGf4QKkV1ve9CyxRvAW
	 SeAmCci8mT2PKvJMiH+IjpKAkAlmUs8OLpgJ+CLsKLY/6VJnY8Q9DYLrzAgfuqgcUV
	 OQRzHqH9O9YKvS/t4yLXPEusvLXJEDQSHHwlEEeHPNCLSrz56h7C6j3bmfwmwH/yej
	 hXX0t0pqAkrz5+YlPSJw+KY/ImCvkt6yyPxuSOgkGuz+DYapvSyNcWjeXceVvEMZV5
	 4YPI6Bx+7OXpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED5CCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 12:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178144119370.11583.11385733877874890182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf287915bd9fa8610478fdfbfa5e197d4276688b631e80a357d6f242532c4c8
Date: Sun, 14 Jun 2026 12:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781441193
