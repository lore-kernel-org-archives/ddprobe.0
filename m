Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01FC12F291D
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762262994; cv=none; b=D9bd+jIkdUfrW+Ys0GhWlVW8zb2VlMzEbXT7zXtUq9tLoHbUUfAo6HcN5zXVQS3Z9De1kSw29QZqcJGowBN92ntZGpnq9qiQgB4EPNi3DKS/UnmMxNxkNkVB1wrqxytYY5xrr4sCHZGixX1bQ70DS8IZKMCxGcHDavpTkwel6lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762262994; c=relaxed/simple;
	bh=hlASZhDxkGFd0bjQOd9fEl60wwGmvvCEbirLRmEJQKs=;
	h=To:Subject:From:Message-Id:Date; b=gp1FbQXS6xpAfRStX9dzrQrFRDIxWdoqs/+WQIWWESSB9rChvAdkkShR3NU24GFqihZUc426Dsd9KIWVoOpG71kSKgNVaZKFyXEy6QT3PMXmftT1snsXLnuuKyhF77j8yv0JaW74mHy9stHYIqfroqvcbLaXrcAWj5pxPFdIpW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Boua0kBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Boua0kBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35C8C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762262993;
	bh=hlASZhDxkGFd0bjQOd9fEl60wwGmvvCEbirLRmEJQKs=;
	h=To:Subject:From:Date:From;
	b=Boua0kBXUcuDZ/kVnoI5RoECkTwGD38Olflu1i1AW4b54PeUz3Hu83WlUA2F3CPhZ
	 sZLZRsScgZr0KA2sfnvQRRuwl6R/r+e2xyvXR06Rt0hFn2i9neec4+YsOJpmxkXRf/
	 BOUeKhULlSeGDJLOx7XAtTOD6VM27gQlH4orTLrkhhQoOCQOgjBSFCiQARE8jegwr3
	 AJ1tpUl3oCLGecpo4Su+/2abUtZhu2IDIoqlXPxPkoNTLMpxL5n/Le3KO2rR0ADc9j
	 dpKsxAEyw7mWuCeCYhs+fozQJDCmM86vTbiS632gZggw7SmnWXaumyxjLUdDyTwRxq
	 EFKIFlao6CZag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F73CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226299360.29718.3123175200193946852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428a2adbbb52b43a7b0c07d5ada81e3458cd7e8b5a43cd3608bdc82d75aa36ed
Date: Tue, 04 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762262993
