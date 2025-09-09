Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB5623C4F4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757404195; cv=none; b=tuikdb2Fc2nKNfJeCQ34zU4/8HcTG+g1JxwNy+/KITip7nwrO3ljtxQ9htBRzBUjqQ7p7BAHZIaTGjutKlhzhVwbDDMkLnsf9ghrSwISxu/5yNYwQBBhuunX1KxxU5/QvWwuPl3wEIck3BeXCH/n1rsaHdQNh+aqFnKembd0BuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757404195; c=relaxed/simple;
	bh=dGmILBXT6MCqPqH8gml9mvXgb1ZUgHtq0zD9zYeSias=;
	h=To:Subject:From:Message-Id:Date; b=dbSiV/Kneug0AemeAPZIrqJ0KADohIHWCrpR4GGbK6NMCf55XMpAQSm1xvQk6Gqwb9dPpCc+a2CsUAkhYcMgRHAA5B//PvhR87rJw/CGGNIZW0xBQ8gcCayQLgQX1QKG5Ym+jrudoXBNFcUBYVhnQs8f3o0w8ZZ1DGF2nYMmmtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOpLvlPm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOpLvlPm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5898C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757404193;
	bh=dGmILBXT6MCqPqH8gml9mvXgb1ZUgHtq0zD9zYeSias=;
	h=To:Subject:From:Date:From;
	b=kOpLvlPmcTxCGP50kZ2ULVYDwjOtsrJR2Ayfvxo7ru9hxuhVbZNSwVxWbZ5Xahfm8
	 /mQKtnUIQ0xbdOhBuSnemL+uDVLIxR5VvEMfND30705ZpQREevcqZfCkfuEE+WPK/9
	 Ids17i2PsUoZOsFPx67F0Y78Hm8q9oz2Cv8j7ooGdKEgvchZJ6ZoHylsw5qCJy5DD4
	 hKI4dGt4ESX2RyRHiNvssVG/wsEoFnD7BnL6nfZgI0cxH5OkFc59LL0HW0JHgEL/fg
	 UuN+Xzg9Fx8R/CnSIZUUh+v9+Bxi7prFEx/TCh5RzTRyamm5a6EtGr89z4YqxmMWua
	 zVHJWSO+/yo+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914C8CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740419358.17207.1873701248878323131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25079531b2f89ec7203c69b95fcdca4dc1eaa3ca994ab57d8fea1dd23a94dd8d
Date: Tue, 09 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757404193
