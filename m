Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF05F4E1C6
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711451897; cv=none; b=NXp9xm1EzJ2bSSD6UrLhxji3H8vpT2wQ4nryviRAQgrvG9b48I93zecpp9eEVkRW2hQjlJ6HvdzxItKWbLbywibb/MXkBPaJLZVWo/VWAN04EhNru62mVQWC8Rm5BXhU1i4OsVkzYhljZsg+QS/NxrSWEOwigVAeYNcK1IbSxUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711451897; c=relaxed/simple;
	bh=N5pau6uQlWAQtD9+VbVw8bxVyucF5NPn+Xmy4mqrhz4=;
	h=To:Subject:From:Message-Id:Date; b=jWrmc2t7Os5wt/BKwFxjie+fczcaqEJ7WWklfItni8euvzkGHXp1wUNzMLEPSl4YskrEgfNpUFfEZPCkJsbgs1EZlLcOAsgHd823lklv+xrkZEQAtscBt6ktwr7YVWqPN9n8sCBkMoqkyEY6lNUqowIbfrxRGpvl7eceBsa0L2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuNsNC8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuNsNC8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76138C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711451896;
	bh=N5pau6uQlWAQtD9+VbVw8bxVyucF5NPn+Xmy4mqrhz4=;
	h=To:Subject:From:Date:From;
	b=LuNsNC8OKWEqhebj2/HWgKRhsYs9yVdiMSyLaXxWjDnMsvlLT4efqx9QH1NQXLMck
	 BdQJcivqoNZXnz23GoZIxqmVIGhK4UnnMkUxyEYPSDc/y8rKQIhnyD65Oi788Vof7S
	 iDW5wxaSALBQXXCG5J5R1nFVE7+ZSun6h4BtN7bi1uc/zhRd5BZGlaSm9vi6TWTU90
	 tcMmk58Vm/TxlCDLmY+5T2uiPM5zvAzs2KAOPmxtp7dI00f09ZZ3IViY6F4kU50qMt
	 lLbLBT9k7AtFZYhIDIDi38y48wt609T8iPumNQzcpfuTryRKNGT0E4TLar8bv2O9kR
	 LI4dbf/XCXUtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CC7C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 26 Mar 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171145189638.7248.12243781240156159456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b5a5dcad58abe5e165d9d93cfcd6f42001812b63ac155f5575948a6c1f5e45
Date: Tue, 26 Mar 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711451896
