Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23FE52CCB4
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722962154; cv=none; b=Gz9d8p8Mtkk0XpcLVGHdbI2/402Etc7AJIRR/6mwSKyyo5LKs0rcI3ZatohBq6iU+4f12mMv2seRANZqkVr/VixA9994+Hk/g1ghGrmthMA8Yzd8vblx5pujDv269rVFe/re78L5deDg3xVMzQtWO+6ouyWK3g23qp34XfDE1to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722962154; c=relaxed/simple;
	bh=mlv7c76IFxmfztJCPx9OEDmWGpx3zaC5NcKPHDg2GxE=;
	h=To:Subject:From:Message-Id:Date; b=SGOarReqpyHqMKfJD0LezhjS+SxAzuRwdfglDrQOd2kycgz6GovZ2cqf7wqf9Bfrh2Kfwo0kdKwUjDF88YG3D003QQl4JmJTX2grom09zV0017aWtd4/Y6u9pqQrOyitVykAtFuxeDloedxr0Vk0vutapAO7LBFES+ihlRCdfkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qq9RX6dn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qq9RX6dn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE067C4AF10
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722962153;
	bh=mlv7c76IFxmfztJCPx9OEDmWGpx3zaC5NcKPHDg2GxE=;
	h=To:Subject:From:Date:From;
	b=Qq9RX6dnDnst4O3tWrOaP4T1+AiUNiVtPh6vvm6AHRiDfP35jP9Z//pc9U4etTD34
	 3qgGa3Tzf1HXWLDTIlTraMyCCRAPz+NKuISZeXBIBJQIG0u0m6ZH1bzHveC0qwOAoC
	 1ePALD3o4dgySCM/4JZw+j4ZKWh0M2/hmgMb0jw16y/IJwRN6XqXUxKQT7mVRBHPa0
	 /qTXTk1G0/EjGp/pz+nGsQAUHVu/WdFVU2/ULj5Q8JgKz/tahAXMJz4sJDMLQ1AbtR
	 scB6o0Z6+u6RqS36Txeg24+MercHUwU56xK+eiWxDS0wNtF3w+Pg3+mm/M/mODVWrh
	 4LIx98jFdMlDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1B9C52D73
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172296215362.2308.11014698639484074338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1f2e9d1d08e190eb416c47d500369843e2fcfc0a1f0a5a972ca077ebd0b9611
Date: Tue, 06 Aug 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722962153
