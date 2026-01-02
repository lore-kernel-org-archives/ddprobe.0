Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D29A41
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767332034; cv=none; b=IkAA6uR+ZExRIV6fbKEnZnrMbzJtDFEq/QWHAQ8pcdIJh3h2i2rtb0AFg6grgEpm/ou2/1AjhICXGd+WBUnjlRY8+tP6HMKsAvPo3t00HieZJVSoLY18bBU5y8PvN4cPvXiQHt8MgW9OsojmikIgVw3ATWeJAE9pr3coJSSvKCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767332034; c=relaxed/simple;
	bh=xkcwGHbEYnrk7qQXxGEy3FSV3AzAt0uOTeLjZ8J87VU=;
	h=To:Subject:From:Message-Id:Date; b=MzAjuAKkl52mxn8LZsu8U1P/YHkkn1QZWSu0Jd0S+W4/cf5OyRBGxpaEyb9Klq3bRxCmE339JcCLr4W1+ngQ0FTfIz8qBPB7jf+tv8vPbv5beE2RdmsKwZM58jrCCutkinYt6GNuJTwZolO42R9YVWSuxk32XBX5N2hAFliUlAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJbJSk9D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJbJSk9D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D56C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767332033;
	bh=xkcwGHbEYnrk7qQXxGEy3FSV3AzAt0uOTeLjZ8J87VU=;
	h=To:Subject:From:Date:From;
	b=fJbJSk9D2btFLCYD23HAESKnq+y9HzyswMbohILoiq3HBS2MKgWojErlc2EIQDhEC
	 rYUDy6kchWFJzf3xPhz7NPknXj+TniBisYbu+L1x/vx4wNt3e4OOV9151eucODhFI1
	 gMhEQE/qVwgiZOADBNFU20kNDkzMJGaD0MwdJ6s9Sx2gt2UzhC2gOZQ66ZPzGs8K0l
	 N2tfyxaucR5FAWjWVYE0l1lkMn9rfAEWOa+87p+IFjuYavV4GDjae/tcirSsJhnfop
	 P1XJGaaWCSN6usuJFD27y93gxdjEqQcJTmZ4yKfORagaawLEXTqMaT/Yj156TyX6/t
	 Qx3u4lID3S7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1C91E9410B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176733203362.4183.5787649674234546237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73641710aabb56df3c86835966a563aa9347206123284d3f90c5d74f4a87a762
Date: Fri, 02 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767332033
