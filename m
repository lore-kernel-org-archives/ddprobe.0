Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BF917F4F6
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758635393; cv=none; b=VhxrT4P8Hq98xlHo55AuQBWbOxupDAhdVXF1tX9mZjsw3yJC5Q5vHw/N8a2TJlY//7kbHykWuFjeVIo64zBVs4WCZaaOWdYUvkwLUSo6QUorRS8tq17eTZxnUvj/GUqjyB6VGeZ7QjNtPUMStHhjMQgW042jnrpVoSpYXm8heFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758635393; c=relaxed/simple;
	bh=nOa3ur2CmsbGkA03xkxrOMFzwESOLTDX3S8xxF7PeGk=;
	h=To:Subject:From:Message-Id:Date; b=HatghX167fG/iUxj5qYuKU+evSYhw009QBL8sNwFQBABB9pO6S++KEVDagYZWX24EFu9e1rP2ThFsCzJkwOs1hRZ+mMtfM2vRuflQZeZboOoo8zToNEs97vbCsZqW1KLNT0RUNpxAqNmmV1353aFUBQ5i28sSRM8JwafdaPb3Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKHYigY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKHYigY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3433C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758635393;
	bh=nOa3ur2CmsbGkA03xkxrOMFzwESOLTDX3S8xxF7PeGk=;
	h=To:Subject:From:Date:From;
	b=WKHYigY1qiS6TumAqiPKeHCmnojiY3yMLj/vQvtFNWkRx34JIFI7vWDIDsyw8DHi0
	 G9oMhjXicBOaCip01+xeETvMByb0z+ORH4NmaABs/OG4z/WD0h9ypPBHsqyJTG1lQU
	 U8VlDII405Wj3LCapXuNowjC3RnElEzLp/38CFf/XaoLVjMJUE8/tV1CXmhQOK2VMz
	 WZ8NwECbV1sIyXZGwPN4vvhJP+ApR87qfCzsbh6Pl9uh3rUhyt75BSLnFUmj75Dw3s
	 wgfQAL5qzcnQHVKbJnRQWAQpzoHw++v+JeHPNEnmrZWRHd+Vph5f6mFHQj52b4r5hI
	 W87Tq1fhGOPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC19CAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175863539358.15444.14742241955822612229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8520ca692bdffcab6831d6a5a349cc9f37b0e6334ddba7854af7214678d9e477
Date: Tue, 23 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758635393
