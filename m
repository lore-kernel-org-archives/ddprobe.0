Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A612BE644
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755062994; cv=none; b=goBzYJfT2XRUs7L4rtchuIULZZoN88TUwbhI0X4c9qHTvbG4HnB067BNN+Mvq5sg/vvmMPMV+wyWbGxyy+Bu2TG92QP6vu9xGVJNKGfEewCxnhtCV5/T1Izd9sT57M3zoeeu0wdGtuomS+0N5n+WzYbEeXm08Nu+BS3ghDq2vqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755062994; c=relaxed/simple;
	bh=W+Mm903qODSJoDEQB9yQrR8RBBfKBWx6F/W9VdiloHY=;
	h=To:Subject:From:Message-Id:Date; b=B2kmPC85psq4oKRb2zJj9+jS0+QNWj94Iu0maVWxW+bfCnNaPpCXKySMnF/UwtHjnOeZzm1ZwNHa6zgCiemRs8n+Ot5qymhmBsNSZhX695EcgiYCY684VF2PHggjvs/kBB5Gf8yfDQg78wZYX2Z6b9+pPJQvZuZg1Pvgt6oavWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISFCiH0g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISFCiH0g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B23C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755062993;
	bh=W+Mm903qODSJoDEQB9yQrR8RBBfKBWx6F/W9VdiloHY=;
	h=To:Subject:From:Date:From;
	b=ISFCiH0gZGlPhvE82MWgYGFDxTOK4cpwLnl4n+3JzIJG99qiImixOarxx0ow9mmgN
	 nMDop0aI/cf90x+rBc7sWLnBlKRBqdobJJzcwvoqNhLVmbrMHLEsxZhTfnDLlcTxEI
	 LqpIj6aenlG9VreaKsWT6H6owPx8cwD4Kn9Jiik1Q55GsFeEJ5VsbLZlXObQTfVk8Y
	 Q8+b0okyjIGvz6iW38S5kMIBcIM3e3WPbCg5erI/Muc4bJBEkduG+JI4BSFeKrnQBk
	 nVSO+6z1jGmg8PcDLlaq6P9I7Ga0DCC+sOxZVRMu0RtN/aDO+lBxcvlmOTfg/o+F1N
	 txBhtUjILcI2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC00C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175506299358.4720.1804847930972538266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d2abe4b8b6a1270f69cd14dff899f80fd5f07ae8e95b6d320f6f85f96fe7a85
Date: Wed, 13 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755062993
