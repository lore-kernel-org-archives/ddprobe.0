Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F692B2DA
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765467774; cv=none; b=KlQMQb+PhVxwA89Khn5aC5n1qtJ5TTNdWQHGPHp4x81Vd3dwuTtyhlKbhDuc12El+qoHQmYuEmGG3CYfQ09V2Kg92XZuamqq4s7mkJE/mX+BGQ0734jDwE+53V5Y9ZaejNerZZX2gdQlDWTH09qbVmZpcac3HVNCM1bwfh6iiYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765467774; c=relaxed/simple;
	bh=r3UyjKfT8Nmb+KCDoxjhG2ELaTD5zEE2V8ZGlM0z8MI=;
	h=To:Subject:From:Message-Id:Date; b=MsmiA/UkEeUeuhw98kMDw3LZJvjQKHRFCOSXePTqp56eWuTn4cdGiGpl/XYdmjeEY/QaKIbPhTmBG2NhL5w5D83yU/zccRv/+sSpZEqkJaHLJ236ElgyBxkwl8YNvZohYolkt8o/KO9wb/NOeuVNplsZ3TEw28Gbxnw0+8gi0NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uYeP+hjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uYeP+hjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC986C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765467773;
	bh=r3UyjKfT8Nmb+KCDoxjhG2ELaTD5zEE2V8ZGlM0z8MI=;
	h=To:Subject:From:Date:From;
	b=uYeP+hjHUIeJJkqd+9BrgOX/G1wvGCMTusGQ7pNv8HNIa4RJta8NN3dveXSOa1GUd
	 okgeiGeatgGqnW9r/Ye/RImYCZslj8NGVpadLpL8ydM27WKl7gd5uIZq1FVlN7DpYS
	 DcGoinU0CZDEfyNEpGLNOC91MhmMQb2WeFRhQYQEyrN161oHzgwiQHf34MaiUmw7UI
	 O48DtHWtZQqYTlOZ0LwfvpSkU2y4kq3oKNRMsWJtjS0Fw7KYorEFcIlb93kd9wGfmz
	 k3ArdxC4I7g9rfWm74zS7jhB5kQ+ILHFkD9SWaPcjOZFxy3eFnbNmiZMaZbJYswqnc
	 EIFYuxSUxaj/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD9ED41D61
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546777362.13075.3435160962886214103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0fe5fd5e93fc8b5e49534392576cf966e8d426a4bee50e4fe8491c8f04905f5
Date: Thu, 11 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765467773
