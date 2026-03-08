Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132791C4A20
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772935494; cv=none; b=AnL/c7AQ7gld/3szkjmD2zI77zYQyFqs/tDqsiocBgYij6TLdQnK02SVpxUN8Z8TmvuHWwEh9ca2N3XoIyYRmkDSPrw96Oc+30tHG7xbPaK2zOxPeJc/yJaRe/Gth7Nwus0VuHQtIagOLOgi/IT9tH8FQVocakX9cpu12JD3CSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772935494; c=relaxed/simple;
	bh=ME6CtXoyHRfrhjJ6d8ssGX0H9QylYWu5TRlmpb/X2gc=;
	h=To:Subject:From:Message-Id:Date; b=e6iW8dfszxoZ/6FpFXeI/wA8sv0S0iezDMPnSjUaWOElx5tcwWIDHBQJxQxdWSWQIcuXHK5p3aCx+vn2OwlfH/OPv55qMCv+vCbRGLMZbVdlLT4Rvu6Bxq2GoKF7ypbYqRoKHyEyTI8Nn8R1erWtEfsuipRy5UTxutnoRLVa8uM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXN665pR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXN665pR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66CDC19425
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772935493;
	bh=ME6CtXoyHRfrhjJ6d8ssGX0H9QylYWu5TRlmpb/X2gc=;
	h=To:Subject:From:Date:From;
	b=tXN665pRCJXATKpZBoSh0acLe/F9NNQpRElAr+D2wZ3avxnXZFB0r61o5LD4NmyD/
	 t/JruU9X8QnVCItOfLTweLTU0HatnmjnXDZs+HRPYo0imPQV/n/u+fwzvqpnHXKUBh
	 Mpst3UKmaEpX+lNEqJaTBRkQ7pIEwDTd/HbF8UJFx4jSALJx4/eKAnDnG82dlfRdeR
	 aHlNfJNrlv/7PQFZCirZkeDeuhBILs7fhVdKLvOSm1TJwL2O5AEuWbflUJFbasWUDq
	 pKdxc+f8iQnzUz1iFoyxO2MzRAvLiap1hZ9MY0Dv1D4k9Ya7EPAmu5SG+3bPB+bMjD
	 +PTp0XEOLxbzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92158F55106
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293549357.18202.15067556356457757699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0492cf1dbb5b86636a259c848ce7e61c4f9271fe844a55aface18e8c5b291635
Date: Sun, 08 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772935493
