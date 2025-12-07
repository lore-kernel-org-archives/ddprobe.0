Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2554E3B8D62
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765113774; cv=none; b=pExgB+p9K3/qiCGrC4M7520cugZbG4i3bUNlfzrSgd9nWkhy4GvB/8QkXUZS4KrtQvDlGYEdoAncndh9Q+bYGejyZ0PsgbXk2GVwhVhIbNLeAfAe1tR8p/fJE+EtB8uualHtnfkSHaDWs5RNDfgYYKDIBJMNxFYB6PqcOKIDK9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765113774; c=relaxed/simple;
	bh=Qok6/AWIP2HAIMT3T2YiimqenIyL0ogmDEdAGyEwSSQ=;
	h=To:Subject:From:Message-Id:Date; b=qrl/edi/kBatSUiXHAt/yvPPjGGAuxY8cfkSPoGamPlsC1NVH25v5S6DAGSC5AuYk6Ve0mcHw64a1Oq2od0saCFTdd3Xo0kukQdN6/Ugz5FJ32IHZLQWYHWL6nJmGcWru/tN24oq1gjAjF6ffuCC/t3GcyoNwJXdys1pp9/1wcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ssddraUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ssddraUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72A7C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765113773;
	bh=Qok6/AWIP2HAIMT3T2YiimqenIyL0ogmDEdAGyEwSSQ=;
	h=To:Subject:From:Date:From;
	b=ssddraUbolUTn8cxZg9b9Xe0xchq4UyuuZDnzewFRl93iScSeU0P++0YAgfnSjwIC
	 lJEKY8nxUTnoc5Wq/8i4Vmhq7qhALXv9reI2+tjnaUff3ViUc/vuqvmatJr/Wj3a7R
	 7WEEp2F27dYXc7DpQFA1RKfdpM7GmY2Qf4v9PFyziv78vFbW3eTHb8GKi22ZS7/gar
	 E+GT+6MR8uzJUZfSKNCP2NvZ0dXhk5JLNvWeVBUx6kB8SrstQ4OAKHfI7v6kXFnZ1b
	 2U/LSq0UNayfnwoi34x792cLeR08+4N2aDvpPgwES2qM1Ga4rOuctD2p6tQeC+XXcp
	 zZneENUbsn0WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E30D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176511377360.2883.5337784416457487947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8f609fb98f12daa8b928734e25276368f1b2f58447b0b68ba38dee370a3617
Date: Sun, 07 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765113773
