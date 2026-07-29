Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F52D2459C5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785294034; cv=none; b=gC4bVTNzhlByjbBh/TfyC/KTnW47sSCGialYysGy9wHQ3Qh3cNE7hIuvlI/YmXTq0jCEJ0tdIKfTVhzZ6SI19JXJ0y0gZBAAu5JPESv2OtOEdmRJd/Fy61JbJrtn9Wq3ZJXV8H1J1Eh81rgqWs7P0kb9IEWHZcuh15BaRu6iFl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785294034; c=relaxed/simple;
	bh=bgtOBrjkdrJImaKgr9asFZJ0WFo4hOsqjmImOrM+B9w=;
	h=To:Subject:From:Message-Id:Date; b=S/2zUnHyNJRinl9h75Rzb9QXmnVUi/KVmkELgHXUEStcly3/2+91BWkQixmyf2CmMnuYMWWjWDXfJI8WWBBJW0UGTr+qM7iqAaaE6I+sH0wlXbuMZ05VEB+q+aLbT1/kyAAvw8RMLrvhmB2O9XPzteuCW0T5YJ7LsCI529vAVoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcamzZ+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcamzZ+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA3DC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785294033;
	bh=bgtOBrjkdrJImaKgr9asFZJ0WFo4hOsqjmImOrM+B9w=;
	h=To:Subject:From:Date:From;
	b=BcamzZ+w2024XWykDrFq1EKyum+dY5eS/uPoWd7PJRZP3w0AunsKuSl24fB4fuIfN
	 mPFOSHa+dL65WXSvt7K6tmtQupD/AdLLunOgs1nw0r5C8y6MKRe/KK44gz0gtqU8ye
	 genJRcLg7Uy4oeT8kq8P3ddu17wk1rqqLHBrbDbRY3gJ/AYJdKNAuKQkdwAKmShusD
	 7GOoH4GmoN17t8/69Pqk2QtnyStvE36bE7NCP/sBYnpMZr3eI9OfpKEEoDWioTfl5/
	 Hjc8gF2Vymq5kgEj3k7nIW+8BTaQFT7mSeYWTNsWtdqK29OTVwX03FGVSTTC1TGhT7
	 qKXnc4kLoILxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFDCC54F54
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529403369.5175.9209379071388356653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296d34f1bb2768becca780b01e2ab44afcab5f7db521589efc5667296acca1d5
Date: Wed, 29 Jul 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785294033
