Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C294F2AF1D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763494914; cv=none; b=OCdB6P0/J2jti3bKOW0XnUAQ56CWWCmq0Pra4pv5ZmDcq4q8PjBKjV6UqXitaNjCERmhNseekh207XaT5de9pWNV6FEGnhLDqWm/ApLZSKlVdOKUlsVv3TsCiCvV/P1GVXP3I8Vl8a6usP++U282zeSsiEk9NK5srBX4UMZG6nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763494914; c=relaxed/simple;
	bh=D/YL1Ce1dM30D1dhy+PtgrW8xl2pmT2sO+W7nwiGmbo=;
	h=To:Subject:From:Message-Id:Date; b=E7mQ8/r7V/62drJgiuZEuJEMAmmlqcnEFb43NdTSOjliW/F33sK1S9tJqLmmGzWwFr5XZezP+bCTeLGyMhlCiPUdlNwesmZ5evywglifbyXrWYxNz6q4eubPiIssRkfvNZP2qT0f7DTMFDAllfK0b+ECnTLLBXoO0xCHlzikrQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1o1oFku; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1o1oFku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC998C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763494914;
	bh=D/YL1Ce1dM30D1dhy+PtgrW8xl2pmT2sO+W7nwiGmbo=;
	h=To:Subject:From:Date:From;
	b=K1o1oFkuaGgTN/ugx0bvUdOJaEt6mjpa1fSjbmV8vYU3dP3DjN+GEAYBYfDayklq0
	 R/vbX2568oRZESd1OCWTDrI29R5RCNY+CHIjRK2yYlq2o+3w/LT2thcWs8Y8QOKSZt
	 /g15ymC5DKGqnkMDxO6UQ53tzag6dQTeC4iFjNPM8ViyV2C0EYuRGgc6o3veLF143V
	 S2vLs//oh3rSYKnS1NeNoSqLqRCF5dCBn654/wj1qV47Lzz+Dr9XMcrDUI0uh+QDHF
	 Vz/einwNb1TClBL9W8AoSBb1R0UQzCTjNdcci0blFE8rGNVyS14BK6UEfFdcQNkcZI
	 GtS9mwGeQoFPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931B7CEE350
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 19:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176349491358.11064.3687636737727529363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1ac763508fb599f47cedd7708a0b56c260be3dd27c53e07c53ede067f25d52
Date: Tue, 18 Nov 2025 19:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763494913
