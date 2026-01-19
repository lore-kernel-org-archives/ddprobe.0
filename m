Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131D53242DE
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768811634; cv=none; b=HZ1WL9RdOj7TboeIDe/VPQDK/muXQcLD4Am3z6EdD/V7xQmeMNZpKbrup9uka0TSZqnSDXz9io8oSB7ApYOGQVJoVBf+ThYdpwTgsbofrA/C82Scpu/hsyR37uX2qDeo3G1kpKomiO7+ttUQEqj1410NGz48DjpRdrJjqH9AsCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768811634; c=relaxed/simple;
	bh=UwQCf5ypcJ3SBnFHJgvoaKgQ6YMLhMmghImI8exemZA=;
	h=To:Subject:From:Message-Id:Date; b=s9RUwa5K7enDm4YcsevKEM3lDv+awyVTZENNVhLoX7yWXRcezOwpTH6zStkeohhWomyXp/54TY9dxvmmc5eUGDFhdn9eV4d5cxPhOfnkmN3p53odnjhIEyiSONwYrCwaVFgv894VB6ZMPZP/GF4xuooHZf0t5XaAlD5OdfpRtSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBPn/UuP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBPn/UuP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBD1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768811633;
	bh=UwQCf5ypcJ3SBnFHJgvoaKgQ6YMLhMmghImI8exemZA=;
	h=To:Subject:From:Date:From;
	b=BBPn/UuP5mh8K0JwNp5RC9ZLaN52t9/1FRawj5rsWQimBjH7xgwlN7cQtmlq92ELP
	 mbl8+c9UKywQ1GgaZ/HgJRu4rrD7kySVAL9KVvVNrlXZ8wtnRwQ60Qqng15Bbm8i+L
	 PA/Hz5eNAqLSxRJbVUqCsyYR1HT+QYI5Z96s+J6ee5Ml05OYU/FrpEUkw9uwz5Kd/l
	 0RSg81nuBNX+qYZiuYuMv6l/3809CriPGZVbkGj2GBIKt8DfLdxUXOhNBQi/vXNa7x
	 lWcbIJwT/t+8t9rWOK9p8u8GdxKjYvGy6jM7lf+VbehFbrsL6k14LuUuVzTFGI9ZTI
	 YBAoqYviWgOYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D928CCF2C4
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176881163363.31294.10534068113888976820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 483b5749554b007e6df7828ddce4ce1a507245d66fcb38f8fcdb479ce28724c2
Date: Mon, 19 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768811633
