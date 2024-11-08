Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C686D192D7F
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 16:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731083754; cv=none; b=iLI/4pANwJ2+Yf/j9EnbrfXQu7ZKsrlOY7PML8xQfXMsh8eMaUG2fMBQvvwX9bn2HD6s0ImTRWTXybYI8A/ksKurLNhqzQlNDA8KBSoXh2o6eLV1Cil1LsJyTvyhxHfYvemFAeLxi8Rwkmb36+I+sN4SSVwzQ4oTZGp0TUj4K7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731083754; c=relaxed/simple;
	bh=UjfI2TqFidmSmmf03d39THhliX3tURVC8b1uGq4CVHg=;
	h=To:Subject:From:Message-Id:Date; b=rYJ7R9iPOCS4pcGUpDU+6dv71sOOrKAFCGGZrTo2Uh7KNT8O+G23npOJfB3OcscUcLKk0RjSsAycq+IXC0KefJLWcnoGj5A6Lxy5foAmYKjs8Pw/JNVZUpPNllyWLus9JDc/NPCsHkkddPsQb/5n28Y8rl71/aQfcgzDL8Gs+GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNIVBA65; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNIVBA65"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA3C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731083754;
	bh=UjfI2TqFidmSmmf03d39THhliX3tURVC8b1uGq4CVHg=;
	h=To:Subject:From:Date:From;
	b=NNIVBA65n38jNgEox0KpcRDKpX7lXTEchTc6y9qgRu9+efyMuQaK+siMdU2nWW6Be
	 lsaXBaLmU+3MCH/we2kAFleZOo/8smICqaBeKTQIUOkm6h7iBFAevEEcwfXFet3i/2
	 GfT+5m76BiU2AzKB9qabMuyoo2rC38jSS//CSowcBy8LXwjD0NMMB2zM/zCvInU0qW
	 HBqPU872TNilrBCOZ/XJTWWloNaF1xQZ+eZKTW5tvFpKRWu8QjEySOHhUZjaIBDn4e
	 QXM0v+n8q0El9wNd7MTaljbg7z9cNRkoByVk+B4iYimWqdnNY/JCZ895qKc6pryanI
	 HLA7RZAUrruiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BD3D64063
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173108375359.28255.15618080493690275791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35934225d1581399ba9a0075c320dec780cf5730a08c60fa4e60f5878871237c
Date: Fri, 08 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731083753
