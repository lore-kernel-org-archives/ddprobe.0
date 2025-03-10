Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2978E1DE885
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741638534; cv=none; b=HjZXijluVHraaDy2GfGVI9NIWR52KnGRFK3WQxwo6Fnl1xPU1XCIh4EQu1LoAbFlmInBU663hASwH1GDWWDdD/q8QtHh9uBMaheKD5pVTKBtB070+sOtBLRlEDyEJ95yjORJHXdSFj6gzphbGyWJhtIoX+20WnCI9MTaEb7n4ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741638534; c=relaxed/simple;
	bh=DOEV//ZrFYGPNVpHiWasEon8i3yRQQYI7C1k9GSQfZw=;
	h=To:Subject:From:Message-Id:Date; b=XRyTLy7kq1iDVBBNRh+TcjXp1oGhEonUpjJQ1onWv29NWysGcMPzurdujx+v3wnQKpCflwnSOlCckGj6smllwC4Qfogfu8+MNwNBRqjnX6K3SLEmKKMwFH0rCMCcvtHUSuVHrN/Hp/qJlHKywPxLiNCqi1ByGT9egtfqYyXXZP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvtTaKFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvtTaKFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3FDC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741638533;
	bh=DOEV//ZrFYGPNVpHiWasEon8i3yRQQYI7C1k9GSQfZw=;
	h=To:Subject:From:Date:From;
	b=LvtTaKFoD1RCvI9Cp+GrF8Wr0hwANvWIcvEs5Nfj360dEHhGmSf6eIm/HXeiS7NYz
	 rzRA+y36jS5swl3/6vGxLV3JyOgUKLiXoEQFkbR80eC7kigIsfYWPltIDH+iE+Go6y
	 hvGkKBPrqcyX9ExETIHbhX7C8V49RaoMuOvWuy5fxp6gXVzq6/ZYst06KaF6peHrtE
	 TjKvXqlq4vNN+5bB1mhHOMJwhrV3Y3U5F9R+OIzikPPmlkOCKd8XdAAMgQnxuNg2ER
	 FBSqd/y6X58TUZCA9TA2tVPuagwVJgh/kJDRke0iCq5ATq+2Gha914z2aJYZYnQmtc
	 vMe78q/or4xjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9007EC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174163853358.13292.1343884015137900467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002d1260c2af101e6d400a5000cbec789a9dd6058a13853a742e31c5fcd21537
Date: Mon, 10 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741638533
