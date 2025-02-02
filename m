Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67E61BDC3
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738516553; cv=none; b=epilkaICKhK2KndY8VYXB9Ke1IDbCZ5fTiO6QMHI290iuncip3UgEO+NEapT8q6BcWFxHjNUL00bfaycpsS377r6oifx9rA767VXLT1/E06TcQvZ8Dm/45p5I22uqf643/ccyJGY4zjdzn4yyBrIBPwQPDFEK5BYiQp4qVyvkaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738516553; c=relaxed/simple;
	bh=0vvM5q9pElHJLXUeND2Ukk0xXZERSqsbRpvsmh8Z464=;
	h=To:Subject:From:Message-Id:Date; b=rxVSvlUQ5ZlcI62qd7GZeuOLq7BTA0Il60atlnOcyoxXuVePXrpzJy2Y5cv4VQT3uZAlcbigu3mWDxB0iB48234+/xbzRIxVtNjoeEDtGh5fhP4enlxbO6eLbkJ/t70b+ol3OhmpDkhaEb69XaYeIZotpJZQVM1x4h5aDrPa898=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAb4RQWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAb4RQWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0437C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738516553;
	bh=0vvM5q9pElHJLXUeND2Ukk0xXZERSqsbRpvsmh8Z464=;
	h=To:Subject:From:Date:From;
	b=mAb4RQWK3wsBm6xOvJhR6pmiB1sfHCXOJ/pv8mzb/zUCNPNPamTIio2TDo0nPoTrk
	 Vx08oqN3Fl2/tjPMqXxuVux7vcpeW4gZxj1tSaqvBtgQeyMbPHnpWqy1x34MBx54Lz
	 AnfdWPASNnFvMah4uAVlN9HCsikLHq0whfpsjTRdqBzyMtoxvaBFW0v3f9vcK3nVMW
	 5JyQZhze8lg2AMU9UcfSS0S4gl6iAXNfVZ47iuz3Io6xD8J+15onGljfueYgIukHCP
	 UHwfoAh5LS4RPVVLCOiFQ5Z39TBMm71I1WMdIDgojDp9avwgeSEwT0yBBVMSi7ZSn9
	 Jvgh1TE9fFk5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BF6C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173851655359.14253.4595173908930458470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed6594e40094c4f5204577f71501e40447e299fbb7e7cc3db05f36300b9a11a
Date: Sun, 02 Feb 2025 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738516553
