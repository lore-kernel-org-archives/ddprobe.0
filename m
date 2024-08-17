Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A78013CFB8
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723922754; cv=none; b=nAQmmXBdwJ3Mf8M0QSIoUTA+p2UkVJXI8Y3FXKtAt1iTAxTTAYeSoWv6qQ8q6reE7Kg9BO6mkhaPqVzi4xgj/ezZ266wfj2rsNN8IV//8bPebiQwT1C/ybaKCj8DoOL6ON+z5SWsk6KmJyG+XKBUBV9amXt26oUUK4BrPJvZhqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723922754; c=relaxed/simple;
	bh=xJhf7UC4pIBWAAa5vLetjzn+vCkWRUkf4zPecVaP9yg=;
	h=To:Subject:From:Message-Id:Date; b=AwV4gP6lkwUrd8WHT87SjffKOlX06qE9rCuImeoWSuYW2o2dc2BoVFHN39YlfsOA0vseh43ZkKTa4f8BtsD25wjR3EcVsigULd81yY6EtGHpRJnvAFiJb2+CmPCCNUAfyBAqZlDpTad3yPNaNryf3rHyMAGZXSIHiq/aFIYYND4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kzjQ7een; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kzjQ7een"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA05C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723922753;
	bh=xJhf7UC4pIBWAAa5vLetjzn+vCkWRUkf4zPecVaP9yg=;
	h=To:Subject:From:Date:From;
	b=kzjQ7eeno583NJC2dXGJQFM4OTAuLAZqlSkqmWSTeR4mjrVquZFWN4My1zVuU/zgb
	 8A9N4yj2MH9ZvaLqnpo46Gmwtcs8nCtJV5RxMsYWQRuS5MIEDSi+v/MQjIuWUEtgEE
	 s3SdY04ECwSd3it2GUApNPnyOQdNCWnsKEyYJDk1+znaUuPOAq5hMSUaE13Z6WXGGr
	 Pi1F8/D4mfEF+BVAn/VZxH25OHpsarpKCStuLf9/Lf/bFfiH5ts12H2bbizJlPpfwx
	 7A4JOoN56AtDpIzrJsFMvYgf1AEHKLzMK3HNOQ2yEGgCOzfAff13oFXvPM6esfxn+i
	 E0ShP2FRgBMwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999A5C5320E
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172392275359.1057.9287323642710616905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5df3174d555b95563316e3c9842a9b646ba574dcdbb65d94e4e5ab64a3dfca86
Date: Sat, 17 Aug 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723922753
