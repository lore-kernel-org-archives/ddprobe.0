Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E73B1D5CE8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744301994; cv=none; b=XVMonHu3B7p4bpL/iipINBb+nEvsXn1ulkgsCsDQHlOGIk4mYai12EYpmoFzlxiabZyu/5z6bWeA5eudCKLiHx6LQ2Df7HzObTnro6bIlyauJLCxIyIT1lAngnfBIqHxUePc/2v/bVwq4yoZVqgVQgHVlaU9xR/G4m/POh4ezVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744301994; c=relaxed/simple;
	bh=7lC35t/2T/dGwc00/dnAjBV+I8p0hdhz47EvZ69sVVo=;
	h=To:Subject:From:Message-Id:Date; b=HuHd1xE9NI5SDIOPVVnrapXAz+aIntMoO1B8bQaCN8IeGa7THh9OXNZlOHu272/tOKu7hRJobCw+IFTMV4OHTcP9IIVOO4sm0w3daQymFt/sfDNad/sPGeS65TBJpWOxjuODlZ+yV3QrVNFw96KLWMs4sFsGIq83oXbtfVATBTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZIF2Ar1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZIF2Ar1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07B6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744301993;
	bh=7lC35t/2T/dGwc00/dnAjBV+I8p0hdhz47EvZ69sVVo=;
	h=To:Subject:From:Date:From;
	b=aZIF2Ar1yQnvBTlXdsztEf8l7Gc00IpN5R0qXQJ5gqJGpwz4LsYhltR+oAvsxgMcV
	 dNnfoTgBYTXMyGKRcmmgCvReuytjNbxyQuQEWKXj65joXS0QVAdfa720yGFZIdkYQB
	 DjRyQOfub5/4QDQPcCviuPCOivWc3tlwxOUBt2UE5OO4MlnVeNPHl2qwqqZdq/lqq1
	 enGrQJeAa7LDN0k89hTM01iKzIFGYSN/+71ImTTVBRJMb2ygTJHQ4MZZPBbBC7/b+q
	 TvjSQNFo0ohbZcpqRspzjubQKG7Xr9Ha9R4C9xHLgDjSqeU7oqVTd1uWaEGkVtHkKe
	 HsuXYJVlGpkwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1321C369A9
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430199364.9225.8658355501732816491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac808ad7b1c5d79d634032e8383e12a9225f30b7332369ed916319090aabf99c
Date: Thu, 10 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744301993
