Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5180B8821
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740877134; cv=none; b=RqueoXAQ4HyisSE1iFaZEzwHRoUxQwiTusFTNz1hURYMt3jyJSbvoHdKbe7GGdMS/I8dBkMWJ7oxYIXo4ffPnK84LAPF/61jxtYhtxoSDg2G/rrDmEx2oyczrGPSCST2CGUqklOlSL5pdbkC7CP7I/LKlhTIPMT152vWgzQoe9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740877134; c=relaxed/simple;
	bh=JUvWZGzzTBtHWfDKb8X2dM7z/3sPms/6allV8rrke1w=;
	h=To:Subject:From:Message-Id:Date; b=BaE0BuNcPljo6NjfRQcAJvv30/d0MArw07RY07y+mZ8Zt/HClM7auSvWwT5i3bZSIM6PTjOIuMfTkPB8325uqFIPCmNpXFSAFnP9DXEodQSOtLUXNCCCg+COXBYxH1+5BQ5xn9cnTPwqy1Okm4L9BFDsBBFEt5poS9wFOr1xh/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTH0OyCy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTH0OyCy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6EFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740877133;
	bh=JUvWZGzzTBtHWfDKb8X2dM7z/3sPms/6allV8rrke1w=;
	h=To:Subject:From:Date:From;
	b=lTH0OyCyKR0CiuP11aYIQ/7LSeccV5phyFRgOtEA0iD2OohP5t0VKL3UkNI62QvE0
	 t4/cvrlTIAGrMSMSF24gw2NSmqzEc8DUSHqrkh6K2oebZKhiIMLf3qcDwoGtgQgu3q
	 n25aeFwt7SSI6b4zvkLbf0yCtCge/edPXEl35vF2yaFT9qRne1mWoxcFKF92P5rCQ5
	 iE4ZWVDq1K0RFi5aamn3CNQDkwXTb184Ds5R63IQcnBnrNx8yzoKpTL3kEA4DvUr86
	 FI2YVEN5n0iJ4ewBoIDnqnCFMSca16AhU9Yz8EA8HWfMFsJ8pI/vGRGMHO+W4ib2mJ
	 LxGFD4EOR4ssw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DD8C282C6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174087713361.28238.18246550617446606637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9028fca024be58571918db63c68c820bce48480b09223c2d188e6f78bf28dab4
Date: Sun, 02 Mar 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740877133
