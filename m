Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD942C15B4
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760398194; cv=none; b=M68HHx3hj1d/aZcsDXTX5qU2n6Lf6cFjaL0od1Aw59hCRsNMrAhYf5IigcW91tfl89IiUnkBXV8AG9AudfgNV8nv5UcJPMOHnyeGFbUmAmZ271SWUbMiDwzYhS/RQjkS4SUk5s8URmLpX+j7l8ytR5Its098Fx4PnBhleG9R5+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760398194; c=relaxed/simple;
	bh=wvmsZIYGIZgofVeUupNseq4Dk9opLi9IRXEZkf5KVlY=;
	h=To:Subject:From:Message-Id:Date; b=CWTFhArWUjzVDazNK3I5kErmBDnuRmNYGfByrin1cT+xowDNf0E/bl8CTwJifuytArBZeGA2t++0hOsVqPg4XFGTcEYwWOiF3nvqgh7sSH0g0h9dLWtz0G52yOQMKA+32yxrtFZACkN53xDu/5u9tHdedrTXw6gp4FndRVNOUY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAgAexs6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAgAexs6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0459C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760398193;
	bh=wvmsZIYGIZgofVeUupNseq4Dk9opLi9IRXEZkf5KVlY=;
	h=To:Subject:From:Date:From;
	b=rAgAexs68YMZVGpMaTWxjbufWtmO433ZlcPfnR9oi8kLZWEJBwxrf1OSjQzP0zw7m
	 ImOuC3XgavrXxBT+0z0hUZI5G6dozvgb9LbVhUIfWa0RIz4dmfSOH9k8IFgB0aiIWi
	 IfMHQGaKd0O/O7g0Saosg7fgB+2nDnLB9RDtUDs4U26AAN5fZjuyPI8I+ope5taqtg
	 h/nBePE7Hf5B+LT8KzYMtW9EefYBzLIbm6FBUINiufvuEPyMSYxtuZKeRcHu2aGtEA
	 gs8QDfkjF0Wxlh0e85sfsQT814ON6dFUsqps5FOWeRQ0DVUBhH+W7Vi/uKobvXn45S
	 p976qEPFhUM3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09A6CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039819364.28967.2934004400085972905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4109073b11932db4c031fce8b445f4a5cd692d81f5212886bb67bf1125b7b846
Date: Mon, 13 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760398193
