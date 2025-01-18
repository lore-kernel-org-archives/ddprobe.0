Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5463935968
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737229554; cv=none; b=cI5jLEC/jgQzZV2dVyRFC36BoghcUYOmFTrXAVVNM2psai1pEVqyqeBxdcSXimugE8UYhhVFawd4KOgUhVP1sd3tDubg2rnwWF6U0xHOF4wTje9+6pUxUBU+r8/aLbfjtt5jSB1KH/iAV5C1Sg9AoxWq4wwCiSGVcVR+dbmNiqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737229554; c=relaxed/simple;
	bh=X0iVjIxKDzAnlsy4Mq/v+VWRIha9Fo+yru19pnHoJXI=;
	h=To:Subject:From:Message-Id:Date; b=cGrGXxN6ir1vDBGqBJ0I4T/UB8YfUc54xiXoLs27LBRsJGVNa/IlEUXnnYn08fXDCw9on4dxPOZadNCf+tV098kJsSGS2ZPz25xZrxY7bbUN52JYs9+GZXxv/wn7FsWf3/U82KdcMp1/qsuYLFMKkDreacabnvA14ycgUd2jNgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bo49IM4j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bo49IM4j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FD9C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737229553;
	bh=X0iVjIxKDzAnlsy4Mq/v+VWRIha9Fo+yru19pnHoJXI=;
	h=To:Subject:From:Date:From;
	b=Bo49IM4jvQsigvNSl+l9I+6k4I2MytWR7RFjPMQvbdZI+IZhOCKH1IgtnprebFZhl
	 GGy5iTui8um9A8HLVJbyjgPboD3JIdakrcYESV4J4tnHS63D4Fz/gMJ/vjqEtqVuMu
	 tSi+sAD0FucIKe445xU9KoU/I5L+BxXAyYFfMTf++OSikYoYW/gZLUdxk2nMYI+Uvk
	 fKpR00Jbv9V4wF9mRw53t6nhzbL/ZMory+I/MykEFI94zxm5uTe4IKgJUIb77nS9fS
	 nOuLGumHI1YWbxEX7ZqO9b6Jseuoc/nLktCIuZjdlcWtoyydUg7GW6DKgg9pvgGPlt
	 oSSupUPkods7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC83C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173722955361.10036.14255117499731301972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6b00d90446a1a6ad64617b3596ec0946c178a57d09f2c0e3016354775cee03
Date: Sat, 18 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737229553
