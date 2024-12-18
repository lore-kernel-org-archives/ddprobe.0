Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1226719CC24
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734522954; cv=none; b=Tb70ZymeSaVNIrmMYQV+ZtKIGUQDQenGGPPXnBwk+cqt8VllgHc8IiOptnCGRbAG5HtwkiG7eJgjeFJZfBUAjRqMzSBXFnJUtJSzIQKYCM+AVV+PuREpiMalJLv+a8JXQ8EzjVB9a3HsfS1ewrwxOcUNuRT/Wl4pf5W6ZaFFttg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734522954; c=relaxed/simple;
	bh=yPp2WdgJ+gahWFSF5CujPS6FYgTIbCMoEPoaNmtiu1M=;
	h=To:Subject:From:Message-Id:Date; b=K44s8Ri6vyGfvUiqNWnDwM3WX5WWXOgEBW6bRdAjniKXtJRkz+/tqT1QsaWpwnhqqAPtQOgiw9rPfDER2RwDCq3FimGUkjgkcNZpuzxlhSA0zeg92uCJ+MEMRhUZ/hZ3f0p8MrJ5OatlZPduQyXGElWuKElSIsmtTVynjSxUk/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRga5yxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRga5yxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD52BC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734522953;
	bh=yPp2WdgJ+gahWFSF5CujPS6FYgTIbCMoEPoaNmtiu1M=;
	h=To:Subject:From:Date:From;
	b=iRga5yxFd3H738aIRjT7DKR9E/X1kei9frwiV791XfTcUA47lpC2kKSZ+j1mMwge3
	 WaEj6OYpGOT5bQTPZ4Gs1xrQVUVa06ACHv7kbXLE/DlR3mbSSjX1fqMArmBuQOmxMF
	 DTY27AdxmMvIJ0uIPFuMac0/sN6bghEbGhF5i60NXpI7P8kv8BmWzSXh8zfR/siC/G
	 D4owIMeIHa4s/CCDHXZ/gkzyxA4pGLoum2YQs9gEE/DJUpBX4n4aQcFds4gOqXKg16
	 20itJXuEPcTmO+fjYmvsJnr4jSD4I4F0Ukz+Q/4OEV9RF5RDN4KCoQunrYQt2GEsIr
	 9yKXgnL4xsD3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7F2E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173452295361.13642.9805449851859151429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220a566e6e5db733d6c5e8f639db47a151cd25d2a51d68030ed5f5fd7a604110
Date: Wed, 18 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734522953
