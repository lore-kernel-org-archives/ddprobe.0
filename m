Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C90D22FE18
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751519394; cv=none; b=ZwrnZ10q0AffYiZDV6nyyVrTZ8MCwaaUGtpVHcNHy+XsobQE7n6sBzFU0sIEFBNW+ceA6U8NTYvEEXUb/mBcAGZv7Tgd0vMij6XvDXbJS0UbPQRvgcOxgI0+fYlB6CdlWTIx9jGIcOFT6aWeoCQkZgfa9bt5w3jcp1Rvs93YHTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751519394; c=relaxed/simple;
	bh=ceYAwaK1i83sqWRlhUha0pwHoJJlmt5ceqvQoLbQzvs=;
	h=To:Subject:From:Message-Id:Date; b=Ji60aj4am0QkCMe3akM6/Z81jvjIGYUfZXanC5TGLC6MK9eE+B6ytOF9Z8cqYtMTjqVZgbUIaaQ8Co0KHGlsCPy0ubv0JTZiRGKBPF0FU2V0AcS6EoJIrF++vueH4/5lPgDCyY5L2tcppsEvDixEjOmWS79vbkooqP7HioEib2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/27z2cE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/27z2cE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64B9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751519393;
	bh=ceYAwaK1i83sqWRlhUha0pwHoJJlmt5ceqvQoLbQzvs=;
	h=To:Subject:From:Date:From;
	b=g/27z2cE+FAi4tT4gmJXJ5YTr0adC/Rzug1VnJuCAG16IQpmYJn6U8noY/hwLpnLQ
	 hnxD4yPmro0Ong+7ZoZ8Shd2nF+lNPl5Dr6ZcE9zeVNCXgIgg+404UCyNU56QQOG+w
	 oEvf15VPGDJGZB6GT+IFucrWuP4KJ2C7zV40i3AlSxcyhsrefRwFFUkMjUT2caP5n1
	 WmA/aWyEuB54t6BMLNoAwn3pPTbs98BaKrPxscyVeH28LDfvl/EIGNd0djvQ4VJeeX
	 bwrv+GzIvt/B7WrQ5/G+iNQBM7tq64yu08ntmSOam6PPFGWSUDnU/KYqP+gYXBFz7w
	 UXc2h9PT6KeKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E467C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151939357.847.4689392399265487659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e20d6e987acad983d026cff65d57ab7755fd361aa25dca955d26d2ee041769
Date: Thu, 03 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751519393
