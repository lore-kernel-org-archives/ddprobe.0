Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B40E2B2D7
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766483034; cv=none; b=pNeMOt2j5wziEooD79w6XFqZZ+gGiY3QVZMqBXT9AZ41cKV+fkEqNV2rQHR25y9g9iRto7SkDnB7OBp+mXqIUZXY6fm5OBYFKSDEZZhjwePQB/ogrw9v29pihj7anqRotcC+vvK4TWIxQgUcGxgd4a8CMV3nX1y8U6covkwEJaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766483034; c=relaxed/simple;
	bh=6Y4+rNPmKMBrLkA/NwgaQPDbuUWWM1gwtlC1Sk6Orss=;
	h=To:Subject:From:Message-Id:Date; b=N9sQhVa4uxSMTiRXcaXVLtWtyfjczTGF4HDWuTcFXIaaxwcvgN2mfSJux7hoDGIXDTTqQ/H35JQDAHqXq9WlnDVAqvFGrZASN8cum1fBMZoyaK1MdJypSiX9ahQlad4l/99x6D4j6Md7tln6WAroKpjmmyLmUypCOj3BwzbLqg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmIGKmd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmIGKmd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1964C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766483033;
	bh=6Y4+rNPmKMBrLkA/NwgaQPDbuUWWM1gwtlC1Sk6Orss=;
	h=To:Subject:From:Date:From;
	b=CmIGKmd0DFL7qcuJ/VMQLT8vi8i2VaqfU5mDkO26ogYC+IRO7NflH4mf7kH5nGGfD
	 zdur1fdbm1XWCkQ8NLzzCLKQhhdCH0QJGRHK70WA/aldbbuJiz1Mtg1cWd2XSeyWEP
	 cnJvnsV1upNZR5+rJ+BfJnRUri52pimxcnSV/u8MF9wv7SSJfFJKDyE/AOa9M94Thd
	 /b8EmSc4J9Lj7rvAX99E3Q6biaq6K/9GsYdGfGGghGk7xfjFQ5nMsUDcJkbwiLP2Qo
	 HW4cMkM2bBz7GT4oVqfTpzOYYMp0q5hRGqHNplRRpj8mJ+NBPwmIx2RlmmHewUe+hQ
	 ctMB/TvXdm8Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B05E6F078
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648303359.8427.8021944692853230153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4218af42f015303d0517d4d7901a36d70b8882a79189e089fc504d111d392d
Date: Tue, 23 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766483033
