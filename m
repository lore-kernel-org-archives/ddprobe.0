Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDA81275AE3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761432593; cv=none; b=rCvrzCvMHaSQw+mEp1aGIS8stEtRlnEhrBMGeR6+n77LOCALKjlhilbTS4PA1ehjH/N4S5Nlcx8/XSTSEuQYRR4kcS0JDjbXzQjj9pxZdNsjVXxcm07OW3C8RRVNV9WKKpEp3i7MfUgXxpA6CDh0Z4Hork+6Lr/53YlZMq6CqJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761432593; c=relaxed/simple;
	bh=CRdRW1xNOYh2EVWXkLCH2NGxO16DLgYLKDpwf7MI4uA=;
	h=To:Subject:From:Message-Id:Date; b=rMkBYKL1HeBYlzLpaSqtSkYWFRsVtBZjnLd8zfDZE31t8oNmZkjKp5iTz142xrI4BjrDkJ1kmxE0lZlowJS6PnZqXEBTs6T1ypViWKZjvhXUxY/cUmsYvsQbFGkHHosS1f3igIAo/4laZd7Y7K4Tc/zQVL4BThxP2ShBHKSE3Og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N0INaL1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N0INaL1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7259C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761432593;
	bh=CRdRW1xNOYh2EVWXkLCH2NGxO16DLgYLKDpwf7MI4uA=;
	h=To:Subject:From:Date:From;
	b=N0INaL1/ka5DZhxgMbmPmTXdQq3tfBIF92TxlOMgV6KHojwnBKN458+N2lcKQqREL
	 rrEFSUj2d8/4VzNK4khxbSf6zvntsCwok3n47TYH7cjlDOS+loD+hHSja4xXcqZ14r
	 QLQ2rUX9hH6/fpvYR/TX60Qve7/TD2imqwteVe2Vww0muR7Y6ZSzzDm+MmvxklbEbh
	 u4e0FOZ8Eu6JUpKe7WIggNFqLThzwHyzkYivmaEM++6M4yCNqEwm5sS4ACl0ITgdP4
	 NQfP1nF+ui2J+sl1QqAq8AmOHy2lQcD7dFJge/sLv+LBmM36wNfBqguZQL0rt5+9hc
	 +FoU25O8XxSJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCECCF9E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143259358.4330.16515021333533697523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8602c052f661d7fb605f48f9de4288b2f52d65bcdda9d2dfb46f288baa1d25f
Date: Sat, 25 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761432593
