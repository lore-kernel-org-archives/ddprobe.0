Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D1918C02E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772411094; cv=none; b=JTWFDLNTciukf7cZ1zp7Hy9mdvNIReuxtLmSQt6H/Py3hSYCJ0g+v3IZCe5dklMifTH17k+g+AEQ619YyCxtbDXW4vRxcLJTgeSMFPGVTFRmbIkqqF0UTnFcZYVqys2PCn39dNhy6/K0tGGxtrnPhUwkvse4NH4Ytp6P3W6ABzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772411094; c=relaxed/simple;
	bh=+4kjY2UEanKUw5HMapIEu1tvJ9sr0TD/Ox/nI3pL5TI=;
	h=To:Subject:From:Message-Id:Date; b=sP/XMHfnJw5dwQ+jVgmM9QZDZ6+RGSdlH+zMI5ObQp7jZ11J7w3EfEqNXP+cMHhkDrIO0FHA7dfD82diccCYDM0l5rT1oV1Qr81ekcKXF2wv1RNQ4pECd3KI3mQJ5Xgm/JbXGJj37mc7qwaFHy59n0+Ezkr2KMQI+dAFdya4eqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chS9fX2A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chS9fX2A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2999C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772411093;
	bh=+4kjY2UEanKUw5HMapIEu1tvJ9sr0TD/Ox/nI3pL5TI=;
	h=To:Subject:From:Date:From;
	b=chS9fX2AMct+daJLireFw88AL89ERNJcHMcdPOz93eXXjZPCVxuMI8+Vx4w8iRbav
	 zWvv7OiHPTFpgHB29G0MBHoNxYWP0J3Qow+C7hXsJt80fcX7LICV9SiBJtG7/6XDk7
	 9eivHXU7E/bpnVx05Scge71abksLbh2WM7kPvmiC8OLkJQrHjqe7l5fNXiOvWKEY3A
	 1umnFY+supJcTQrbHMi+QFTJgEdAoroAkKgfVuXBEbUGglcVO5g3aytkaSg+EexEVo
	 mSCeTibbiodT6j4cOfPaUlpyoWg13B/L//ofRQhNpZVRFU1bEUYTnbMxtxaMcGNfn2
	 oK4sGP7yJCrww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9956BFD0076
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177241109359.22897.2113544156320237327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a93023300a6ea14c6bf53ff0f731b25b9c533edc8cbf2ed59bbfb95b1c51c16
Date: Mon, 02 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772411093
