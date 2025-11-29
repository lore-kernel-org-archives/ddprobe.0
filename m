Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D15E1624C5
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764431574; cv=none; b=YA8ViIQL3GJ9NHr309+sVIX/IuUkW+DHP2gfmNugppT8YQU99jRE9YPe3FxgoISuCL6mWSJgZWGHtwiNL5pQdBI8fOIHVARRZlvN7lmAY6XIv6lJ0qzCA5JVJtH42dBzuaDjg9jN87KNUEDFTZdubJyG0cVAj6ybyJHZs4+9ffY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764431574; c=relaxed/simple;
	bh=S+/NJOKiV/lZwnVsTt1TeX/HvcerG3C5PoO+jiBFHik=;
	h=To:Subject:From:Message-Id:Date; b=DnUS1+lMQyCiVpp9TbRls9zloo+yaN0kAGEpMys2ZWI/LFVP4MNPueKctx3r4VEAW7f+56bcOJzH6j3ReqX039xhKBsBY7Ot+JDH+Hk1QDZkkXTP4g+miY/3ca7028A3iAlcO1eTF+kwvSf7ouqKDMCZ9i7zB8Ao/DWVvRW25oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=US23t0Cc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="US23t0Cc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE2DC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764431573;
	bh=S+/NJOKiV/lZwnVsTt1TeX/HvcerG3C5PoO+jiBFHik=;
	h=To:Subject:From:Date:From;
	b=US23t0Cc0S0K85Eckb8JSQGU0y8yCtWK08MeoIqYaTosWvqcsj9N2PZvoA9PscNYd
	 U/6YoC1blQKOtRv/WWy+aCQyOmgeennSl79mG5w3T+HIVlxkkxoxW89prP5LUsJfz2
	 ZetSkbVotBinyQGAl9TO525Zsq2QL73cBtWT+NBieKEiLCHEdtEoia42EER/X/ZogP
	 /2xRZkSqZdA1YRlX6e1hbP99se/71BJbz3c9l0fqnHyM0Wzp5h77l/gGkuq1crePdv
	 RujDnSm/FO3QHZqlJjaSqbe9l4MBZnDEidlzybCkwxBdWzy5xtMjkgoOMX44dneoDM
	 /bN7CXxhlLUEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972DECFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443157358.2284.2247272270930385436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0960c49294155c7a6838a11079a16ceeda10706baae855bdeae94e82942f372a
Date: Sat, 29 Nov 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764431573
