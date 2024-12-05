Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA9441C69
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733388954; cv=none; b=RTnNEmN9DcStE8q4gcQi5rPgR4brXWmXD3H/oozfgen2pnXHkZfW3WyspAbilq5LCbQkIGIE8qC/n8uTrdgMjD23qNY5jpxR5QRB9+Hgd3+hqK046KJCWqcfRx/haqOOfqz/qNO+7OyagSuQmkQeTQp9h1FrushfhuU6GZ7d4jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733388954; c=relaxed/simple;
	bh=bTLY40ZwGsJcFYUbN2Ql2LwyHPImWIQYX96hg9uu6kA=;
	h=To:Subject:From:Message-Id:Date; b=MACCGJ5U2+lHhBi2HkPNVTWSGUF9LuGHqF/O/B3K3Q076YNR2ENFZtmhNnhOyAP2/0tzCo69DAY5nDdDhPiWhucwbJS9cp0guoaBJuzfhKu+28aSRvW/qDu+PDHdmRHT6HT+sEu+VBp5MoVoj25LXgmtofQijBH8UHSYbKh6GBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUHFvDEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUHFvDEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6007C4CED6
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733388953;
	bh=bTLY40ZwGsJcFYUbN2Ql2LwyHPImWIQYX96hg9uu6kA=;
	h=To:Subject:From:Date:From;
	b=sUHFvDEPZL11C50jgE0vgkPQjpv/evCdz1t8/WqPKXXJq+BHGZBwSpnzT3fOaz/IO
	 la0gT+CBF316YUYi8F6st9hhB1lTJPZk3Ww9f+g3pnkU4MDvc34cFTaH0Tq0P3RVFC
	 aQvQolignjU2616lA7aYMW13vwesdqHJv1PbzsviVWv14PFXSNKoQyojNyiGPEKLU6
	 VJ7NWUSYfk80c/FIWHq8wS1QfdAPb3tno0xFxa3A8L4MrPfqlUV1HIgFuLTrX9D7IA
	 qxuKmKrG0P0VQE1Frroi0XcbWKJ8Bn2+Tb4dDbPVAaZpYiVg89t6iboFboo6UP5gU1
	 c2F4WdWfj3wDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6878E7716C
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173338895366.20447.11174215106006899716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 764218b43359547f3ebf3c4f7e467e6980c1f235215e94e73872721e3c9b2e61
Date: Thu, 05 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733388953
