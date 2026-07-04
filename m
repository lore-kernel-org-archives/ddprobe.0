Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FCC73438A9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783153114; cv=none; b=Uqyh/7Z42Cz0N9FfKzhNIhXaHyZoMie0CD5Na6+VYYAsYzdgwkniO/ZUCBGds3dWZxSyKEvulGFB68SS361tBMlLzYZB6+1pHjf10yc1FLaW6uAaaAUg/9Qb4O2tTXzG8yucrUlgflfN8otfu4txvhlKKWeXvbWdaC4tsXZjNr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783153114; c=relaxed/simple;
	bh=um8ocWWzzkWlD5+BbBn+VSn7E9lMqUrZ++HkHzJ4F2c=;
	h=To:Subject:From:Message-Id:Date; b=s8/SbUpEosNCL2rwCBNv8LWYNSkgMWr7ipNrd29FGbxVNTK7g3oAnsVsmlySGXmAw5qqJAsu7ZOhctHQFWaObT4sUnR9OVxXDEhp7etyBr9SdBN66RrH25tcFtpIX7LZEa1mwpIHBJyyzmje2N0+M5XwZdb6fqfEPvfgvL7TP7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhstCEs5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhstCEs5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA860C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783153113;
	bh=um8ocWWzzkWlD5+BbBn+VSn7E9lMqUrZ++HkHzJ4F2c=;
	h=To:Subject:From:Date:From;
	b=UhstCEs5t+2O0OLXGnwMtnCscZLYXgq872CyQF6f6o8EuMDH+7TkIqddDONpF3VVf
	 sHdosvxcEWGAVKLb73WkUWxnRBWZvOtFL/seInf+FIrOhqu9hUtNWkK+o1U8IESAlu
	 fPshhUeBnOWyv3WqYcVRXV5aT1Rwaffe/T+kkdsx8MThHzAvttr4RF1csz5c+FobIs
	 IAlVuvlfOXL2jh0sqxg44hOby1G0TPWNKIzmFEA9g3qOzkHStbFf68ys3W07WXGQOa
	 DGE7FuOlIdPOskaxqRMq1N7aeCOaOUWngq22upZNwpfY4E16Gz7ZGesSUbwKqRLFq9
	 EPxAjZbN8DnNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A87C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315311368.17284.10869380675231091036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188e41e160609b35b46ede45098317504d1212c7f47b6ff8e5344cc39fe566a2
Date: Sat, 04 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783153113
