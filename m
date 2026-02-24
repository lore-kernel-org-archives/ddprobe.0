Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CFB3876AF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771953894; cv=none; b=uzmWA2nzvjvsZE+6/FAKFpU7edSTTBZX5/4E+8wjIGempJ9GtrHBGf5JWUtnxEgwN0Pnc1aFkO21RrOrJXlvCyAyafdELVF23TGVSH7ZMKTm2grEFEtW2WVQ6OIe4s65Jchs+G2qYjdnj+nBbDLXIdVkw/se3aOqA8XRKogsn9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771953894; c=relaxed/simple;
	bh=SouJbQOBcAvcwhox5PssnSmgxy04Q+H1V/IuoIW5n0k=;
	h=To:Subject:From:Message-Id:Date; b=QYzAC01wczTrfQHqCfDDGDV4wQZ/gGSenXEq7Mbum1tQriC27tGPa+FzIad4qBbis4NXucJnv32RXf8PcfmT7I+F1idZFLZp+DIvq51HEG+rhFPHHsnEXbaLrgxaW0peZ8KRfL+Nti2S57dZFqoke8rxPTCjz0pLFQSSQlKU1v4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRv1xqhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRv1xqhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A772EC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771953893;
	bh=SouJbQOBcAvcwhox5PssnSmgxy04Q+H1V/IuoIW5n0k=;
	h=To:Subject:From:Date:From;
	b=mRv1xqhvwBeqjxA8+EnOFKmUZsFEsOifm2maWnjVFiho3n9Fw5H9XNXRUtGierwVe
	 Zb1uhtBG1BiOVdC4VobqKFhMhyiinmi0FCBUIEw0gfeOLVx7D6sJ4wwXeu9SJkuSXS
	 hs4tAzjPi5bSHtpQfKmWPlR+mLD3EemEVuLIEDt1SNAW20ARRHrKpHJa+XLxUjvPTV
	 GLF0vDyXorZuiCBjXiInPmtBbE1cZvwtEIISyvK9I2a+sgVxujriYzwhoUQU4rvPBs
	 FaDluFqCVIM7D4Zg4FqNPm4LY2ahvN/VtgjGR3IlOtGulihQH7mDBy+qJwXlOGkUCM
	 wyWp1FS2KN1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E5F4BB63
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195389360.21889.12495900125858071430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c1730da945f7f44aa0adc3030c743dfe85007929a41998e3f968e06cd69d36b
Date: Tue, 24 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771953893
