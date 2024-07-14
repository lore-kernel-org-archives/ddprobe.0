Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D55E4204E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720963223; cv=none; b=uKwej6Hu7QPxiUGfii5HmJnIKiU3+nl+ezxvbVbEG0LxN/IyZaiGBvsQLUGBYa43av/S1ZYraTenDro/1nonkylRQlSYixFEFCpuwMja3DdnrobwdyRCB71R0X48QMzQ6NIGuhJpuCl7Cp302QsxszVkHRbbTfg7JHBwGUNHZOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720963223; c=relaxed/simple;
	bh=+kFw7Gas7gLUQV9GkKW2w4ZeIFv13ClC6bsqtm22Cfg=;
	h=To:Subject:From:Message-Id:Date; b=ISMRiUiLKV1Zw7uXIpeM2IWRMKQgJGul6hRzOFnTNjOF7LDC0v51Jro03EDSmJMtp6yRBTT2i5daMt1X7iCo39WUK9aFb4RFIQ+vtRxeviEta++GYJESh+vBh2ylDqGRqQIBsOH6wABUsymQM0GbNTIsHvNRNEXWIh2KLxbUtpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWzgtNHw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWzgtNHw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA91BC116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720963222;
	bh=+kFw7Gas7gLUQV9GkKW2w4ZeIFv13ClC6bsqtm22Cfg=;
	h=To:Subject:From:Date:From;
	b=CWzgtNHwBucR+1hmpTNx43N4mWAxmpGivK0/DbUDP7gdT8LxQmVtaSDa09xQEjPa8
	 7gpC+LR1OwJnJ1IfuGYLYSvaSjENBt1HpfWxQzIC7oj7KUwM6JUa9nBzYELFatjRvC
	 U/5U1/2Osxv4+2nNtlJIYbTkLwNEylEDtFOE+pAjVV85OJ6ytNs3XrHeQ51INT80+Y
	 k0fsEEPByu+7GENpYBlkbhASfIaVh4ZAbiyDV/d8YaoAAyK+47EUO2pgD0Vg2xphk8
	 A0URdSBpfugYYFCaFUYzYXXlC0mXQf/tl+taScj+dRcR9TxnwvV64G/sCc9JKgdMeU
	 ERH+YHmzrAmUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3347C3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 13:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172096322278.14509.3404274730456062316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d3e8546c812321204e77a4912ef55e85d816e0b4e222ec619456d191bff4ef
Date: Sun, 14 Jul 2024 13:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720963222
