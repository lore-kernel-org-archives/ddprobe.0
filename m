Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1862EA490
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764197574; cv=none; b=YyAy/+fycn5DuVm30jajZlVpE+Qn5Ic0knWGuEt0WKVZEKTG8fs33pgEmxaesY7G2G3hHaTA+wDDM1m/xiit8QAossFeQWdYGYkPYXT0WOqysvETD8HUIuoriXG7X/3v3tpT7DtFfMaJ0IFvDT4piKAKnTgexb6mk8vWNAVhlxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764197574; c=relaxed/simple;
	bh=AjBsTn5IJQhKnI4XQANYTfyVwmqpxEf3l01BvMG4xHs=;
	h=To:Subject:From:Message-Id:Date; b=eSs6othbC+l7+QtT0/0sIdX5RHOm0zUnH5Nma6qVwqNdTDrkL8Uhp+SCi9tEyHz6YBgYbbPSyKQne+N2SZ+zD/YtjZxrrDPydDkGVqvcvNTeLIOCdEkN1cKq/KVxJrEW8950D+q3seUFEUPOOER2E3+AF/88M8sWHR+wCKctp7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaDffTKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaDffTKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4141C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764197573;
	bh=AjBsTn5IJQhKnI4XQANYTfyVwmqpxEf3l01BvMG4xHs=;
	h=To:Subject:From:Date:From;
	b=TaDffTKMxMvPBl8CUH/OujbIkarT8Dx6TMnah7O8TqESGQezmWDRLVaVA/xtAbrp8
	 wg1Dq5FFvo2aNsiq9lMdE3TQKnXCFrjjCi51j9ratn0WWphp1CtD7OVhWJTa1COPss
	 AAmF0nVB7NJLfj0j/gkJXLvLp3gqoqWtjbVNBRbMpTjgSo+95ZNutozAHemTBeESTx
	 UX0hpTdBRdXKD6rvgmzFyB0vW4slFFX6/uMW7Klx5julWgaf4VLX6ON4+pWbkLj6AR
	 TxSrT3bxl1GIJuYTm0pQ276wn+7oKPdKwAZQs6ux0SX3VpDD54OPYwZh1Z3XS5O8vU
	 X3grQxplHYARg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D85D11184
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 22:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419757358.23679.14506632488749877961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb845651cf39f2ea4f88735a23cb924163993fabd3bf45864ccc77d57ad4617c
Date: Wed, 26 Nov 2025 22:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764197573
