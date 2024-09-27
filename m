Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B20D15F3FB
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727429154; cv=none; b=oR4E9kloCVy7ESo98RWC80SyuGm29W3j40/Q9i4pAKWFo4B01s3/AYlJbT+P61Q40WeW4lbx7VNve3tIti7yM19SiyP5VZiDaU9CuZal3nTz5jILf38mHpJrwmiDAbOylbYUghrFfMsCPOK0ZIeyq/QXy/9GDlRGNqeCg8tzcX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727429154; c=relaxed/simple;
	bh=CjbVK9xQpWQFN8d2/6nezPpbnJPpVVP9xR3IS8C3ngc=;
	h=To:Subject:From:Message-Id:Date; b=nM72X/HF55qdWCzY0B4Yb563cv+rktPyVvgv0Y1oThXFa8CDows9LtorWj6QtRSQ6pfUhP897TpDtElDn/NAp/gq9qQl+gaffewcMQwV9hCqUqk9ndKzq2iQ34rAEOBPaqZmRn9xt9htZsOSWZ4aucARt76el7qZmr0sqFhKBCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AywBupjN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AywBupjN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A314AC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727429153;
	bh=CjbVK9xQpWQFN8d2/6nezPpbnJPpVVP9xR3IS8C3ngc=;
	h=To:Subject:From:Date:From;
	b=AywBupjNj2wDcHOHdh6DRa5uhLvYAZG131l0lzceEGq4DiOA17EUvIeGcayxtJRzG
	 Rzzva4Rf2YRMKaWLBWzKexbLKUOdpSa1dbqNYmR4W0F479FUH/BgFtSNWhC7+2uT81
	 HOexVSxn9/DRaBxoSdj5UL9IBQoazuFP2kCHWH6pZk/9ZEJNdyHujGIPdXsyCSIPmQ
	 p7d75TIO/7rxEPxkFrf+EN83C6jox/Efdk3r50m++hMvBl+jphVwGMANoU7D0IIEoR
	 Dw8yQ+yyAQzZMilFw4bZt+HY19z2ijZ66DAa/FEHrQbm6bjmCf8b6+Qby0ogkQ4whf
	 HWXNTc7/8S/ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C97CEBF8C
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172742915358.16883.5820824511712062921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35611828e145c1d16902354cb9e8257b86b6598300f292f1f2133146c18c13cb
Date: Fri, 27 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727429153
