Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4399E3E0C6F
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785184234; cv=none; b=hbx0swvg0iMfWuiyWQfkjExssrramO8wBCeuv9kW4X2cV4JpvqMIozuqiU9oBae1Q2P77fxdNODKh0QyoNw6ZssIJFWFPGb5A0t7L/ouN1QCCwZBwnYHjVRP78cKDS4QgyFtrdkZ9Jsw7LBvGhXBVBHZYSY9XVAmD9Wl78NVsUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785184234; c=relaxed/simple;
	bh=sa89UlxehLhXOjsZPcDLi4udGCookr/zY0mRspvkBVQ=;
	h=To:Subject:From:Message-Id:Date; b=FadrsNarmrknVnKQFL5U1Dxgtzxgonfc4TdSDYlC50ch29x5uBP+EO+tvMbfU4ALAgrF2BtBM32wv9r9rDpg+o85q9miOB058TYmunkGwj4kGImYc+fJE+6DilJl2GmBz7MCaM+xIfdzheFVFBbcw430rn/E7aoHylt2aIe49qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLYk163k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLYk163k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BA7C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785184233;
	bh=sa89UlxehLhXOjsZPcDLi4udGCookr/zY0mRspvkBVQ=;
	h=To:Subject:From:Date:From;
	b=HLYk163kXJmeASeNGsCB4SknR4aIEKlGUyfNv+TnKq7kHoJP3L42Bn/K+y2xhXYFP
	 a5Ch4oUz3vwGRZ3xcBC+CP8PJsAHhD/YfGcyAymiuUe35XpeJubslbqjdRkVgeeg7I
	 N133z/19UgGjVb3QLvmpQo/yuMq89G+mewyxdEYPDaRfmrBOGIlmcg4lV6j0vvfUZz
	 aGomPylDWPiZN2yIPngqiUy8bByUZyK6OFmkbw6jN4DPz33F/uUtRdoaPRKAVvoF/f
	 djoz4dvxHjizpXVuLrM7725fxdb9Amou/5rn7LZItQwu1+Nf/b7DU2fmLFTf/qUiMc
	 OZghgs1xdD0Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F1CC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178518423368.2891.8172784614436965860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa87ee4026fe9fad2359f62ef0a5eef2958d140948dfe7257953a329c5390da
Date: Mon, 27 Jul 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785184233
