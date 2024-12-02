Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D7E1F943F
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733128555; cv=none; b=ApgaJbK/iUqkgscce7dgI0paYMvk7YqzKXXlVDexEidVLhARTHUOnSUuTnJ7AU3P1U+QHjkYMkls2aJiWelhdfSGgbTM00ETOVdcYIWYOQ7GDTr4ey7fI1i2YTHtmlvwlDwSwBxmCumxky6VWTBZ2VoPnZSH2MvDLdTXDo9mFHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733128555; c=relaxed/simple;
	bh=7O1msgNIhF9I8uB1Mt6QnsnLh0fFVfvN1+wJiqbmp88=;
	h=To:Subject:From:Message-Id:Date; b=kbaRPF+arOwKc9XNqJ9tjzP1MckKXb6rIRRpcci5ZbEvDZyWiywbnqpS3v4TpK0o87tZokZbDWzU6/ud4XqbGBZ68enKYRmNFMjlVGSlySMkpOX9/MXPq4nI/Bu9Deufq6z6S+lHHhHpKnCxXHXuKGSJ6rMVv91VN8gW/SM4ai8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDV7Kt6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDV7Kt6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AF7C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733128553;
	bh=7O1msgNIhF9I8uB1Mt6QnsnLh0fFVfvN1+wJiqbmp88=;
	h=To:Subject:From:Date:From;
	b=EDV7Kt6XGDDXDX884Vm//iLNfTppLfIuwsCyT75G9iPUBk4uehHSUdsz6h1Nmmop4
	 nXHQ8OePSPS6G/mikh+YtvAHSXcQzqyMRLTSTOkugmkBWtS5sLFEgHTYanIHzTxfy1
	 GnQLMQLJXLrpTGdFgvryp7/gvLCWc3iwaS1r+2Xs4lYfAQbV0mM0rKqsWK+VFGIU9y
	 UdPJ61P1rDa6g6eNC5j+zyL2G3plDGqQrs5a5vkYtMwo8lSBBryIrcsd9Mo2H5ZzXi
	 hPLvyZtE3iMmV84YaHC+cvmbNbxPrCz9JgPIkT2tXeSNGkmsOw3RItfCsVordzzCw/
	 rwFzOX8EE6waw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B4CD10DBD
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173312855359.13095.12268236203996902101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3e143d288c43218c6efc9eb1d3d278887f8e57f2f1b507da0ee107a2f12d25
Date: Mon, 02 Dec 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733128553
