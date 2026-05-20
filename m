Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AD8345CBE
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779293434; cv=none; b=fiDGARZiiUr7yQzOydeoYrhumZCoDfP+mAKInwnDEbrZJKA8Cbc8U0tqLgVOE0PvZa5nD8O+qFkx8W0DEdmbdr/pv/J9RkjgBklPGNRESv039CSfkYfrZdQsy5p+Qac5MkEDWafWu6oPGCT6shY5eiHvSj/bdZLZPyVPhrjBM9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779293434; c=relaxed/simple;
	bh=i9XBE0Cx2mibf2Z8b+BOS5hRrarKRSLdoMbebnOjuk0=;
	h=To:Subject:From:Message-Id:Date; b=NvdV2WX1unetQN9HRettyEZdJCqk7eIJ2w4vFmn0KMGgWVGE9Esn9yM6d3rsndzu8HWq/59JaphMN5iAxcRCLR6HSkEF8SrKpMDoHzJXtDNsDlEpG5l7IA3DBMYp2oqnplEULYzvTZ9g6FwVLefqBb6p5rvdqVMxiF75Cp0vmMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPF3Lwgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPF3Lwgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB357C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779293433;
	bh=i9XBE0Cx2mibf2Z8b+BOS5hRrarKRSLdoMbebnOjuk0=;
	h=To:Subject:From:Date:From;
	b=kPF3LwgycOejzjb1ii1/H5XNf8z75KRxd0DjD5gmcf4eMoP2Cwfj25utrzioo7VTJ
	 OulDikF3Nl/a4EiXm478CbHtogUxyW9nr85gPpSpRs9ZfFbtCPu3JxfeoO9zEWTYlP
	 A9JOuNEHpG4j26FgYP43LMGyEfbk0b/6tR1USRJ7CnQhQ2Ou0xPosh29HtnKyavESW
	 p7gKKVUAtD3fTaqbV97XQsxah23ypGhVNKFH85LkOsukoDkQC2AubqnmrCotBMYMrs
	 Z/cjmwMxp6v61L2qhiXyrkoMBqgmS5Pm/ROxUln6uTkIXlozZZw8BNR7rM5b2vvBJ2
	 AKs+9yR+fP2yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBAECD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929343370.12395.14279447973873409768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9514f9c40c309b94af72445d9080c836a3f701a5bf89f0edcb4f9db4336acb31
Date: Wed, 20 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779293433
