Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625AB3C2D
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717430723; cv=none; b=FMCKZgLMb7sx159dg2DdGOGOl9hhRcjy7saDTuVNOpDkT2azs5FYGvUCvcMDGhg2M0Iuy7xCRHjmyJ3dbmKDC+niE96lj8ZWEZt1V3Jugr1hVLsWeFpx+APsDjLsX8owk7LvZTYsTfonRZwfXzHmPd4fHA+2oSPoxvssrMLeXk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717430723; c=relaxed/simple;
	bh=+d/XuaQUmGB8eoX6b6joClrxk/d286AWGNwzVfpbeoA=;
	h=To:Subject:From:Message-Id:Date; b=d6F4ofvZOMfPKJWtWzk53Cq5n/qGmDux8Hcx/hhTItrKnXSmVoGsEVkACUHJOvE5KC1b4+xnzvb3fuFhp0uDLnKLkyDDsgXc6rvgB8qHsFNpkQtD3UqSIctSpZx86YUgh2vW+7pduHzn7DavTaEb+4EiJ7N4m3zzFYbA35dIYcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea8wDCVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea8wDCVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAB2C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717430722;
	bh=+d/XuaQUmGB8eoX6b6joClrxk/d286AWGNwzVfpbeoA=;
	h=To:Subject:From:Date:From;
	b=Ea8wDCVKulbahYywjnpYZF1LghH7TAt+pJMExL355WAE3GfFyMXbLbFxBeKxOmodT
	 s3960Ma+Hru3jlOUe9XR/xMSt93aTT8vUZY885NJDBIIGIzZ7WDNE1IbRPpNzx3TvD
	 TCxiw0Gcl+GSzopE0hNSxM5wulMhHVzTxpXlPdIFUywfnrs4ochntawDyHVnhxn97X
	 kzfCGZsQyjJx04Qct4p+wv5lz0NgsKCjTAXzp+ehbZS/o4UMTlENSsy+6G8VNIfDep
	 7uNMmaUlpOmaRX9kgES9U2uttPypmPi1w0HssWzN2AKlw96Drr0i2Ewa3urX3Ehs72
	 uZW7kglogEnoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF70C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 16:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171743072276.26795.14513078471587185122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4d6e68b7e3f77fbd8e9fdba47d4467b86bd678f69023dbf8abecb1aaebf098
Date: Mon, 03 Jun 2024 16:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717430722
