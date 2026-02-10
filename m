Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C6B38B9A3
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770761634; cv=none; b=rnrV1Qhbz5rJKL1TK8vOu2rd6oeUGqqByuupmcnCv+VyKxMmoNvbobfUxiMQ0VP2rCr64/sz9qoGNq04JEJBmeM9c7Nv8pxfTeqPUJOyPbYkK/z1j5s3aNFMtVa7/fMj93SR1EVm+J3bG6ABuoaTPdGnyi4cH3Ohbdl50uVxayY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770761634; c=relaxed/simple;
	bh=9HvekAJbhVRc26ockywGlu5tE57AQl/eFfRtG5KYJwg=;
	h=To:Subject:From:Message-Id:Date; b=pzA9M182VwaCq2WpjpQJSGi+GwGQr7Iaxh0T74L5G4ZJA50caMGD3i9fHkNMtXVISYRZhSsTiT78NG5REr05yyEXJ1P5kH9GLn0FkBxMeHJaTgEKTvBgYYQw2ltT6DvI02LhK1DXh+aMIoCo/SSbf3GRrMew9H4DwMlkv9INg28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q1xNBipb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q1xNBipb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9154C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770761633;
	bh=9HvekAJbhVRc26ockywGlu5tE57AQl/eFfRtG5KYJwg=;
	h=To:Subject:From:Date:From;
	b=Q1xNBipbg0EEfIoXNQWUPa5+8LK9PE8LDjhYBb3pdyiaeMNm2B2zBmvuMc3fx66ca
	 7WTMLgt0TYU+7c9Zutc/Q+YrdJeM7qbqD1gzIa0UMf87N/uhnKPJ/cpaStYqSCIe6l
	 CKABrWOXw6nYlGZFXFCRddDCWZEyLvNliY++tYBYPZFFwLW3O2f7+58ADrr5nL45c3
	 80ZlSAxgVz/y8K6SVd1gu6DXGDtIL6qyZiey2otkjCfHVPKHGzTBLHfMjcHMeVhfe9
	 yUK3cLyd6IHN+HCjp5WSBQD5v9tYzZuwhLEb10g0slUc2zmAxqOPi6Nu1jPPWlKE1D
	 vA3wbhmLa3M3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935D4EA3F18
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177076163359.8860.1364898051733270386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0abda4431c44674e0ac81ac5f424736ef146c38afae9b700da193918d31dd6e8
Date: Tue, 10 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770761633
