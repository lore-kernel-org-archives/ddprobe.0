Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1890914884C
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752186594; cv=none; b=tcas7Z4RF6ETE8+0ze6HgDnlPUHQQNifO7n7Z7wCt0oRw2kN8Ecy69qC4RFJyfq825GApqCrBE8Gvn8pjE1F1+lmrmiMdiLAr0Hku4zdVcj+grUaMF4ob6neZaqR8SH/qPY2SAY/lOl5BsyASj6VmRE39E5BNwuiST2pj0y0XSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752186594; c=relaxed/simple;
	bh=oarL8YWesceD08kXq2yjk5pEQLbWokVH+4JOpV0JXZA=;
	h=To:Subject:From:Message-Id:Date; b=LTGHHbQjwkMyL7EUf1v6oTaaW86DFjfrwoWvPLhQQofmkD70gyMMNR+zrMBdvDLZeIesU51BtlbUwq1yR5iYlAFeAunZMG1jqFbPjtKlA26v5lu/EOj3l2tAFqYtgmwPtW/FohIT73fEJmSw9YdjAwqk5Ap9DIoh/8BLcpnD8m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uj0cFr/7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uj0cFr/7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752186593;
	bh=oarL8YWesceD08kXq2yjk5pEQLbWokVH+4JOpV0JXZA=;
	h=To:Subject:From:Date:From;
	b=uj0cFr/7ACyQoRem6IOEhTVhEUhoVwEhhxTIcMX3xcz6nb/5GxwpPUQqrszHSbFFd
	 yjLdmN3QMCL+A10b04gN8+/YhL0SB7NfvG76ePTbTDDckLS9BZZLIcxeVoaNK1U+Da
	 cuil1mXIYdPKeofpatWdkqmn32D4rJvQxL7QJ/G3Dn8zJ8mS4QuEPIffohvCTPAzkY
	 9iyfwe6sBA2cyrqMw4kdLrduNraUqpTC971zC/vOF3o/ZjSaeXcC3YmOnaDG3OCF4c
	 YS2Ja1FrV2c0sRGQeyNfV5xXjYvVC/i6A4OBureVH9PKLliYAae1SttugMz2YSbc6P
	 2q47tElLeYDFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBB3C83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175218659357.9371.10388567268850382547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99d0260ab0a0dfb236f389901e5eb5d8e67f737788a5f18aa609b83f484a810
Date: Thu, 10 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752186593
