Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2623D3CE8
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774876494; cv=none; b=u/LFjsWXpUHdzqqXBWowqGN4stx+2ZWYHJPzEfM4sY6mRBI2HM/FdFBS8WIY6RHq3G1bYk7wp7CWIGiOZ0vdvA/UWmF69xe93p/edepoVM9VtmO24oUDi20K9YWWo8oWcfaPQ1vjOyCef/RiodDFIPt1MR6qJeb7fqWTmE6SfUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774876494; c=relaxed/simple;
	bh=v/yfyUjrOM8/5Lf4Nxpg09tlPGXQqTIZ5BLSUUK6rOM=;
	h=To:Subject:From:Message-Id:Date; b=vAr9yKhRgNCY1YchT2t+3/0aBRHF/FqInO2Zya68APGNdOaxAoB94WWVvmPmJfowMmGN9BGRUHzNR1krlA/iywcgAMwuqucoU5rd9jIOYWLMo1xUmM3F6Upk/Ir90Un0NIMHnpoMNiAaRwpobMiIRsDhLMiJ+SKZMCkFaj2zdNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KksHsUkT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KksHsUkT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83ACC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774876493;
	bh=v/yfyUjrOM8/5Lf4Nxpg09tlPGXQqTIZ5BLSUUK6rOM=;
	h=To:Subject:From:Date:From;
	b=KksHsUkTA4tdEzHUUoYZsdE+M7JkUfAqjSTs34f/tGv70qjByZ+WoHeKDHxmFe+XN
	 MzdSYeslams0ke9xQLdmCYXTEDDT0KS8eiujCcXY3RNFhsPEWHvxNSt1uw7vtOU7fg
	 Av5468sIJOHBhBqKPOdRcn2hHF+Y6/28rPpn4QyMYiZAyTVjd9PDCYSJ2FdNxdM06N
	 IE1cXfBokZocHjBEnvfeKu7uvB+OYr9LrRmpKhARm1ymqKCQz26Vvd44ReH8vmyyqn
	 RqTKZiCJfejfE9gANdhDlHw6xCgQt190vXT4slMYX2QPV1PuQGiqYw+unOaZQLyO9g
	 m5o8biZ8vMVlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9689B10D14AC
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177487649360.7102.15375912866359509802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1bfa5bbb6c6d27e8c87561fbdd140e6404d6ed2c048f28be0d88724eb61bcc
Date: Mon, 30 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774876493
