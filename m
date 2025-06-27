Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24ECD22539E
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751021394; cv=none; b=QOHLBtYLbkiFtAl6mn2cH1fMdill2vgu2fqM5m2yqqwQ7AuL3SfAffPdHtmZhkWweAvLD7PEL9npXk4bogpqAht1CfMAvI8MopyEoVWddlrEdcVP/y05cAny7sSMlwChLBiSg8oEhS/qvOuKiQdP+GJah5D0JdfJztTxTxpNDns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751021394; c=relaxed/simple;
	bh=YqVm3uhgRNR7pAEg1unOn0XF+ghu4ugF5dp4gL+jlfE=;
	h=To:Subject:From:Message-Id:Date; b=IjjJ4FW9f00+BiqeB8b8tzvT7LvfkN4yr7nrsKOp4Qqe6XA3nM5o1x25S+jKoPvZTHs0eSyg8QZVeeaYw/epqB94M5RcEhTpikcTjtXl/SHjTHAY5j86XikvUinbYDVhcgTGi7Smh/RqyC+iIq1ciB2IECnQkg+eDwf1NLTUazg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2xG1ibz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2xG1ibz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C6C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751021393;
	bh=YqVm3uhgRNR7pAEg1unOn0XF+ghu4ugF5dp4gL+jlfE=;
	h=To:Subject:From:Date:From;
	b=X2xG1ibzdsORfJg83hJxIVJFzT7Y3uDLMxjKA4RKJ62OsaEx2fSod0Vto3m7kXOPO
	 u+YoADreExVIrjn+rMc8OVOjTVBb4nftYSDWrUrb7DXupf3AqRLDkXpQyF+mgt9Ycg
	 P40GtJgoFJUoouMfjfssYfhwscs/vW23YvDKtSl7lzrBVynFv+xrP3aEd8z7/39Rh2
	 18kVWay4+IMvD62vxnCSIZHxacriaikc4wwIOmnQIeyLHtl3MJ1cFZ/nKq0n4zKGNu
	 fQeDHOgbTbQHeYR+vWY66iFh0IPph3cbwJYwCEAqNi5+AP7QIObUICW7JEUThbC2DM
	 4+y3se8JN6Z+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9446DC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102139359.4605.18094666823873566904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4817344881decc6843fb71c43a60cf85285e65f68cbdfa00150c0e84fb55d0e
Date: Fri, 27 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751021393
