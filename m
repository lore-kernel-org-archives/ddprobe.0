Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EA51DE2A0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758615594; cv=none; b=dxv/8i2CPp1FIO436UBSDgcS92kgUHrjGdQiu6DajqTZlzreqJtkVWBKndVPlXE7TI696oVtd8/6uRSOQzYNB6XIKQ5T3cuRZtej8uGmGzrmowb5jCQEC8AxQMKEc+h5bSBsgc5/1cQs5bNCi4WvmxOBv2SOcWkj+TTQepZ4Is8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758615594; c=relaxed/simple;
	bh=APwcE96d0PATIW6pA5H4KBCGJsqk4+28WHuvHvE5EHQ=;
	h=To:Subject:From:Message-Id:Date; b=J2ziZjaJj5IdW3A3wRSXIpJDYovbI9E7glNrRWW1LNSq5RBctkQnj6csNRjSPDCyW+XZ3FmvYi2KLS5cjImsqKq60TlL8ENYXROpgwI8w2JbifTMbpX4//nSKQ8MlCEgJ3MbS1RwHP+RYaWaAH2N5MwQspYmEy1ALdMMzx2Izgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDLRJuvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDLRJuvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8813C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758615593;
	bh=APwcE96d0PATIW6pA5H4KBCGJsqk4+28WHuvHvE5EHQ=;
	h=To:Subject:From:Date:From;
	b=oDLRJuvSG9pFbzF05M+FpvQ7z4RwAUifiE9KrN7ZDbRyGT2gDu2mP6t0IDfxRVa1S
	 h12afNe0hngHKXOWUN6RyeueHZzwwlbL46ysi8m4rzaCkYte7YU9rfSt5Yk8MyTHI6
	 BcSJGbfGAdHi86K7CsJ9tcNJ9Ho26HWJ/AIEKEKC7wQxjABu7eIg1xKq+AMmlI2+um
	 +uS04bOJjy1M337p385fD8mRk/tb6yN/UxgS/hlbrR+NSCm3nMfxM0xnS9tjohIi4w
	 /t5uh+7ldrm+iTycngeZ2AGwP87e/wx/LbBXLiAIKawShYalFzIIy+uy/YgcJpngyA
	 oIF17RIDNJXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92557CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175861559358.24322.12690231067971958436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31345526af57289c2502a19a2d5699a2718627e3ff71b5a4c0b27d3434e4ebd8
Date: Tue, 23 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758615593
