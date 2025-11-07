Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6772641CA
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762532394; cv=none; b=gPnzxpacr880D6c7upG7R6SQPKwfAFZBo2QbBvjFCqoFrOEiIPGTQt6h2Gw71g/qJcwNF/G/KF/85VCyA4mriCdx/Q4qqmgcBBXqvxAgqvjmSGh1JU8qnmRQncUuDbnHMLbifbRJxDPEq113Dei65eFHpVLbj4iHlOZ5JyIqdv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762532394; c=relaxed/simple;
	bh=PP4nnPpV9ULIr6114AI9enYZ+/cuM7gnMrhHLBjNngc=;
	h=To:Subject:From:Message-Id:Date; b=M5I+whHmwIdRJ5erFodRcqp8GxAuY7IchbXfhIgzx98Z/BVee0Isbe475QVLR+pPmXMusiLDhbKQILsB2DRWkoPjBns+pG86Fti8Bl1Co/nAjx1DOkV1eHi8vGq7RlFqL7rivrEBR4BIYn6e3SUO2EPBzZCmlWql8vlL2euhtqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLriDmDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLriDmDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A75C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762532393;
	bh=PP4nnPpV9ULIr6114AI9enYZ+/cuM7gnMrhHLBjNngc=;
	h=To:Subject:From:Date:From;
	b=RLriDmDGXSzN6j/JfqnhzmJUDVCLtEtue4x/MnPBl34UKIwpCAHu3cFBX4b5BcEuW
	 8R64690x2byhwlhqv96Wv2776gV7RBneAQX/6DRML9RECU1ksV5x7IR2B6ABeCJX8+
	 d6wdKbEERliXVwm3HKaF4FtcYfsoEkcBO/2+oGdK7Mcj2N5I3SLTW8k7rK6QWyDRLf
	 Cd8GULVY97hwJIsSpE/jnN+qUMc6rVImt4J3y97hXWz22yzmOCyxkxAWaWprjfRa8F
	 gZXjquzLJ3+RCyBt62z5QWOr1Hc590xt0sXaNXmrx/Jyz0ni4hPHQTvFxlMoFZaoc9
	 wzl/eBvko+hsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931F6CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176253239358.24825.16054294477390567784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54049151ff13a412941b9b253beb3ae0fa8ea7cd3185c53b0d72dbbe8504fa32
Date: Fri, 07 Nov 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762532393
