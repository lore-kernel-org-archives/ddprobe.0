Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25EE51AAA1B
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754070594; cv=none; b=Ldq0aQ3HVJlynPfo1Pz0n3MEDD/C6JlGOFd57axSxhL7R/eW/4pmTww8WJAyAfJCO4uCIc14PKL48iaxOEHW/BtINKiIKtaXQynlQRIE9elaooOO6ennKd9EWBRhpGf8GeVV0NG5pB9zqXpc/91MqqeYzRa1I+qUKJFeOeMd3o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754070594; c=relaxed/simple;
	bh=EnrZERzqZ3MU2MEUmhHSmQN0HgcSqRmoP3+v5CbOl34=;
	h=To:Subject:From:Message-Id:Date; b=qSVogujkh5sz4J8hGjFBWE04j/IQ+01Fi7tggZdaKq6sMRL5hSHYuSYBVnCVFymWWR7udJVmFuxIEVusxafzOWwI5jfFlPtIBfV7oNY+UU9n4BAwNu1fD8SLoWcV1mqwbATU1upjfGoGgf22q9kYnLF5+euVMVMVu94WRsR9N98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEB7oCma; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEB7oCma"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4803C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754070593;
	bh=EnrZERzqZ3MU2MEUmhHSmQN0HgcSqRmoP3+v5CbOl34=;
	h=To:Subject:From:Date:From;
	b=nEB7oCmaZmXPiompYcbrKc224G1adtjfbIr9Xo8SfQCcz9NWgSvEafFzJo2im/WzA
	 kxARXsn6pfbbYfbg/hcDXD2ry/rPCCLiqN5bXqd9m6eKf/EXagKWIt10KGAmaaxj0z
	 LAM17WHy1DdBqJVTLkpp4ajWfhDUl9PmCUtLpz//M7LgXBtzPmtwJpDfHBBnKDKls6
	 wrEq6U8rS+6NyzF4Ce4BsQONIjwgdlfBFo6UWs1CDHkU8Vq9jXkbUqVyC5365mETEZ
	 E32K0e/BtFtn1ZFWR1RF7DGr5NMeb7WcQ4HGXiqljW9eFTtSxG7CPDjrHn6elPmill
	 BeN1i3injZixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E0FC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407059358.16083.10953728385065011077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6353f506d964bd59a0c41087701ab730b1df91b5750a055a87bcb41522dc90ba
Date: Fri, 01 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754070593
