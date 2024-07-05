Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F66133DD
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720145723; cv=none; b=UVv7B+YECLVTClaK5KHpX9aeA3EAaoKMwUJLo029ZxQV4YBXe/KPcNdCjmbkAGVVazbbJ+dYLnom50jUj/TbRQM/+0xaKkZlWs4PpEcjk7B/BrNehsrvl/6cCyvm6Ywpr08n9DGU6t7/S8Ni3iFV77s+8jIZM4o/sn1599lj52k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720145723; c=relaxed/simple;
	bh=BafzhfymcERaWM6xpPHk+v6NWkxb4ClMe8mBK05H6G0=;
	h=To:Subject:From:Message-Id:Date; b=KzDQjC6cL3ji4qWwKQ4UZ8Su/dOldScJvvw8qOjW543X5UgBdrdmXoVT4dwQ0cktIE5l3X+bvMJWeTWEULfLWItc6CULESXBtlIYUppg+1fXbCgwVTj+cPNOGozPd9Mqq1WMV/PhpTKbKLyL8/ZgafRGlKysnFYjoP8QoUt82fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhuwUdYD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhuwUdYD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1E3C3277B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720145722;
	bh=BafzhfymcERaWM6xpPHk+v6NWkxb4ClMe8mBK05H6G0=;
	h=To:Subject:From:Date:From;
	b=YhuwUdYDWopSC7Rey29ip+J8N3Lfsb+NGmpy0dTbUnJJRGHhT+uMEsEswjzo1ypcn
	 ByH41mZ7nSESy6kPbnGtX2HBtoSVW5mgrnkRvT1MLB103neCgO9sc6/pOFI3jmWyRY
	 /+L9RFuQ/Wf7xrjvxCkxX6xHHG8dEBxMNnkCU4g3/vTObq2sXtR8YEAC6YwXYguiQ7
	 xcGEXTb08/CcWlE+gEd3rmGxAgATG6sSSZ443VYFfPWvDAPHTWjMhKXqnFGi11ThTP
	 dLLRpTxTz5BWsOfNw4hE8mHu3pP/nTgdsWNzk5pdbr1jA/J6lpgq9W9YzcNHTNLE9n
	 NeraVsChs9Hog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F3AC30653
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 02:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172014572277.16744.8124243047201580442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42db3ee12d5fae9364464149a932b4e5f5b79e95c99abf5dd6ce12350b22bc3d
Date: Fri, 05 Jul 2024 02:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720145722
