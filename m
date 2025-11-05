Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316C328DC4
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762306794; cv=none; b=ZiZ7+6orQBLXbZ6XOVrjDeTWBHNp2uF30ipzT2fWZU7bJPWsIQ50cXHd6T62nuQA4HS7eabcOmUIyRUbxz7uXt6mif0GDV7Tjd7MuU3D9Q/tRaO60oUxtXrUOJuo/j+w5RLCgLTngzwEk5Rq9TEhPZHfbw4O6X3G9vatSg9kIuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762306794; c=relaxed/simple;
	bh=MXTM/fzJJn/T1Xuu+1T2omQNKXsY47pCf49IleLQuso=;
	h=To:Subject:From:Message-Id:Date; b=TcPYVYFVSLP+b+tFrS8fTidWHW2SJrFz21dby+Sqw7Cv42G/L+ojDvRQJuwjIrqxVyuKBr9ku6p3rpANX3T3lTjQ5ZPvE0ihYoufYSX+VxFY6MGmx54Mx108Feu3ehxurw2NBuYxct68ysNLFXJ77PO5kgUcaC27WF+YNhn22Zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cGka6lpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cGka6lpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D79AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762306793;
	bh=MXTM/fzJJn/T1Xuu+1T2omQNKXsY47pCf49IleLQuso=;
	h=To:Subject:From:Date:From;
	b=cGka6lpvzeQInFsCEdSHegVj54f0U2oqgTZcQJcquo7h+bPkY2O+XpSwOF9KUALLJ
	 d7OzljmmL6N6ctbqRGteTmGpt9ueeXGs5ythUEbQJYDokWmSQXd+GeM50m/9mA1538
	 EwGqAnfCN2TLO3+Aph9qILJfe4X9A3lREOC8D25FJlYpE4UpeCRjvQmOX/jTNN95wp
	 QQX9c9vALusdDpWqkPa4fFBDBNQEkykhnC9cRdYLcrIBauHIvapHXMBYm6vC6lZ+E7
	 zSUoNGq1VVwQyjPrdnu9eIkTfOTnC7ETyo02psJd/6+ez9doav44CtHT5MwhOBoGlu
	 FDbkXrDJZ56jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE63CCFA04
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230679358.14580.14982833302192752311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc77f218eb8e4cc1422ecdca35139705abb373bbf1bcb99459489b07aaa53363
Date: Wed, 05 Nov 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762306793
