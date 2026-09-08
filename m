Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5009125EF87
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788844234; cv=none; b=SPluWOdEY2YL7ECVJpoSNGPx5qaZZ4X30XWMl/Fkh358eRZKBYhaUWLJ6UHxqj/90QbfFQA7eqKYwrtsGJ5XPj4tEeZ6Rj60rGyet2B2lC7/OM4llKzWfd5bxizrkG5EkkXiojKm2hDj0d9PyvC/WFC0G/oLTO4dsx7piFO3Ljg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788844234; c=relaxed/simple;
	bh=vt/jH+zGTXFI86oIniU8fEQMeEC7ksrcjuKWv8RqmBg=;
	h=To:Subject:From:Message-Id:Date; b=mpuGVRBT2uBH85nkiEsUqj0tKjKbcwUz7CLUpDeaeKIiO6fdU7Exvv17+orWj/1d4kpifVA6pZFuM5c0mRijYepIjrzyWu7Bf4LIaZwGGi/ahsEX3hTTws2KRzy9ZqFnjFoM9t1AB7kRGAwDdlVDCRRSEOIAmTqHYmgPNMOraqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGdMWYDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGdMWYDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBEEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788844233;
	bh=vt/jH+zGTXFI86oIniU8fEQMeEC7ksrcjuKWv8RqmBg=;
	h=To:Subject:From:Date:From;
	b=JGdMWYDdXqaDbz6ctWcyRzojICHuaiTy+a/AFU5rd1Lg0BjYTK4FCJAGt/6rfo5i7
	 sBTfobUVm+34GMyabQUniZKLLRzMAQMqWxTqWtptqVLnXgqMk5VNlNp5AfIB9ODBql
	 pkMwWs8TzYuCgVfwPpqpVAxo/4ljnyopcTdPEP5cs9t9eV4CtHM7z3oifRfrQOX3HE
	 n/Q/NP0wb3F55CqEhy2KP1IgC50tITsxzXJICMLbPd/GuxbNUGRUJKX0REXqon7d/6
	 2suqTQkXjx1LdXzt9XZBm5X9my4zfhUhRC0Wi3sgEujF08MfjrPgr9JOsnzmHxxWmO
	 hbD2L3cbt2fBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCC2C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884423369.21110.419301846136453676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23a0e3978d204fe34f3f2e80b377c07fd60b860c5bb108bfe280193b176fd3df
Date: Tue, 08 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788844233
