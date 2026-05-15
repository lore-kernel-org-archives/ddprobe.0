Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392653AEF55
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778872234; cv=none; b=Vn7R4z26xAjbXwj9AXtQk2WJOBw/cVs0dqAlkQWElt5ewxZpCySy4tdmfGv5MlhbZWhHhIccX3w5d84TLs2rtQxInuWg4PmJ4PX7Mo10lttbYDM7QhysrqRSAtlWSjaIGW9nY2yuLAIhzlanlfZcr4J63DAJbmgxxPle9xP2mlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778872234; c=relaxed/simple;
	bh=ZDBPj1EHT9XswI7WzYUQ9RU7BPCNUz0dtT3h/kIGp2k=;
	h=To:Subject:From:Message-Id:Date; b=PDqzUBwRPNsD5WputUPfyanoM+1gqvRNeEGpWIJdKxO/NSunhv2CUmG66XnZyAvi4B3L5taKXJ7g2qgHE9JQge/TWKP23SnFk62uOD6nzrHmvKgpPQVjokXolPTWJXss6LTduPLE+RUBkhrzpbqfajlt+0UYPOH5Kb83kMBE7DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PNrgM8UI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PNrgM8UI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36BDC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778872233;
	bh=ZDBPj1EHT9XswI7WzYUQ9RU7BPCNUz0dtT3h/kIGp2k=;
	h=To:Subject:From:Date:From;
	b=PNrgM8UInPnWT2//CfjzxC14EiUZLT941Tz9KoBo/8bJDuK33nHp0p7a4WEU61zCk
	 I4RJ0BXS4TmUKYkPzXfBPffCBa1yyA/xMmAJn0g7U27WE0//+tPfSuv5hCsVN5Giyz
	 jnzmilO10EbwskUzZnuBtbVSA9k//Oiy2PIhkFeQkKaGQrJP1Q7NAg428WOhYPOdmZ
	 Qoqys2Rs/uCMZ6e2JDpuxqiw2he+lGjhfQsj+WFTLfhyozmuOSidRZCjjyhtd81t/S
	 5SslcqGrzWlt+mLTiSM/D8sD+ZWYO/IAkqTEfPvRde4CeS6u5+NTQTiNtuTBPWWjCN
	 LacgAoH9z4r4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC40CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887223369.5595.5991978990290634762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c0005445247e38bfa97f13849248c14fa5e72a96b32d1aaf46804e73b87d02
Date: Fri, 15 May 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778872233
