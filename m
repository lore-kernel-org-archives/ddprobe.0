Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DE928C011
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753090194; cv=none; b=EvVLqYnFRCtli7Gx0AeddZudWBGKDS0GK2KC8bzxQMoH2+UfKq5QXGIQATsvuHQqcdfnLVECXcu19rfzuSqAnqgx9W//WJJj2rm+eIT4YaY0/RskzA0mzU3hr7cyuBuZNnzjWyeyVD3oQnM2lTMzridy564MiMNEXUAshELDps0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753090194; c=relaxed/simple;
	bh=O/mHQu1kshPFfNADHFbGNWHqGU8acW7PTjvt14cRvjI=;
	h=To:Subject:From:Message-Id:Date; b=prEpNFlzvS+jB0fkpGeyg8OBG2N3VyDrHmPnIXHize9qiCptVfxviVcttgu/Tti7DpqF7ekJ4r3nAZiSEWG/b+uX5P7OSmlnOMl4c/BPxbmxADU08hBI5AsOg2FLfjXbSrBselRhINeJt99jTfs5NVxWJZDmXSDfhyDBRON+kzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArvTmngu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArvTmngu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1601C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753090193;
	bh=O/mHQu1kshPFfNADHFbGNWHqGU8acW7PTjvt14cRvjI=;
	h=To:Subject:From:Date:From;
	b=ArvTmnguXSjMfsaUjGfSOfgArD66pQUQU2CxCQtzo4ls31BAABhNK38W9IMrwqZHa
	 5dtsAzMC59go0Ax5VySYtsB6ro4KywX5erRSHl6vGeol6ZHNIrk55ouNHi8r4O8eJu
	 eENtgiD12g8pI4d/4FJl/u4jz8IvBJLHiR/D9knVXZ6bzScsATWOngDe38Fpsbkacd
	 4tyVLva6zcyJ5zLeILSpx+2b9QWGLGiHOrcgRLDQ/Ti7xX9asITeNlVBTfW5Ab2ci7
	 o6hczviKum2fS8oP6Kv3/q6vbE6R3Nqtm1jrkajXWFIXumy2NcJGMAFKqzElPHz9Bd
	 +tKp+iGMYmkDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908A6C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309019358.27203.14260060739283467290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe1528a31ee80da48bb53184576b9d24757a32d0c98bc808a5c79e473b565fa
Date: Mon, 21 Jul 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753090193
