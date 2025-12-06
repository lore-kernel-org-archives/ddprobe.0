Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382DC3B8D41
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765022574; cv=none; b=IAzyh4Qe6cWHcU2hpTrmeMpX682zIRvIEaJnM7dmaBwbvtiq/6h3KQT6skrFLBpnYi3UMSThyfeDk0esqn1oU+7GL+zBlJs8n9izEgfj97E+0sFymHUoauVXL64rVCf81M+p8i0qcCas11Uy0yQn2PSkIngQjy/8mtCmRnH0KLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765022574; c=relaxed/simple;
	bh=B+ydVrrCWf4nrhxHsq/rdO8ADzcjHLbh69vsn7whV18=;
	h=To:Subject:From:Message-Id:Date; b=Ird5W6nDX/xFkiB2DVAIqRbX9za04oCaxfmzEbbQXY1+aQQXpBkl5Qrp3Q928K1Q5DcC+Jwg5QKsfS3ZsefuH27cRRzSXoS1AKaGRXSJwbrP/t/AyzLY8LSwB2P56c+kTiBndDdTpnSg6GPsKL2P5NmSj/TPSuf324QjVbcU2Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/UTaR+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/UTaR+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98ADC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765022573;
	bh=B+ydVrrCWf4nrhxHsq/rdO8ADzcjHLbh69vsn7whV18=;
	h=To:Subject:From:Date:From;
	b=n/UTaR+CwRSpvDyyUynIWHVcR1eOmSKLz5dptJEBI1xkjcrx5sbI41tJ6YdhnmG07
	 D+LAdynq2hrq3E0mGEbV1xsmPXnEnVn7eotJhe5w2/ZwrSekwoBZFPTrZdwE/d8J8d
	 jUO2dq/CZdV/XNbLIFkSSiOEvhiBSfimL5UWDJouJVtxZ2zGd57Fryaf4nXca1x+q3
	 P00Twa/iK+I6WN3Ni9gdtxFeLOZzlZPDW6bsVu6+6Mxh2jofbPUYW+EtaU0+MwooWj
	 jE9M002dP+cym0XS4udyjIUS8lxeTGiKdTYfV8TvqXd1/D4TcbUmlHhBGorlY7wwnm
	 nB7H3CSSZpLvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948C1D3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 12:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502257358.22638.10768550291212106879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b7782281f46d917080f8d9ae143bcec20b8b3c8abd6c826ef255d1da0971ae
Date: Sat, 06 Dec 2025 12:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765022573
