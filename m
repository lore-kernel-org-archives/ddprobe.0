Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640768F47
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716256943; cv=none; b=LaHbMt6Mz16jdwgaj8q5HMVlt4c2l1G/SvKlpNHawF8RW92U6IZDBtg9EO67egA8nblJprunWvBW5Rh0d+Sl2/Gw43WlInY6NC9DXx7GzVkcdoVvp8CVrs/2zbuC7Jo8LSDnO/MAZVvT+5i/bGrVCZ8hQqRdS0Ck0A0uiF7EWAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716256943; c=relaxed/simple;
	bh=D9LdICa/wM1WMJeEGE8u8ZCA7C8fAolD8rB6nYDrbx0=;
	h=To:Subject:From:Message-Id:Date; b=cCJuz+G8/czeA6yLjGIrm3UvkHfN1i55HYQHyhr4r3q8ankTUaBWqLmfVoC55gNW0Bu/tNld0sd/5gVzsHLyHUNrWN+KUvNKXOiUnyUpg3rF+DssZdSN3Spo0BcE3b8jNzmJSdmipWQT6YptWS7qFmwGRZQUw1PyDQwhMb0CvS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoE7TiMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoE7TiMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E82C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716256942;
	bh=D9LdICa/wM1WMJeEGE8u8ZCA7C8fAolD8rB6nYDrbx0=;
	h=To:Subject:From:Date:From;
	b=SoE7TiMWECQhjjVLPVverBcxDgP+kzjr5Hz27tVvGVa4BBCrwFyFenWz+aUCrbUme
	 uwUygGuKhhPNRa85cQJSlImIvFZuLt/OlaFoOHhN4HzcW4OCD92K151lrKEEB9DOx7
	 +mvP1h+EQKNlVWrPrqpivJ5cY8m/1NOfA3BfFK4tTJc6trcSZyRM+6oDnELB7ujeAp
	 CWlrkDBW9zHiL6pAjdoo04NgPd99198ui0dfA187y9aw8KFttgW2uJyV3DkHaIJQLT
	 6Y06ykP3KscdzhiB72DSLVEUxBzpxSAEgmolOgRIBDStPkms1pPZWP1b9IH6Xt4sz2
	 VsKFL54//Bzng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF2A5C25B77
	for <ddprobe@lists.linux.dev>; Tue, 21 May 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171625694282.28119.11277969493627881950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb4661eec3e7263b78091a0d4d7e62aec96eafcd9e2652a8d98386dcc2fb33d9
Date: Tue, 21 May 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716256942
