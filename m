Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD781A680A
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775548534; cv=none; b=IFS/R3gPO7Z7+Fcjf/ifRSs3F7pXbY6i9FBLKvjJrt3LgcfUJrL01onhz6cbpBl9lcerf5f8zGUVM2U8P+fltkrQkob/CB0cJ6HWVjeMs4GftXgUHPRkCdtUY4B85XV24Eib3YF+cyH8ub1i87eTaxOGXNqvkCAD/VSaKU+aS+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775548534; c=relaxed/simple;
	bh=/0hf/fqUMAUVjSiGozyg4T7iNZ4Rfmihw8n0TTpwojA=;
	h=To:Subject:From:Message-Id:Date; b=WtaEivgjWZodIwraEPGmdyw+WuqKOY/pleM3JtNbWWXO8XL2+yVAO9yNj53408NjpaIolPVgTSgKtOQfaztiGfHY0vbwEpiLN22ZHwL33DtKi0vcQpdRjAei71GfOFkyU4YeQk3//SCXBI/z/o8PWyZHf9K880vCbyeiKgpkSrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MlbKjjIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlbKjjIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1DC5C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775548533;
	bh=/0hf/fqUMAUVjSiGozyg4T7iNZ4Rfmihw8n0TTpwojA=;
	h=To:Subject:From:Date:From;
	b=MlbKjjIwz93CqpP8PeZdEK0Kg9D8wpb/l2NfSw2YKWIdCgOZ/3fUF+G5YNvpz+NGS
	 OqIDNSavp8dSu3tt3kEqoJtYv4qPZhzeIDU42cbB7BZbXdpH/sCwa2aD4UEm/MyFh7
	 wF2U58GAF0+gcw77QQP6BV2np1B0/11WooMMvt6NTz8giDlKiZdBUlF9UutEaWCk7u
	 5KkPIC1SDNnwE8ftIHh2Pd9vvKP2O+uO8vU44ybFr/DodlF8X4MZ5UqlCFlw/W/B9u
	 o1DN9FlsmW/vI1Yeh547vXVVhcSNvFlN4DcWSjxgcVVQvDU2g9RjBgjP+LbFU/vzrM
	 QERBSsRzkjcQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06D6EDB7CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554853370.15210.1583958062623687933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edeeed66d07dc8f32087c0838837f4708e7d309455c4d2cac55b65a76220617b
Date: Tue, 07 Apr 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775548533
