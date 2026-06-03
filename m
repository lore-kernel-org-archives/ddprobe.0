Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295C03AA4F7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780500874; cv=none; b=UtOXMe2FY4s++pFrcQTK/Nmw7XipzOn2NzfZbcDWNSIyqvuIEnhqucVNOvFdnxePVrMWfEGxBqoXPBf2SqOZMEWODvha7TKef3DguqBMmzOmqVRIouN5QvbJ7BnILUa24lz0XbsoRyMsDacXE1or9a5ymkEIgcqxFcz3mWQCtUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780500874; c=relaxed/simple;
	bh=d2WsMpH+RxSv8y1F1+df5A4dmh/s6vNWROldK2j6gbI=;
	h=To:Subject:From:Message-Id:Date; b=JchLbQ375VDUowp2LkzSSwsBSCJutxiksdPhp/hOcxrseMzjwxcMOZ6+yhVtAahYxQji85QE0X5jTP9g2jGbq8Vbz3wRFKVot7WHbcvgSSW4PsqeHryGqYP5wZdIx/HKqBumVMSwLByOJHLwf7SsnWI/dDsGw1GOT0cg0NIGy40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmKqbzsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmKqbzsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3EFDC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780500873;
	bh=d2WsMpH+RxSv8y1F1+df5A4dmh/s6vNWROldK2j6gbI=;
	h=To:Subject:From:Date:From;
	b=HmKqbzsAJ8tCOmZev3FmLK+feZRKgFvWdENmHegrPt5MvUSqV65wHGHX1fzNEkDQx
	 0k1KmWPoa5Iru5SV7eqbLNz2sRvf+re46hDhkDCuYmyaIJaNhPhdYUrcWpVL7d4fO+
	 q68Su4/iO+h7YHP+KmtiRqKGVHZnDTLp+qyVE+aa6IuhTFXE1QOIKJwq6gqcm0LenD
	 EzXTp1TmIotAr6nl0StupgoR+vzlJZw5foL/LUIac9yBwdRtjE/6jMDC6IhSBk3UFI
	 MFxLuNi+vU45KIyGxhbm6lipXzNAk43cgqRhBLl8WOH9H/hKal4EEhnAhkLy5cuolC
	 lkGAKNaWok8xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACBDCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 15:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050087369.30085.7835609526842928643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e94a682fc3a95438992ea605a2cf970a7d7b73992c754ac09bf4065b84dffd8
Date: Wed, 03 Jun 2026 15:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780500873
