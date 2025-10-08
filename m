Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D93E213236
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759966194; cv=none; b=r8yiVxvuhepevGOhExFntFjb65MJCV5aJuZFkOi+mtEkA2oY2EQsRTAXviUvuZFlurmv8Es1KZxDyDVlicuuRtQm9gTBLLWxEvDPgj2ZI3tDp7vDNGnJBAbz1f6lcpBQpzdTSsyJieOTKEBBeRiX92LRGBhItpFdQx8ufxKeDas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759966194; c=relaxed/simple;
	bh=SlsGAY7CxyrbYnYSI23cf1gOAFf10QeAyuwvN6g4sm0=;
	h=To:Subject:From:Message-Id:Date; b=TRKTbOtdoQOWYeja1RvtPGX5VLTjombZ8M5xD3QtTPi35k9stwBTV+HVozg3DfkEJfMoRx86YobPZT9gR7JAXnhw9n5TqktJsyKDOBSml84BcEQpd9jah/MS0BhPx85rub1lE2aRIg1IUTAoK737sPFLQTGZFCCOdTcjKWGlqMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US4qr6HM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US4qr6HM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9957C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759966193;
	bh=SlsGAY7CxyrbYnYSI23cf1gOAFf10QeAyuwvN6g4sm0=;
	h=To:Subject:From:Date:From;
	b=US4qr6HMLv6bEmH103dcom9DU8NimejyQTcArWavHMILcfLBolUgohCcRZ586Sm1L
	 q40Ei1Q+efIlyfe+cwYjFcow1Nqh8oMQXqEOdCTEqdB6XZCnWm7VwM7zdy61FYau/G
	 2Wilv3y98KTfMbP0jJj0C0a9uXW3ACZt/tAsWQ1PNXIoJm7WQR0sPvmsUUx51hvXIB
	 JlKoj+mz98LCwaxmllPnk+5cmEopqCRbVzxbpKFM0MmiFO+oXHhczi6mNDPZfzPoa2
	 AaIEx88OrXTzq+PXVyPzvPLojg+DmgxlBZ1NHBkJsco7PyymXGnstSn/nMhcGsCLgh
	 QL1tY7187M5gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EB6CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996619357.369.9302268480905281085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f8cb403293803ce2c356db2fbe12aef50964f02ec03f11024e2b9be36270da
Date: Wed, 08 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759966193
