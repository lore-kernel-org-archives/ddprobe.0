Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EA82DE202
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757579394; cv=none; b=cqAmAwmKTJ8LrQZ1v31qul3cj+uMLgB7N9MLTfuKj/nFu3327UuFVKC8jEW40wwCc3rtCI/m4LSaEYdkCIJSoJ6sn4haS9fN1Zm8SJpwzkGMPKjhptaXoV/p6TcCxoqE8tx6ZIfCDueR/HUZptZhbxVIzbwJT87NSAFNPcybivo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757579394; c=relaxed/simple;
	bh=Rj66ICwjmu92KED8HiitZLnf6Wj2pMucsmwBk9fcxMk=;
	h=To:Subject:From:Message-Id:Date; b=nbkYAtCronW8fWNXEgGPm7JxRMrrgM3PEFYRtq5fns3AUDGT2MmqG7S6zKIP0bj1jbM66lJ7ZPMYbA/g9OHD4A00rdbnYM9fB/Ek/Nwit3ZsU+il8bBWPxnLiDpVZppI0Eby++CG2X9SeInFbOf2enOoh1UhdSYRzjrBpNQkuks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D04Mf/SS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D04Mf/SS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63F8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757579393;
	bh=Rj66ICwjmu92KED8HiitZLnf6Wj2pMucsmwBk9fcxMk=;
	h=To:Subject:From:Date:From;
	b=D04Mf/SS1l96iOo123FjP8NzMjChKSLCUxr+U+d93i9uOb7CDq+RDqgpqUUNEkzoU
	 3ky5gkaUF+UIrJsJVVK/uCBEeNhUpZwoxORe602H1gkNTTNVofvYGKCJf4QjOdGHtP
	 hliDeFHm8g33QOMJlUpYN7Xz4X6BsFNlLoIcG8PPT5jGTYuSQnBDnjLR7Lg6T/686O
	 DT3HVLvb9QpC5oaPxDizbCqa5/ijjxTtiYuK/O4fei2AtTGdhL6p/FzcnzPYzkVH3L
	 mBcgEQqXG8KIZlmpEXlEZKyO0wK4oG6Hx/maDVpFEQj4sXnV4kgwHPEA8vutWnxDtl
	 2kCKnelzPhchg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C22CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175757939358.8470.17136480663151356660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36a24060dd2ee742e5ebc1f2f044100d3caa70fb685b5ace454c72e3e30116ef
Date: Thu, 11 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757579393
