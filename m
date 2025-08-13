Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC83249E5
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755046193; cv=none; b=HApSTpKIpQ4nFTxj5MPVxtz+kkCvtYb9NZ13DXH8j5TajDoktHfL35enCkDzV0viC/366kYyAupWyX5tTsBNEN/VRasMGLvOEkaLDPktF9Kof+m62IXXIO8gKVFhaLNf7Orh5pcuQ/bKE7B0oH0nU8NyEWhyEB09Hmd5gUGEtO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755046193; c=relaxed/simple;
	bh=fpH1rSQQnMZw5oZ1eLZ2zu6fyfFm1UgNLVckJww5sxs=;
	h=To:Subject:From:Message-Id:Date; b=ZCKzHJ/WZYXAmApTeoWEJQ3sp4KJGLIeTLMOSnwvfDNNK/6Yn1qrADQFhjRiRg6wUxBJAV9Mei0bDUkZGDxlvDai441djhcBf/h/H5cbIEtMDFcE8VlZmREq5nxOiORoInmH+Y7plf8qUWUuou6IfDxtaqTGDnObMT+1Ldo9BDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4q9PoqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4q9PoqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38F7C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755046193;
	bh=fpH1rSQQnMZw5oZ1eLZ2zu6fyfFm1UgNLVckJww5sxs=;
	h=To:Subject:From:Date:From;
	b=d4q9PoqJbA12fTSqKDJH44W+zJrCN1kzqjrVUrPJ3hcnrBW/mQeWpWrxIGC6Yy/zB
	 Urg3kWulm5zfqLhFrkEFcE/bVCaNukFkKwnejByQ+hq4Yzd8x+RSWWqBBUuMBKfzrV
	 8ew3v8ojzlU2XdSusgYOtaOpJ9S4r2lhvWx2q6AhpB2+ehIqluLpw8WZoGkd198o4y
	 2COr83xSqrenxKwIKLt3syPN4klqsJ5iD4dewVXsG/vUSaiR1xny2JSmDNaPCo3eAA
	 LXokcmmkQswrHUef3ac2z9JkWFHINWDMusqGoQpgaWxUF4eINuBwIIdnWTgAl4J7fc
	 uaKBbx+kJmE0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D80CA0EC4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175504619357.27535.11064037995657327638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fec2241eb728d0b6de991e1bd01973db147288b6d74a608b4af27d917ae85fd
Date: Wed, 13 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755046193
