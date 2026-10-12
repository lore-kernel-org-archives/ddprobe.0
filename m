Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312533EC830
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791816034; cv=none; b=MdUUFloWzmJB0rli+zVU2rrlWeky6x6xxCx2F/c3p7tXZ7EvEmK+/zLGtkl53yuUurNjUe5V5eqoGWuW2C2MZaCm54qkoXkrf+c5tKD5GPxPMtGcXkuyIk/4YFTKnbM6UxGOCE5dUoBC5R06MhgKAc3dx4X0RH5EAihfyWaviHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791816034; c=relaxed/simple;
	bh=BcRBXXMl0yfw+9PByZOA1rUrAd+ZGXIlEmiKcYHjYaE=;
	h=To:Subject:From:Message-Id:Date; b=rQ5EbLeIml8+8Go8vSX/j6AongzsKLoK2Qi5dyUUNY39prjDERd/UTHEM/h8FoNiIL1y1BzQJ5dp/QF8jnzB8w5eMxuiYm2Kz3E1ctM53KUK2FqJJpMPZRzIrotJWYh7HqD9+NhSqzb+gC2mpjEcgH+abUJVNJ8qTcw0AEtpcHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3bEVm0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3bEVm0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF823C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791816033;
	bh=BcRBXXMl0yfw+9PByZOA1rUrAd+ZGXIlEmiKcYHjYaE=;
	h=To:Subject:From:Date:From;
	b=h3bEVm0cstPo8wLV0aiIQ770oQsHqR2vB0Aq4Ghc+9+SxpeKTH496MIJ8OLg2Rb6C
	 GCPJomuyaxDrJt7/nI8d18T3iqwFYUzMREQdrRGcdK3sRrXTfPksoacM0BAoKAbFmB
	 V9JM3WpWCKVDE5zApUefeDVSpW5vPoSof/ZHID3W5tvvkEQWTLLCQH37GkgMNL0cCc
	 OTka0AveEPjfEI4YsYh01/5gPvcAo+DYnztxbxZRLunk37s4MTMpMJZiTBxmWqOWNN
	 fihsMEBjszDNrJEZWhNE0CWQ7lXg99DGPXno+wKKUckEQ+xRsfcV7GrsJThx+LlBLk
	 2Q87kbTEuuGaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B55BFCA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181603373.11140.15070846080937914278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b480aaf7fa1e1a939eb5292452b97aaaefaff23807a66782ddfedf88062d4fe2
Date: Mon, 12 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791816033
