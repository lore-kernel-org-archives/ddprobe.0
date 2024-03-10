Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E451774A
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710044297; cv=none; b=SAwgcx9tUlkcNBGhXiAjYMAP9/I8oLuqOgop+js2gZhxdQjTsb5t+W915wKV300ZfAP8zoFXaPPaZR8O0xdriepfp3hHudx/CFEDzPEYuonTZX1aUCBeKw2dzCzVERuecoyg0pcWUg8gNnsMT4xyIqbhCBcCZaVTN5zTuA4/Ahg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710044297; c=relaxed/simple;
	bh=IMSpoPIgTFNmdOGQjy2C5QTYiv/zmSwNHu7CMgZzsFs=;
	h=To:Subject:From:Message-Id:Date; b=G/bki5yasCYc8BSetwcABM/t1Yaf0OFzYdI6J4wki1UhIUpb1SyfqxlNcaosusrG4WXaSB0QYRXIJC27Df19H1ns2ZybIseeBR8dMdMyFJq1IB3p4d1ub6tA+iQyem6mrJcowSFGpKzPnLboJGyIc3QIEJetDTOfqoPOCCYKjx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjJRoS63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjJRoS63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76559C433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710044296;
	bh=IMSpoPIgTFNmdOGQjy2C5QTYiv/zmSwNHu7CMgZzsFs=;
	h=To:Subject:From:Date:From;
	b=RjJRoS63qigYqUfbKtv7RM/e211T1w3jKNenzdXuCLiBsijMpMIC6D0ga7UhtW5Xs
	 CfrmMvFWiBwKIReXP9N97+xxsudKkC/ysj51s8rTO0b1IPngB7sXxVkJJ4GgowaLc2
	 HECFWpLGCc13Qb7fPrlz5sUyXmaashhvQuYnnvWn3irNE8mcUbY8TDOxij4feJ/HBe
	 kGOZVWMK+FaGfufx/S2eSjI4ZvS0YexZ+WknpprGObTDWcUx7bWgNlIfBozfKWDDlc
	 7N1U1uPgzeepvM8MRWHvJA42pwax7ccssrM6cJTRsgWUwUCdNuf01zt/ZJdtsZyNzT
	 dDsBPv6x97GSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B2A7C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171004429636.18144.17644588261803832318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ffe12691ccb2a0e9e7cf85449d7517be110d7e6d4de1c4ecb8d8321ee714a9
Date: Sun, 10 Mar 2024 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710044296
