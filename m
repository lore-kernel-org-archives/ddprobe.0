Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318683A1E93
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766880234; cv=none; b=kMiHnIDDXARoaknKBXZeTCRBKrsiikVqiW/RarUul+XHK7DxRhqS03xZJa+pdEgXCg/76hMAzFV+OYBXB/gbHX2Z0hZl7k/KpRXolevW8OsUncrwn0dJTGL0uR1U7j8VFs000rNZoaEQtbWqAlvOvPVmoatPSfxdvdGd2Gs3Ocg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766880234; c=relaxed/simple;
	bh=KSzhn476QZBL0UMf0N5sKIqU52xUXiS+zb3hOqBGJAo=;
	h=To:Subject:From:Message-Id:Date; b=t1MuFruTMyQnxdvgMIL5XLK+TDOEGDrwBzylYHMWRV3XiCLg/hOaomXZBSWMKbIIY7bL/FN/D/Xn1h6L9DfH3t8EFjgCQCaJr7dvlncsgIbE9/N4LZPym4I9rjLIdR2z2u6xcFHmldpU5DqwcVEVgkPOxeZIzHynmoGpAWNsAA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfkiYEan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfkiYEan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0CCC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766880233;
	bh=KSzhn476QZBL0UMf0N5sKIqU52xUXiS+zb3hOqBGJAo=;
	h=To:Subject:From:Date:From;
	b=gfkiYEanJbnM8oNoLHWIhRN5GjetKgtU0j2mkq1lEpgVf6M2F6YQdNxeoM7rUGNmE
	 blNcA0LXWazUjXjCLQGzJn9FK5/wlQTVRTvb1mdjQCzQXJMdFP+HKSVdA2S6RaQTGA
	 sv1/xH0spEzYr3bY5N2RoRz/VC69RH7fyjp7ctIVPSWUAFRqpqRJ0vwq/ei90TDEgH
	 ijKSBthWsyN8fQHckthmqUkP/GxmtayTMuGL6RGDCvf/479pMjtxnmDtjfQrJDnG9c
	 Z6Lp7W2oWX4CLz2ec+1E0oAKH4x/7tA78X0LhF4b4rWjn6dyWCXTaXi2cfZoiwJK5P
	 VShiYLVQ1NeFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9725AE92722
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688023359.19675.8959600059608530947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f90862abe7b7af744210e6f7198060eccc973b7a0c7d24ea11bdbccc6102fed
Date: Sun, 28 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766880233
