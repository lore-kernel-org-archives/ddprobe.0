Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57D2BDC10
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760690994; cv=none; b=S5pu0eWoOsafWnp2j12EtGT6C8dDWu9t9IRTorKfHdTAflS1DVcLq2ADxjwkWQY0KfTcMAHGeeCLW4WzYCVF8LK6VLIeiNLxDLT1JTCZRA72e/jDqTvqops2CLEN871a5sVvRBnDwp3J1KhemheZHhDp9Uol6VT/qEDq6xZzG2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760690994; c=relaxed/simple;
	bh=brKUUT4H/IcCH/P01ACsd1QUVNbNYET4B5Rr/0enm6c=;
	h=To:Subject:From:Message-Id:Date; b=qtJFUQeLoOjyNapFgo8zQFxgjLYyDZrQPfe+MpvXHAhWKo+KVfedqsFVawXkgOx0HE/AfQ6aaHFm9xR4ATS1tevYQpYIYh68dXumjStnNfV2Qp1tbLPbrw4b3AKjGODnd7T/MlkBNS5rgNIx9ylGuUPzJK9igsGZ252qmoaZka0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qO66yGpt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qO66yGpt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5087C4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760690993;
	bh=brKUUT4H/IcCH/P01ACsd1QUVNbNYET4B5Rr/0enm6c=;
	h=To:Subject:From:Date:From;
	b=qO66yGptEr3lYPK1Lqah6L8x91MzxKS4zOkzDybPRq1IFKqhVOIroIc4blzIIM+pf
	 FedNMX/F0UA56o9SvQ2XRboDchAb3dJCTxlH5dMOq1Y0bJsQoVpOba1AaKk+GDQ1p2
	 sl9bFQZX+JXnbVMco0ykaIa3+CTEmFoQpdvepBgK1hdrDhxj6GAoJUNd3+GtT0VC+T
	 vafMPKPHJqVaJ8usk1MfUSOnMmY8ItSLDUozcprXEGXegQcSJiAgZwCfmcYHmOs2+s
	 t8Cyzue8zn55hJmgePSj44vyPhmYneZM5iktKxwvDNDOcLdQJcKQC+wWcZdRQGAANS
	 FE321Bp5yCgSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDACCD19A
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069099358.28833.6306529638204916480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420e7b891625b212e9e7e92e0d27a9409453c738f29d031bc994fc4db15945d8
Date: Fri, 17 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760690993
