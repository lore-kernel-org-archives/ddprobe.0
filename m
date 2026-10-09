Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C25C18859B
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791506434; cv=none; b=MoOoezJJ2pDth3OOuSd3sfZUIXBKMRT9vnfVfjJU8iB02A/YYmBHiOAeUJwtqwu4A5I1mY8NGrxY3lKzfvFVFcGU+U2K2jtnxzUNPGe9B4SVg5w/frEUD2IccL/SINNzWJG6WJBmay4yiMypHQ7tGM7UUzZ0M12gWvtjvoeSvXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791506434; c=relaxed/simple;
	bh=5BNpTTp6y8qRMfU05SDA036lJR++KpoYyNS4WqjmWuc=;
	h=To:Subject:From:Message-Id:Date; b=BU9LtErFqXoCpBj8nPewJRUVrI+fUseo5ykbeizfcDu0M267Di5ccd1I9//MvvlxvwQ3yXsEu13lL8d539sPIcB+GcumcdiVnBUhLT1a0DV4amKNYQOEGnKjbl/k3LWPrmpbIgURxwU5a2kE+L9HpDBG0chzG2E+1YHRhzun0ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMU8gTbc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMU8gTbc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC558C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791506433;
	bh=5BNpTTp6y8qRMfU05SDA036lJR++KpoYyNS4WqjmWuc=;
	h=To:Subject:From:Date:From;
	b=pMU8gTbcLBk60ewnUP5Or2Y1nZliAvY5kN9X5n3gBhzOXQzOq9AY7nWtmZLFz4wcl
	 zR5WYUAqr+p03E+JKD1IXV5YcHeq0Tj/7H+6b4opkixH6v/o+a49z2XXoT9K7wWams
	 2mIeCV0NCzz3qBhb2jYE5febtgpMbmFvjVWHSbP84b57TZhNgXKyReGo6TQK5TNrRJ
	 +o4Km/NKmm8KyNcSGWe6Qv0Gz4HDWttBT0kRQmDiRNoStj35pzGpNWOX2V0tvHvqz5
	 uLVL42ZQcAqFf/knDTl0Oyrh+yZr/eYzWiBkE1s/S3HC6j+Q2Wb54+b7dhR7THT9RU
	 M9xxYk63xyVRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CFCCA6017
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150643368.17684.1788957954972079018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281ea3a39a3efcc37d1fea6108d59f6c1d14660623b786ef38374dc5067f299d
Date: Fri, 09 Oct 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791506433
