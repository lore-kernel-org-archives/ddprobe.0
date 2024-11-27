Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E1CEC2
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732670154; cv=none; b=dn3/RZAaJG3KCa9fP3Z8bJ69MQY7ZcvSVvKmAGXG5+mQFdsQVYmdCat94Pb2eO9wGDnV0HIDKIhUhDUagGBPfcypBhI7ubgTcPSK3CovSh7jf6MDBDYVV3wq4KbfzWsFNfP0bRQwXjG5TA8t+vrhVJivmr0IVUz+eClFMKm0Z64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732670154; c=relaxed/simple;
	bh=8pBOlc+xjJzQx/6OS/3PnLEr1XWFVa8IsXkIgNx5EJ0=;
	h=To:Subject:From:Message-Id:Date; b=a/tWPbdpNJArKI4fW9obucERKBpWsQM9f239OboptApmBrRx26dPd7a/OV9r1OIr6vH5td30UJ8kkEgR0tE3SonSkfqEN4w/i8pObU8tvWcWytHZmj9h/g2IikLajkrzpzJNVAGMJZHbr5JvTxeYqS0vUu94W64QsZinDfYcu+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PVMBfJDS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PVMBfJDS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA101C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732670153;
	bh=8pBOlc+xjJzQx/6OS/3PnLEr1XWFVa8IsXkIgNx5EJ0=;
	h=To:Subject:From:Date:From;
	b=PVMBfJDS/VB0RG+4X+Uei9BR39a/yZJhYvJhstkDsoPF4yH+9DrIF5qnIqu1XLvIk
	 K1TRD6/PnQsoDGLtVN8xmjSp/rIX0yRIprEHwybAvNVtEo0mCoCq3nr9AP+bpO/Wjl
	 k5HRgr45RaJAhnwZdtgLVEJYZ0RUDlKNlcQ3FLC+5ECpuMbHSlwCuHz6JtBB0l9ziB
	 Z9uEqkEOr9B1GQnLncCQzKfPcewn2+TdVgKdjD4oywShgL8xU/EgANj8jCpzEQAw1o
	 TLGTGpmCaSTZsrkXRjk1hV+/6Td33x658/CiMB232l50sSeCp0u8lPXoSnF+aA2IUo
	 0FqV2Lqo/5Cyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930A8D66BA5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267015359.29585.5435835471127740039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f704accc8c0dff375003dc43c677b7d7791382828b7e60f87907831d7dfc56
Date: Wed, 27 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732670153
