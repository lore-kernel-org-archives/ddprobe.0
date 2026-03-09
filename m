Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AB83C1997
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773062694; cv=none; b=GqQrph9/KZOHMzY3z0NJgxrYBQuDyEauD8gR+cvyCL4mMEr1T0P0A/PuOqeyrUY7ZzCEOt3UcdAcUJIY6edXpwgJt9ev106uLyVZpLv4p8VPRRgKsSKO9MPbniEX9yDT5c9HRPgScIpdnQbxdMm8TTBsbgCZd2DzEymscyX8A+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773062694; c=relaxed/simple;
	bh=75Om+aSer0Jm9ZZtGUVdivQagA+BOxEYOsZmTd2D5mU=;
	h=To:Subject:From:Message-Id:Date; b=QPfHKqICCbOrEemMvtgDcpnDm7AsAhJu7ArlwsekPir1zf6gF5zrl5X/AovX34XOgKoE1gFBIpqeiCPq+gfKSdj1tuZfYogUiMM/dV50d677O+xkKiyRzX3ARcD7quHSFPDJwlAfqwVfnIXmmJVEsxqROOW5tNnmoVBfLMRemyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaouD6bu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaouD6bu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1D3C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773062693;
	bh=75Om+aSer0Jm9ZZtGUVdivQagA+BOxEYOsZmTd2D5mU=;
	h=To:Subject:From:Date:From;
	b=BaouD6buZ2PwNGCHzeFnh3EpsSo2sqVsSYBXmcN3Y3OdMK+H35ItGc7Y3ze+4+k4Z
	 6bYTJbFHsiF/84Wb4Ae5nBxzfaSFVGpIYJNlDZ9Y/UBs167ucNAVRWeGaJbh8GBzAn
	 6D1WhTjpwBMIrmqjzcFqrjYvs0uUIp20001oIqMrWqtaJNSNxqQaFMpnz3dmbwYWAg
	 gsfR28cO0WKgwFcSPF9n7/ZlArM0djD+B9jL54Oifoehw0Pk8C6kH1WMkQe4AEdJmf
	 J6p4GrDLxGTGqhgenUCz5+tYgOt6SZdUcPcrP6gyg1b1jhEQvLGkQe7GyuQQGoDdjj
	 kH4k77aJINopQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBD9F3C24F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306269362.30786.8070010371007333589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0a1effa29f17af736348947c6a548144b1e34a9edae823d3687de488908e41
Date: Mon, 09 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773062693
