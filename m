Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2226C3016E9
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776528454; cv=none; b=FJ50CZ6h8si0GDiYjmIwJQYNISX/m/m6+vnie4YcziWsoWCn+YQaulGVv7J73TaKLiRqu1SHOFspkhlZBW6QcUppridun64d6li0+SrUHXtXSX+7tNXhRqY3CJNUNGwV1sbuy1Cjwgh+V72Ef01+lwmUplCmaGA+TYmBHASpZJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776528454; c=relaxed/simple;
	bh=N1hl1XteodCgJqMKZ7IBw0WNIkqrYZZQn0jgxYKoFQE=;
	h=To:Subject:From:Message-Id:Date; b=HA95v3DjZVlaLpWGMKnM0UnlecaSqQD/st4A8JW4iTiJiffypGRu0+jvCIMBSeYPle2XbH3IW3PLT72btd3Y5SQ+Tl98sUu65UJEuvnJk2GKmqcdFTaGI8gGYxFJ1tOeeP2GJSFfmmZ5cH5zBi9nLDZZGuCKu56qPl1hIcxIdxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Og39xpuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Og39xpuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4C0C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776528453;
	bh=N1hl1XteodCgJqMKZ7IBw0WNIkqrYZZQn0jgxYKoFQE=;
	h=To:Subject:From:Date:From;
	b=Og39xpuJFIaYBwMHmSkUl5vnqts2aAZaL8QOdwCRuiuUIeaaNMCp8ahto3t/s/DlK
	 XHCP9bS7HqZ1FB5vlirXTld4uoBCjtt8irJVxYf2uPEFIPAn1z2RTtaeI/SEfDrC1p
	 gWZ2Vg6XYJuHXathSv5MMnx7DGMPao9B5r/UomZ/LHFe3ZzHYv8lwYrGaccQMyQAGk
	 4RIA6ZepZZxsbNCe1VAKMfs99+mqI665Yq2iRsLqyMzpdojTg4TEciUVKHsYqQU/sW
	 x1yr3+aot2DR6BI0YfiNKbK8JdnkyVaWocmGNswbfK3U8/UACbNecDK8BLi0b8Y1yW
	 ZeB5+TO/rMWGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFA1F99C72
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177652845368.26924.12769774550161164433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a361e65d7526e2e2c7a8886f48aab2d1e340cf8355173e8d0d090d593529bca0
Date: Sat, 18 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776528453
