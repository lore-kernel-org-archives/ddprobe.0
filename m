Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2315829D27D
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773348894; cv=none; b=kWfTeFzQ9HawvzHlShUG0hRuezmfMh5Sjqe6+Z7hxI3t4zp7DLHF3jU5W/92Ib36UbzsXTJAMxX7N6rY6FEZwhSRLSDTBK5Im3MuyjZl50f+3TVVd8eKrud9FsGkn7tBEs8bI//w6eFks5nXvJoI5QKnS529rohUwFPFze60meY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773348894; c=relaxed/simple;
	bh=eYZzQhFa7E76dzGuZXmce3VyNV4ya5dtK42opR/M/fY=;
	h=To:Subject:From:Message-Id:Date; b=X+zwSzXK6jXMkG1lGBGsySWo19UOBeInpYmFxz6D59cAK/2VFm7Pa1Xi2tVo6ZAU9v56KNJmxdmBEIKLBbKPkzPPjNgPhiv3xwohnEXSsKyjFrRxgtxoLgG6W1uZmWdJl/hUdg3Y5Yih5gxfJkDfDqLL+VcqiwW5d2/3shzRPYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvvDQL33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvvDQL33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC6B6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773348893;
	bh=eYZzQhFa7E76dzGuZXmce3VyNV4ya5dtK42opR/M/fY=;
	h=To:Subject:From:Date:From;
	b=KvvDQL33XOJjch5BLVxy80Hqmgj++Yaudqb3sqaHSg+iTZ0aYT1tfcJhSv50zjS1B
	 AHelPwJ2fpPdzzjcpoFtg6VGnYkxQg9Xm2G7SRm4mrQjnnNWpeCU7PKuHR74kS81JS
	 SKclgjvmsdf9g4zxNaM5IOrmoJHnlM3BeXCezs+6qCrlX9iLJM0QpKHeZEOByNbqKS
	 lZyyEwtqXpPHiPOM5f78UFPLB70mu0+nj1MKO633ZwG9opSPDLUuS06eGOapC0ITlF
	 T3Dw1L33PjdVUiXnzOGnQMENCIKo6Uj6xHDf5hlXRuk01iA0MVxpA9hKOL85Td0Z2l
	 +8g/rXSyZcAJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984C0106ACEC
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334889361.24344.8000190280848284561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1334eb242ba9c3f1c16c0a11576950a1c53928b0a7fa78535c8fc6ce4ce00fe2
Date: Thu, 12 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773348893
