Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DDA34252B
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786749034; cv=none; b=Rya161yRQpFTbOmP0/C0fC4WhPyyYxGHkn9zgjGRX7jyLfd257qad4dvN3lj+d9mLT8BlFOIO9MuI2PjRm1sQEkGsoXcFYpNlIY80j0O3x4nOfmNMPU4BZygNWeCAQtVSNJKdY8+Hvyj+OGGuPry1Fsyj0/dkrkVD2Ycg893XBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786749034; c=relaxed/simple;
	bh=gP7TIEVYJqSMlDa7tXTn19aKk/FcDJQ/9XM5/GpaRQ4=;
	h=To:Subject:From:Message-Id:Date; b=TIe27zzXxwT32fuwOgiz0OXdpfooulg/SoiKIlSxFJzCrJxuYZM8iSZ5fTQyGeUr5ujlCupr6+/1NdgUTreyYktJdfzi0k8qksudrBiobA94hfhL2EcLfqXAYUtMYHasrU1dVFEYAkv/asGXlgczgpR/vWMoS0H/lbGsBRj39Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IaJJs0qM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IaJJs0qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B4EC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786749033;
	bh=gP7TIEVYJqSMlDa7tXTn19aKk/FcDJQ/9XM5/GpaRQ4=;
	h=To:Subject:From:Date:From;
	b=IaJJs0qM2UB2GR6LrPtCWwuqdpXs5ZPZQmah0qLf6gx2olLV5IIfR0hWE/RRfH04x
	 egzE1vXUGS4+DQw8kv6LiifB0HK5l7djWnGZFZ8ofYtYmTQPwBHyA/EjPeFg504qF4
	 4MXaiykyIYNoVZzaAkgXGNPWkHrlC8AGH+f2R6cpPEjVHHi5JTddHflZA288TNNzu8
	 2Ncw/aC0PKrZw4P2iPApSwXMz54aRCm9NncT3EFP5Ae2+YzjCWkCJMt9rkYTrMDGvq
	 KfOIt3p6W7G9m1Pycldp4TrpGmEfGWd1pFaMQxwjd8nu2wJh6HUcCB+KTNOdFMifJj
	 d5tpkFPz5gtaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE21FC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674903370.14956.2475495493720811941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc480ebab7d9655a3abb68c5ca74e313bd33020ea9d871d80113bda54634ce5
Date: Fri, 14 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786749033
