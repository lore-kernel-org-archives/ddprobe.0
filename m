Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EFFD249E5
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751812794; cv=none; b=ee5J4YJK8mzXh946/BeItYm0kbGyBMkcLanLPx0mu7PqDJ1pyJ4EmdL5T3yrWAXHvG9kCRN7Y+eUkJ1OBsMbxduDn2i4xAenyIEXS4/OUt5g8d4mwN7b4qsBUrgg5SUMWj+5mU3QswFr2ld6JPx+B0XpWSWGKtUa1HcoAyT654o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751812794; c=relaxed/simple;
	bh=vpI+Ce/ReccO2T41lHqwPlej/szX0oBREBiHdjsmou8=;
	h=To:Subject:From:Message-Id:Date; b=Slz/C6meN71D/QIBC3pFv+Iy4SL9iEuKw0S+Hn3NE5oGXxHDBDd1nAuTPW03nPAejP7PsI9mozlCY9HsxQmxUp+QQEy1lxnL8LK4FgpOm4K/99EnppB5sdENjkyugG6zvIdbU+n/BNwPmN+18ZrDcbyxyIN53hzm2KtnBlHRCHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SQt43fRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SQt43fRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4674C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751812793;
	bh=vpI+Ce/ReccO2T41lHqwPlej/szX0oBREBiHdjsmou8=;
	h=To:Subject:From:Date:From;
	b=SQt43fRoHrYUFvbb9EP0g+NXsxmqXT3o07XcLJ+SLV8ilIQN+C0L1aVmnEUlMX3NZ
	 lvEhY38btUEE0xRUOjDjnE/xsqnKLxuKyGHPtoWDvOTzVlikDGNluNWY96KbGfZGMm
	 YweiVDfqrZ3Z4moFXO/JP354Xl7WXBIs1Bb9BnBp3JXhuWsaZmH9SBNxtih1Xw/QXN
	 Q/n+ldhmXLUJ18psupWMDzQdpf84eUZAtnTmto1tIgBmKDLS0IZutZgz/TOROfBddL
	 F3/W+2M6Hyvk9kt6GWEWZcWNj9UXB7vMve8xu40NwJx+a2fpEeKJemoAexX9vCynsN
	 3CCnmNiR+2edQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DDFC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181279357.22742.6123067782615319682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07639eb9825bcbac5e919ef7c37c3d0e17d83800ac03e1ce8835807c1d1c5155
Date: Sun, 06 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751812793
