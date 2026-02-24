Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10656339866
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771964694; cv=none; b=KKLn1Ap8OrH29ujtbhDn4DBWJQKTqiQM4jsHLWKS+NWf1Y9uYIVGFmy1Rijy7Wlg1GgxVa2FFUvT6Jd62VNhilOyA842o1sSxg0c0/qxIGGYEOaTaGRgIqljM+tqTYvZfCp9PqNRrcI61Les6w72BUeTeg3OOijjKIXi+AMdMdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771964694; c=relaxed/simple;
	bh=a8qdQxFCN6QRvRL4fiTctHwwNV4ymBk69DiHFlUI5pc=;
	h=To:Subject:From:Message-Id:Date; b=TYKt3D3Sk+y2VCbYX6lfXMfz0/kj5jyxo9dTPNcr4TpnoV2yMjTl9Pb3AmBtssXJNR9UIO4erAAb+SI6qCQkMY6LAfEw/qdFGvRZ4VXfuOo94sfm1UtWLYXQySQYcf9AYYoa4sYFZZ1hibnG/UI5WCbuCO5x2gi5lxsJVrf9x/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ck+kvtzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ck+kvtzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B9C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771964693;
	bh=a8qdQxFCN6QRvRL4fiTctHwwNV4ymBk69DiHFlUI5pc=;
	h=To:Subject:From:Date:From;
	b=Ck+kvtzXgufC0xxZRu1P4RSAxxuCKijLjcMVCTOj4otZqUnrEz0CtQKJPdI5cUANK
	 Nyl/bCDJHD68n4s57b6hzmRtZ8V4SRa03nrn5V/EpU1lG65Ab2hqRAtPW8TB5FE/dB
	 dMptzLf0y2mBzz6Z1SvJRdnJc9Em0+6Ex4zIGHLb8VPDvmKSZxISeNKhkJwVvDvZFs
	 lEs8n+ruLGJ/YvrfSgguoiVtvfe1kG1fShjZUeqm9MraDm5COpp+dkM6ekhy8rwiyz
	 If+oV68QSWYSA2UiJ/fof9AbvE+41Uz5Tdyq77zoCkYGGLsWwxG8dL2dORMlWg70VO
	 oP/JMvcHyIc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D0AF4BB87
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196469359.15687.12206517551332819322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 402e0ce93e4a6e3c8fedce0175fa9a5e306840e12f122c6472a6b34ecbbdbf6b
Date: Tue, 24 Feb 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771964693
