Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208A82FC861
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763982714; cv=none; b=TgXC0MSp2oCtQZoZdHwDUflFF2mQ1iQM2lOn03tbrx2eoy9xtrKY9TQkcLicaGaDx1lq+ABHMzXKt5TqPIhjjfGNR45E4Mp++vrZm9S6xvSPIo4n8VN0tjuuR0IXC5/qKgqHseymgrEEtf/LUNgrcxtYIkMhPWh/s/gbw6LJgjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763982714; c=relaxed/simple;
	bh=LEOLdcscOMVMuctBeD7ZZjIcirGmmYqnW5Th3yPP0D0=;
	h=To:Subject:From:Message-Id:Date; b=eilNhyrSXhsUbsLaII99oYj/+CDqj2wB4zcQZcOh9lizfjOKQfvxvnkwedRP1yYzXKbbrVyJX/c5H9rEEGP41HPjOYqDy0AZK5N6tWd+5D5MAVpUnemt7MGt4LqsXBzzzUAy5A78Vp20AsMsS65ZqlTQW032KWUhl/KX89DO0qQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1UxO5E8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1UxO5E8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73BEC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763982713;
	bh=LEOLdcscOMVMuctBeD7ZZjIcirGmmYqnW5Th3yPP0D0=;
	h=To:Subject:From:Date:From;
	b=E1UxO5E8zTU4aWV8hapUEoHCGrOnkYX1c5kIPRzuQgKEcNzSpnbr8MpaR+u+LfKwk
	 RUEjNps+Oa8OF8KqK3KB1GDUyfZeHKgItSVV37NKvQC1R8kqLcyyJ5buJ3zEWkp/SE
	 Xli15dDunjZOASlB7g5B2k8sVkrEkPX79QWZxM6U7sd4RajeDziTnZbKrIZ2qjjo0L
	 6rKMfX6tJ361wjpZiCeDCP9WI3fMr+KS7bksK/Jae1X0N6GuCedTUZDMc6G4lE6WFa
	 iua6me2hcRf47zuX1vWrHDVMAFOD0cKvJ1DVZGTwFOFfPFt3WSTCiNbbM9Bf65lbKK
	 tGj60PjogRHsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B13CFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 11:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176398271358.11220.7566696637973347350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026258fade58c883fafad477aeee79728796225fbdb842e38da83c3235442eef
Date: Mon, 24 Nov 2025 11:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763982713
