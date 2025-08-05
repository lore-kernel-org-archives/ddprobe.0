Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5912749F8
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754400594; cv=none; b=Gpvm6S3c00MlPtXLRM0nVAcoF1ZnEYYPFc6Q3M6OBrNs1Sv9dfkFYhhqYPGCIA4y/e9Wi/fFZuavwyfglofZL1cHrJl9TbLJn7BePplNbOgxzpvMvrOa+Opce8rO5j7ZvT3mniyEuJobUZ6H/3CUQ8yy6xEwop7QslxD3SfmC4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754400594; c=relaxed/simple;
	bh=fzxTZbu7tO7gEpQHNQr2uWeMBI02/3HkdR+N1nQI6cw=;
	h=To:Subject:From:Message-Id:Date; b=ryv8ldO7zmqGdxh1/fw1Bm96TTWEIXGQm5zVv+6q3r+qpfXtuDu726q7CH/slHjU1mg0Gw7c/RgU+3r6sn6mbhASH0KGeO2gq86AJnVG0K9HexNsrkh+LUNIbvurAAIejPBVmryH5BLgBIq224X1De+I3P7kKIuZxubhFhlZMSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSIxjyCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSIxjyCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ADF9C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754400593;
	bh=fzxTZbu7tO7gEpQHNQr2uWeMBI02/3HkdR+N1nQI6cw=;
	h=To:Subject:From:Date:From;
	b=mSIxjyCqOBzYH4AqOWrzC1o4hxqjKbChvbFsIVmvxzmqfqjjMUfbPNTxQGp+XLLyU
	 XOSQeBXOlLjtMe6Dw++6O/1drFCswCiHmkYRVhNE3VeBmUhMMD5BlNmQsgeGjrz4oW
	 lz33wXVZ9iHVd620LXKthn/Sutr9FIFW03iiUViIiGCLntOlD9qTxli/LD+sx4jt2u
	 QxlJ43Hh/mzjVG4Re5QJLdwohzH5f16TPHyE1u0LdxqDxg/DYD2LNAMsvN4ECF9dO2
	 kZ2YuckFYWa/r+XDDGzGsIkt4GTNvtLCIvMetT7vcB0XBninpE8kOPsPvtl4OdoMJ2
	 ik00x6+3QdhZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9A0C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440059358.7924.12621254833278987222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964c0e4fb42561ccd9e697ecfa4d6ab87c982182789941058cc0e5f2c70ad2b0
Date: Tue, 05 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754400593
