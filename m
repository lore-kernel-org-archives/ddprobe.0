Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4563A1C3C04
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748729395; cv=none; b=P2RoMBabIbi8tYwFybPn7qrMMMEmbRZPm5ksOIgv2CMQMIUWC4aG3j/8Cim/1381JqcAsQ6UISZBlq8Pm6N1QpNwl7FA8zEjcD7ACkX2+e0rdV0ZrjZGknYo5h6XzjvlEu/kUFAdYAmuGHE9xLzGAqHZkNQy8rwWt1646Lkvpj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748729395; c=relaxed/simple;
	bh=avxh4cCUcHLX2AF/MdrBOZDSvuGAtIdBGNi5tKBFqRY=;
	h=To:Subject:From:Message-Id:Date; b=kSWkH1PDapDFfKP996rZsc0pYU2k1KxG2CyaliuFO5QFIlGZREroikjBgk88SYaunPHwWZ3ukMD7YlVN6DQmAhJRsDHBhqa60qucU9c67zoZ3TXCP9nIbsZW2O+9Y3yi/8tkMEEuQE7NqMjM2+GjrYyTEQKRTJECJGkfkB0eVg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q86rZ1tY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q86rZ1tY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90D8C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748729393;
	bh=avxh4cCUcHLX2AF/MdrBOZDSvuGAtIdBGNi5tKBFqRY=;
	h=To:Subject:From:Date:From;
	b=Q86rZ1tYZTYO2X6g0hJt/h5GH5IBbFmfBRiBXXfAr8s/FFAtqER5rahez8tPymx/2
	 pVCJvzk5ykTkR4mc4UrKdBKIcdZCqYzdbZM7QOnAxD5Bhe6Z1H09wr1+0wIbBkprNk
	 G0K+r6i/mxmMbnJa1R4Ii9kNm8H2CfzMqdTsdDyI3fVqDSSxCX35we3Clvu7kNttKG
	 upOqSKkwPvHEntn8iwsbptRlIotp0GwbuKBz4TWCc94OcAaWm7oB5wiUupeTmOvOh4
	 EgrcudgDPJ8RC4nqS71t6vEPAUnDplerULYK91uMzEIs6s+5g9B0HK16R2dFcrt/wJ
	 Da0c/495wpZOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96959C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174872939358.26323.1787061102375454118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8234a132bad813edd41071008d8b491fc447950943f8d7379d01e8cb5551a131
Date: Sat, 31 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748729393
