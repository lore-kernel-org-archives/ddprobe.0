Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25216257448
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765994634; cv=none; b=NV8wJVk1q5yQJIHpjBeAsDMmJnN3j6rkWDFFBUvcGBRvPTL+g/lUvEfnuma9nunitY1nMURG9iEwzIGk0xetBjbrXWB9mhO+8KFDKDWO74rD/sJEsRs4iYI9Pq1DSVEdPxE9uua+qsE3W8YC+DuiJUvIOkF6MbHCHtty8JuYwRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765994634; c=relaxed/simple;
	bh=oVtwldaNiFKh03SkHt87nStDgTZARMtwWAfNs6r/syg=;
	h=To:Subject:From:Message-Id:Date; b=JPzL35ptABiJlkGRAC5AnqMbnF28mX44ujOeVBR+e6erTQ6ptIXvA1X1YcvZPcRGMu+/oRy55UWnizL/6+4zzn+dPbOs64fXMrMWNaJprOIkL4eLje2wsUI/rmhHLVw9sOkrsTyQ+XmPek/Qx+zJXfP7qUk94lW1cdURT4okU5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBaL+4h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBaL+4h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF83C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765994633;
	bh=oVtwldaNiFKh03SkHt87nStDgTZARMtwWAfNs6r/syg=;
	h=To:Subject:From:Date:From;
	b=SBaL+4h4gxvxTqMYv3FaJxf6kNfCv/90XRjx8R4a3CRYJYMKhpjRa17mB/Ucmzdsr
	 3djWzGgMxX0CXX/WARjJmvp/ih5flyjBGuTHh4AA5unDZF0q30wrWOalsaeCyz4ZP6
	 Rqs7JJPAQEqQoFjyZFPCYmJJR1YPqVSxKx2HPcQJ0gQQmYoMb78Bnldk+vhb8mwSpm
	 lHJI0U3NLeUHUKsl2zmML2pyY1MZ1L9ScXgeYVT/rwfx+eHVCdfuK2oRRqXb/KH5ko
	 T2ClFPalyuG6KlMO0f2JDGWRlxb4dWbuaoLctz7fVVUXJ1OnPXsthRmLQpdV47ojko
	 ofe2Ezt2HOZRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 975D2D65C7C
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599463360.22217.3450106127963663841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c832275c59a5a15c58981dae34fafa84a3c78d77a8a3a4f8c7359eada4cfe2a1
Date: Wed, 17 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765994633
