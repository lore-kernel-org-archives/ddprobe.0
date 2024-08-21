Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255D926281
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 02:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724205955; cv=none; b=EACPxfC/HmxnQduKdYJTsKNnFiy/b6zVouSH0oH+t+tnZyluxxqLdbwXv0q4+DC03o+wqKvUo8oguyks2n5quviHiOAQXkOTcrOF6mXK8pWbo9yDB7das3Mkl4cTbu7duyHtpbL8Nwp0IQQysM/M1Qs3Ibs7hFrCYx8yZyHRhTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724205955; c=relaxed/simple;
	bh=Dv01SyNxUfmczcI2XC7QHkx7VXTS5gPGwsqEsETnuSI=;
	h=To:Subject:From:Message-Id:Date; b=WXDI7/5ucZxXm0pq8ebA99EYANuyViUOKiVP1EUt1ZGzRIW5k/8mH0YXrkA6J6gkWmWgoIW+bmwtYQikPxp4OHGrqYENf8em0+1zVqPzgiBsR6EiKHqB2SOs1ua69mHfXU0BMR6+fSUUWt6hn6Olyd9F3uSF2/qPLvN1DKBvamc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U69Qw8s/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U69Qw8s/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD451C4AF11
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724205954;
	bh=Dv01SyNxUfmczcI2XC7QHkx7VXTS5gPGwsqEsETnuSI=;
	h=To:Subject:From:Date:From;
	b=U69Qw8s/XyOcCrG6m6Lg+vsYOXddgAtw6wvLraRkHPGPWcAU/R9OWeO1H0jie2JK6
	 0UiLCtTUzxOoMITfpUU9SylzSA+utgQ6zB/MygZvEIrLMwCcoTDo5/OgWmt4OnixD3
	 qZMWm9WnIkXuYMud+ceJbvDK0RCzj3KYnuC0wkSP6GYUP03QYEiNWHbJqVmDqHkV5c
	 zr7Xg5uwcvHhC0cqWvSd8NWX3ats81bT2Ast9h+ezM9tQkt4hijxJzAZ969FQSh0C5
	 I0hlq3meNAuOHQcR920zbUikv3bv/F2bewh37nNQbNUHxDjo8sFeSEMTRNcdNdzbaa
	 WOIEwhd/5hakA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982DAC3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172420595361.1773.8733268603206018637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d205ebb1a56bb308a655c5aaa854002c35c25547a822be2d18ed1f5417fe9c75
Date: Wed, 21 Aug 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724205953
