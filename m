Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 788DC2367DF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789047634; cv=none; b=AnZIJMzLmYT7kAjavCwNHfTFXP3snrwU2KwzZG8z4SF1o1NdaGSMS4TN1swEFouAZ8/poO+6hUEI9F+/jkcMgh3xhZc4mjfPAvwPo5LPWir6sQNYkLBEkChdpc2pjfBwlBkd9psKjbz9vBpm1YWXlBP1ak2Nmem1nJ9KFXEKgVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789047634; c=relaxed/simple;
	bh=kN+H/wcbSRMSaqf+XqOZOz7/6ckh/czUiJNtTlxhz7A=;
	h=To:Subject:From:Message-Id:Date; b=nCzbySQtHCgX/lQ/0A0kN7C6H1IAd2ZP9DZtS6rLPXtoV1zsCzWM7ts3flhx/tkWCOlOKVNZA7CpHhEctB8fZou2PB3qigRvjhGSjU/TNAX1JZsKoM5g5epNt8v6gThC0htCvL/QxAYLMJoS1Paov/hu9LHC0loZv0TGWEq3chs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unOpHvKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unOpHvKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE358C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789047633;
	bh=kN+H/wcbSRMSaqf+XqOZOz7/6ckh/czUiJNtTlxhz7A=;
	h=To:Subject:From:Date:From;
	b=unOpHvKMl1sTs50xrVc3fWT2NVBraDoIar4KFS40/NNfrexyUBL/3eRf7eDM3NyvT
	 NKDz0+3J56ckBARYPIxD2mjKtppC7MITfq4o1iGp4IAlE0X3GmzgesI5+UXp6LMsiL
	 D/TVBNG1dcGX7NIF+PIOzMPrPeyGYr2tdi/PAgY5JncKAZVSaylrU7shI9NQ5EW5/o
	 eIjTCVe5eamsBrWHxb9LC8Z0tUwvYDfmTEfdzpZqz2aQg7x8LblJimGHifZKEbLUkm
	 VcJ+xkn9fvo48vsgiNQ906dtaq8rsJI0Vn8NbK1xi13joqNh6d1w+dVX90Lu8WBC1M
	 8BFH8fG5VdwlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB44BC79FB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904763369.20206.8548287264858227188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7afb49bd6c1aa167f9e49f89bbb0ac7aead1f3992e6a44c349544002a499711c
Date: Thu, 10 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789047633
