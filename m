Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B34F1BC2A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721645754; cv=none; b=KeQqudNoTwyEY8BxNlpLmLuna6CXM6Khyd2fiPrQKk72AiZ6m0yIJsvy2ZD2GMYrUHg7bmt2Ts/odpwUwjZaaycWW/FYFu/B86Kvs9xL5gnIiui5xFLP5NmqEZDyjFXOtET/YimYfJbQRvDh2e5jeO4jvoIOrfTF2MWpiNy/pg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721645754; c=relaxed/simple;
	bh=OKD5pyrBHs9ixVrQ9tBHK6svpv5mnwxfuQsEPyfZiFc=;
	h=To:Subject:From:Message-Id:Date; b=Eh2mCLAcGeCJCBTVDlPMw9Jz069oE55mHZE3yFF7LiIZDrk2VFESUYEBrw9LFsTl9ScqxTmd/5zMmK4KZshH0+EvVnTfVkFizQ224iv40FpC+rsh7v9FBb2xWfeSv7H6C6DlToenNdGt0tR+Q8HtZMz1y0aj9FvRnCdIpntENl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1DvLNfJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1DvLNfJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3000C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721645753;
	bh=OKD5pyrBHs9ixVrQ9tBHK6svpv5mnwxfuQsEPyfZiFc=;
	h=To:Subject:From:Date:From;
	b=Q1DvLNfJAswgyV4RhEnuDVnynCTDr+uxJFS4JBikMB2tDlak7A9az5fIex+j78tCV
	 xVT+F6O8U0pKruDkJqbRNU+5jxPAraV+rP3Up66OvoM+5cdDEWKgVriS0Sfari1ySk
	 3nZMaZrFJ0GOfMX1GMG56dPBu2SGpRB7QgxKADRn1x3sW51swkiUFMr3mDlhDFGSTh
	 MiUE2d7vZUkm/Mo9XXpUV/iOArL5MJV1ou/id7geP/HBAaWdt4mfZ4U3BWpRMUYWzt
	 IWUWCtcvfiXvXKQNJR4WcK/QRhrxW0jLeuWgG0INiuN0XJY6+AD60tyb/RJVBHsS+5
	 uuLWEmi5l7aGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931EDC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164575359.3231.9010555609524315825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c384c5e950622f811726d8c9a38c214c76d514758260f6b9b28bf12bfd0e8fe
Date: Mon, 22 Jul 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721645753
