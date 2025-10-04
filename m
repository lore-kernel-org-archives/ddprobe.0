Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396BC1A4F3C
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759610394; cv=none; b=GJlVeK1eAfCM509Zy8Bzv6JUd8m8o4HiUv4athDGCsNMKHRJC45BbYNqc6KOp+A4khzgYXd0HiRxljOelLkNkZjr9JM43V439To30wFiGI2ZK7eq7K8IHDxU0yNyc7kT8JyW6WVNjLDvuleZdc02lGg7R/IsfWyTJ7bSVddpKn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759610394; c=relaxed/simple;
	bh=QyzO2K4ZqdYDtc5eImyBrpCemGxfD76mwC4RJKYiFGs=;
	h=To:Subject:From:Message-Id:Date; b=pi9V3cWtDURMQC+fcQnpo56tqfQd//95dFJeWPQqGLZ+NE4kwuhwIfzXu0lss3G0mZ4jj/JRDOt/zsvOPCTRgjX0SeNW0Sbftz3Fdm24GPWoEFRe/SUGvbKh9lYcv5pYfBJuEUvVSDIFYpkHVWSFD1aWVZG3ukm/XO7XT2eyCsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYDDn9Dj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYDDn9Dj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0543C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759610393;
	bh=QyzO2K4ZqdYDtc5eImyBrpCemGxfD76mwC4RJKYiFGs=;
	h=To:Subject:From:Date:From;
	b=NYDDn9DjEZPLJe9YvEaIhY4H3CMbxwXxFb/lAmb+DrnUJpVI5DzG+RKZCt99JC4if
	 iCg0XsXPh3hNuoHuK12cMXXNAcj0/vm08IWwpv0mCSTiN+IwkxEE31eplZqTGpjTQ+
	 X9qJi7dwqLsjQOHT4BmuBiUWDjjZ1G6wpwMJ4iZ3fNR6YmTG4WCRBryMcRDaJeIsIn
	 bKZgLBhpa/SOataWZBqR5q1BS9JWuYoFqLylC0IRvKgpmuvVu7RHRn1MmHvdExkhbh
	 HFztHGOmKlRkwseS/A0wsWBTO+pkRyG5px9OJDeP5Q5C65HsKY+sBfWiqo8NMI4/ir
	 f2pF7qSwfKvug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92364CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961039357.3423.4899327538370945210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61eddacd9a49a93a811b00b648e883292ccbd28d28f1c0093f9bcbd27933ff22
Date: Sat, 04 Oct 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759610393
