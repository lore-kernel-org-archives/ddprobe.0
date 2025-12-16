Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C440319852
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765880634; cv=none; b=fNeS0wP+GO5etOsztpDcO4Eh8QWFQkqTU4af53jh8GxTHtnoLCaokNqxzu8HoKjLkBzHNY/0ay0Gk4hXfaDmff8EA2gaW1ofnVoongYtq5q0f22INbkt2WMEF4wSkxw03cOqR09B2/Q2MqjkhYD4eDrIA8MnYP1jL1zDm/MyOQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765880634; c=relaxed/simple;
	bh=JYhvRQ8rDlD7QsV16k5keuvOD1Y6hwq5KdD0rxPR+Js=;
	h=To:Subject:From:Message-Id:Date; b=lyaEQu2Zu5LnCUui4wwwIBOQaJrJjjFviJ40AGeHcXgzd1tYn4BJVa04syrENfI3mkwzmAMvHPW8RzUfl7efyR14o/0lLtx/SbLD+NsvWaupRXs952FWjRQuYpPMko38ylc+P1gTAglDk5f3vMVd5XXnBSPB7HTd3lo6DSIIy6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWhw39Wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWhw39Wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9D3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765880633;
	bh=JYhvRQ8rDlD7QsV16k5keuvOD1Y6hwq5KdD0rxPR+Js=;
	h=To:Subject:From:Date:From;
	b=bWhw39WiC+8P6F5qmGphCAHo4EBQR1jbPiHePr+trdu3OXyed8Qwfn5eQuTOmERNF
	 r5OIYkKx2SfzmBKG9ifCc5ircmtNCYCcZcEesrMtj7AIKV3Thihz2CyAws+BnLRcH+
	 V88saYhrZoNISZNUb3CSvLEdVB9taG5WsgMz+IBDN0pazJPsp4ZDLgEEbK2/07Ejv4
	 a8XD0PJ/NXAI4dCza8bMiDxDfPNwsVi5lx9pQJiLomjInA/HOdFKmEGHlPm7s3SCjV
	 uBNUdPesSEE2SOJkbNVWAwVyTqDe1DGVGMljpkQTdS9kdb/ZHQ1wp8l28pdGTxry0R
	 cPw9GIih+VSNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C51D5CCBB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 10:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588063358.2264.10419565969132454166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa5667a5bd895a77d435fa7642e9fef8e2c1eda3eb173b82a47b1ef3ea03f2fd
Date: Tue, 16 Dec 2025 10:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765880633
