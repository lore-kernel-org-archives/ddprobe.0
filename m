Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B01E305660
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780805674; cv=none; b=SyM4d1KbGvujTrmzD2syAbQ6EvPxp/icV1HJqLeZcfTIhT/3zUGdF8Dr63l7zsVexByF8cIvyrUv+chkz/znBEqedH8vQkGW6HVSpb+QXxGxUnJjGg6FUmjQTUbmSk5WJo6450uA4ZSvcbuU/jITOkFtleOu2v077tokbJRvPUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780805674; c=relaxed/simple;
	bh=E2oq4C/haLzw7JusteOwUxgguf6pYxDCPw0TXJf6XCU=;
	h=To:Subject:From:Message-Id:Date; b=SyQxWkhChbefVkmqEu8WfE3q2oyoIegm2maXYLqlDhOZu8/5ITxs6K/ZkkeveEX6ABhSkydzBZY7TwGOpvY+gDuDnbXpuQyvijbgALX7EVNaT7j7X9wOu46Jv5MJ90Mura+153GsCD+NYGFPrZbxitxt1iKfsIw1wIAJHoBIE8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdPuORKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdPuORKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6FFCC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780805673;
	bh=E2oq4C/haLzw7JusteOwUxgguf6pYxDCPw0TXJf6XCU=;
	h=To:Subject:From:Date:From;
	b=OdPuORKQKJlxFBn7zzSjMDkP0KRiqFHRqc8391Ljbv32v9mNsJSCeeDP8MreomVN0
	 JHUBdDI7y8OeBpswNExQyPTXWSDDVd/yI+dw4D2KlbGKE2zC9vtylSs4r6zO8KDX2L
	 BmywMo8Qj5QZBSTPsVm4pGxMuhHVTDZ0gPDhuUegbNZW8BEnKhhg29Ujx1TtItllC+
	 KbrHpChSgegGxqO2UhTPBr5nEyS22U0mlI+lYUpP1fja379uMcJuayl34a+LWvpBTg
	 Ywne7Z6eAk2p2wBbNSC4pdxieWQfGpzSxATIk6hzKOlfeufZeaHAwcea0OmFx/uwVC
	 kBDSpPLcF6WAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7A0CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 04:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178080567368.22232.1395732469324335835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f9c84bb8b3ce696238fbd9682ed9207ff4765d1ea1e0ef9b529460e4d4c1112
Date: Sun, 07 Jun 2026 04:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780805673
