Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B12F4A06
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757288995; cv=none; b=RobYwpLUNQeN9bUHj7k0mtU4wE+FNiCIJTtfUAVdb6s53uHw099tmBcJJK9Et15/Q3UI5Zero1SEyazZ2mvfRcIWQT+sj1y2Nc7E41MAafgS5h5eBldGUeidyWeS+Q4I9rpIZk39MU7IJyw8qbN+Rn6UGzIqrIKah/bNtG/Zvjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757288995; c=relaxed/simple;
	bh=EcdjaUo4C7fyiJWNQ4Xof4loxCyEDhwNCjPl8E51d3Y=;
	h=To:Subject:From:Message-Id:Date; b=nM9pe5ZlOR4bCHA3StGj4xWdYfsJpsMIFebh04KQkVdzmuIjgakys5Ni3015FMTo84COzJBJRYThPqZyLf6yEO3dHtPIWIzbP/K2pC/ucBRSHY3qys3I+kqonoaa+1i1MVwvvDPRgFZGA/HT4uJBc7/bdX50qnm0aObwM+pJIvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uujawg/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uujawg/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E60C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757288993;
	bh=EcdjaUo4C7fyiJWNQ4Xof4loxCyEDhwNCjPl8E51d3Y=;
	h=To:Subject:From:Date:From;
	b=uujawg/nsQc9vE467beIyZMNFevFJOCLTZAbgchw4LElsKIyOzD5ZrDcluJHvO/jT
	 f/nEpryvzp8dZwx6IsGH8TnxHav72oOReCSZ5nX3Nl7t3LKGVDzucQJJjjM4NGRmEi
	 vldnh972rZhKL6/dibICKFqmh8jZmdLy4DGvETviHJfkB2Aw8rfITeuH6Lx0it7Y0V
	 JUYOT/ONxLhpyhrgajR196r4cJL2/c6IR6B7Xhg6tkOnpDWEC5GnjC/tSzqhgohd+P
	 NVEneM1fkc3wvU/TTTI5YA3AQh/gEwGmukT74ll/u8z1/My67CUZsSWQpQEnlEEtTM
	 6mM/DbwgEZTag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CF6CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728899357.12589.13059628683499211430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f124c423abb1a17b8b1813fd9ab60d0a4856606a1ea9e8d744e19ea7d775b331
Date: Sun, 07 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757288993
