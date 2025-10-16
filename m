Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF8D2E5B2E
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760659194; cv=none; b=Td3vgDx3vW2d3cyzIC0UW3Ajomd3i+SrbiC8BBn3lKqzZoIRzTs1HGCG/Mf+i5kgzXT7SZwGvasI/vWp22bDk42ntfIgW7P5OccXM5js/CndZ7d0CphfbI3zoJVC83RoVYoAVkHNlef7P1LgltX3V03XgGhgtUJo41qirfy0m28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760659194; c=relaxed/simple;
	bh=9OrKFgtb5J4D07r3MpymMxj1Q59iIfRK2Pf36qYPGB0=;
	h=To:Subject:From:Message-Id:Date; b=W5USTpop1GPYm05LKfSK4v4ctPmoOyp6Be/CYULmg8EPD0YrnnXD6gN1jP2MPnv4T+ZkLFZtH6YjPLzL0X6qwBZwg/l8HQp8Zgr+xu+5LuZL6PfVHK+a8Cmw8KqgoiFRne17B9tDcTcOYSLMHOcnFA4/TSkX7ztPOqcZ+uDdfyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3cIHL5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3cIHL5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB8AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760659193;
	bh=9OrKFgtb5J4D07r3MpymMxj1Q59iIfRK2Pf36qYPGB0=;
	h=To:Subject:From:Date:From;
	b=F3cIHL5Xn/0uEE7H5YTU7i4olRUmYM8l28hxDfqiGJw+X7QmfYZD8Jw2VecRXAREW
	 6QIO/4Dllxx78ZgLJJ6en1BqiiqjwgEuM/TUHZknJnfQl91BqL35ygFRfgFTyoV2dd
	 Dxv9sRpLznUsXsRmUu8tSUlZp9snm8Nm2oU3rBYPv+bNxclj5mpW/mcMLKAwwo+xI3
	 zxeP6J8YQLugVWV1JHzOLaGiblKCGDVAXe0+5y0bj4Vxe3SeV0hZqQzm1GbuA4NYmv
	 kvQta7HDiXUZ6GaLhOHGU7zli5WgO5KH7bSlJiVKEOXFYsrsjK9cNOhzo9E6W8kmIV
	 26sqKqCgJ04WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C47CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176065919358.23177.5668007637039469971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7c227be57132c0b1c9ecfb0c6bf9754f1a2aae68795d8b0fdc7068a0c3b745
Date: Thu, 16 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760659193
