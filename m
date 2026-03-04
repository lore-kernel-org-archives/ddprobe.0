Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C6234AAF9
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772638494; cv=none; b=qi0APYE+VixHq7LzK1L6zcyKmYjPrbAGO2UhLUIPlRRf92arhwy4atnphjaxBYa3HDIZPGd6HDZETWbft2w6I2dzUdT6lcS1dyVTLdLbiRzMfghXmpdxgZ7UxXvObo4wHcuxjSyWLF5dypabqSUgh7cdQLwyp3WDD7V29e111Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772638494; c=relaxed/simple;
	bh=mxTwUeyZPkHsyNkn88d8uYXDv9J3oBePSSXSF9PrBpU=;
	h=To:Subject:From:Message-Id:Date; b=h8zj7MiPqjTyl6wa4gYK2bqP4hL2Dse78rHrVlmjpijKl2Ws1hAkP2HjYGzovpoZDs9eKyaZi5XJr0imejYZH2zqdKskwlq83P07E12GZUpcffSPMxYfWz6Qb6oOGz72Zs9uBm/j+qT3MmUcTyqmxWISQRGOz/KeNsbQoIxjtvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfIy8dgi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfIy8dgi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B56F3C19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772638493;
	bh=mxTwUeyZPkHsyNkn88d8uYXDv9J3oBePSSXSF9PrBpU=;
	h=To:Subject:From:Date:From;
	b=QfIy8dgimTf12rlHvpExLIy+y5Q/Tc2NI7ctnYpSK7p9rfXkMmKv/WoJUzz2cXSLb
	 5fbN/myKP+o9227PtK3CP9unVN8wX+zmlLmjHfBfx9WzYfRPYIkyTxtT0XxEzMv/r+
	 JcZI7ZDlofjQ2B5vTutmmsU1oi97Z9SWEDT4TzuwJK1hAF2ZvBX/u8ityxS3yrJKUi
	 EUBflxxDvKXzEpuoz91jNUNZN99j7sJd3scjfECbsB9lMSafz+A+y3aky0jROcn0I0
	 BicuPRzgTJ5mcM6zbB2g0gt7KGe/V1gRPM+DqwWN9Cw4Mp3EJEWv8Lq+ndbABZHJGT
	 8glbS3ViOSHhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C385EF8FF8
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263849362.22364.14071338113220864116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6485abe831883360c3e2508b8b51cf032ccd106739e4a7eba80a89149ed79c8
Date: Wed, 04 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772638493
