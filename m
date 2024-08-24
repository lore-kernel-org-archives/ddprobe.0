Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5AB1547E0
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724500554; cv=none; b=QvFg/qo9RhbMK4uDisJhJ+XVTU3ulz47FN7biCdZyp4xE9mSHiPzA6vTb5LPl1DbwZ55p2+0XRV/5cmhr95Obzwy7sylDSXjeRoItS/JJZJ4nX7OQTd0J0M8qMQzUAAFNFNbeFzta759zxD9gZHOOoAa+UCEHVjQKbkehxnRHD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724500554; c=relaxed/simple;
	bh=CuWlBQESRySpLWT5qacKOoO+qDRXibHqd+UlYGOyisU=;
	h=To:Subject:From:Message-Id:Date; b=L3tlshG3VK44J5TaPmjGEPQfIl1IgG222OxyNPs8853qd5bLBwcotDRCS4cO4DNLd8o0G/5ekaIoq1ZfHMHQz6txaLz84kYT5+LajcwyxywkUZ/g1+EfGZXuERmF3Y2BH2QYFFTG3kz8T1Yk1H2rRPOHHQx4K4pURHJAaNeKWoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssonrKr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssonrKr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9401C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724500553;
	bh=CuWlBQESRySpLWT5qacKOoO+qDRXibHqd+UlYGOyisU=;
	h=To:Subject:From:Date:From;
	b=ssonrKr7qvVtr6h36HV1K35lplsUpoBjzIXBsefZ2x7FdzrfAewhOTqvjI+Jrf4VX
	 zy5eDupf0CLFH6k+jFIjTiQkQWckMxOtcgb1ovrfx8gHhVDjv+AhuINzSD2cVY85YY
	 Cz7pyLC5nXMnvBhs4r6KKrKTX5fdLaiMNNfQexlAttLbOTqXUmwd7ZxT3b8OYeq4WR
	 bv9qXZg0205hSpzo3xX/N77z3i6GYWWV75DX8OBZaGeH2YKlXmizU9/7PE460K+6E/
	 r73XIkuXv5SJymrlR15VIIGv+is1eHG/S/eiQ5oX+GX3yzoZhI+f0vqd6Mab4gObQ/
	 w6zcBQhY0yI4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9790BC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172450055358.19757.13652085253394764919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 000f84afb9db87804666d2fd42d29487ceb6065819333d030d92ea4a7afd34bb
Date: Sat, 24 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724500553
