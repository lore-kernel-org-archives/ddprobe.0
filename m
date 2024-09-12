Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AA518E043
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726139154; cv=none; b=euRWt15/dJIHLhc/KafV6phjDVrhDfUB8FuERw4SkVu8x46xJlbQ7MPaNMZ/RnD0mV16CPFigytjARPqyrFDWdx5CZQn4xc86IwAFkhy4FTARhpCvlxf3fsxsZNZLIODbQHnmt+ruz/RKHtZT4I/5Rp4JYdWhJQC7Gxo+ulSojc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726139154; c=relaxed/simple;
	bh=bZpjDZJb08DqaZPNuvcLR8E+YfkT53Cewr2MS0xpgu0=;
	h=To:Subject:From:Message-Id:Date; b=abU7DjR3M0LPyWX0pyfFh1SEFEsE26zwdjtX52V/KD/O8pXOFQ9gjn/mO3xYUXJA1It57OX6CPcKKCnr02kLzVW74QC8CQj3ldiESsfauj8NMV1OEt7+R4TXeVY6cv5bPKWBP/lbT9kMSGFvWivGEpdth2sPY2uSN7AwdijQNoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AP/3eT/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AP/3eT/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B9EC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726139153;
	bh=bZpjDZJb08DqaZPNuvcLR8E+YfkT53Cewr2MS0xpgu0=;
	h=To:Subject:From:Date:From;
	b=AP/3eT/7SJuRTyoW2wJWrNmulj6FxvKPez8Cbnap1/hT/orDBK1q85VWkmR9yASRf
	 udcc/Mj+UXYsUm1T67XvpExZSIrIWVdk3V7utF7596Zt31ncObzXsorf/7vBMINLuB
	 OuPYcOvm9rt+BGooBiaEj2Gz+OTXQltRLa4Iviwvtl10YQiYHAyWS84/TXvJSY9amY
	 i/+fWIwSeJ0OMabFYf7xLUS6bQqY84N4om4NiSsSmss750ZGNYpb/BnDwPbWCl6tOh
	 AMoHjGEdYUDqe0ycJXkb/MzL/P9OJulBi96awwpfY45WaBG56RIQuLDN1v5Coif/lG
	 AjZW7lE8JHodw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92037EEB58F
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172613915359.7921.15625084236297802566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198c40f6d2e2728163027a14375cd2b6228d1e496cdc8c39955b64c59132aa58
Date: Thu, 12 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726139153
