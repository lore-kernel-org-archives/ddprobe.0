Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098A0257841
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762519194; cv=none; b=CD5RAEwPirciAu5Abp6yMJHdOcZWzZIIntCN/vE/tLT6rv3xEHt1sfGmGGIEnWVbHJAOtY6HLnNXaMBs28vjSsAfL7h46g7Zdnp76pJRSzHRmhXMGdV0k9/h09EtYUP0I556p530RxQda1URaM7QoJ/3ZQakHNi7PK3EapXd/zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762519194; c=relaxed/simple;
	bh=uDgwSlT9zhVw67yyb8udid1g7lXiZRro9apKkYzmBsU=;
	h=To:Subject:From:Message-Id:Date; b=FOEQoGUsDV660lJl6tRnSdLLsJXU564rEQQlHmcVBot64jI5ZeVxwKbSpu1ugA20qAfFwpXkbmsKZXKkT2YUDWbVx+WAzfPmfFnyAQDJzFvr68uZSlw3Tk6EMx2fSesdKNeOQVo4QRmkcwTXnxObEJ1h8tOfftZ2lNR/BunJhqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAqe9KSe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAqe9KSe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 993D9C19421
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762519193;
	bh=uDgwSlT9zhVw67yyb8udid1g7lXiZRro9apKkYzmBsU=;
	h=To:Subject:From:Date:From;
	b=XAqe9KSexc2/PXlh0gIXU/FdjU7Yu+mbvPNKRhTF1byhb1g8vorVyrr8HiMOvC35Q
	 kdc+kbwI6cVbVeFDXB+yQtIEnG+ly1nVd55OfX3RARpFFD/jw39yXKxUNNCZjNL3zO
	 VK1aBXGut774PpJxD58yMCV8JPhPTWZeeol1EbWONWjHROYIWeuygxxSytdYdGP/Co
	 tenb9XctSlmQLlibtK2ai00sIGeYYpa4tcQjLJFikTogAFsASzAWoJ0j6Dgu5IbcMx
	 uR9J6vJu2cDy3oDX9wkDA1p2fuQjwSoIfleyoMduh1LcMgx/idp2asFpEDNhOG2/Ea
	 v4BkJY2TaOG7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F284CCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251919357.7766.3823293775481110082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee97affda283d6bee2400ca41935bfacc70879273878c13c45bfcfee24ab831
Date: Fri, 07 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762519193
