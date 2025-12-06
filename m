Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D358D7E0FF
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765027973; cv=none; b=kCLnhVAqR7sQzjcDJNnL4AJ5tdCE0YW/K9usewmj6Pv+BRat3ZqcgwvwSJEaBcNubMVIuH8VlfoCDN57Tt8SSTAJsqy66qmjcOzxA+4u+HHBvVt6z8Rp6by1/Z8o8tkZd5RnsDnvLFifuA46UZDy+BfevJXWywsEvtrlrptx2tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765027973; c=relaxed/simple;
	bh=utl0D1uMIBJWNtfImji8USJpW6Ta1/dqkZ7OlfswUI8=;
	h=To:Subject:From:Message-Id:Date; b=B1Vn524lPtB2dqIlHc/Af+0GiL2K+zoKdP4znqo83AmL4ensqH86L+wTbWF1BL5/pXJ7aW/3kKeXV7u4VXUv3xvo//3GOyhCy2dzY4Vc/d5PDSmDC8shIoptO9DssedpEAwh7jcALr+OHZmxI2mrqNFBQarBbxHu0ckixuOX+XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FFAHDA0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FFAHDA0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E2BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765027973;
	bh=utl0D1uMIBJWNtfImji8USJpW6Ta1/dqkZ7OlfswUI8=;
	h=To:Subject:From:Date:From;
	b=FFAHDA0wvKZXlrMILq1R3sSh5w02LaXDxjvmpu/zb99T/ipCJOX/PlG2ps16p0Aum
	 tmeXti6tchHVXiD/SV9iRkFsCGAkz92A0Zvf0LPZJ3Za3iZaXYjUJk8HVen/eZkzr3
	 b0ku7zowHb2kY9KMiOedjxAZJA3IJKSd85FDcBaJk9fIcJYnv7JMZPIJjuRNs6r/62
	 mMH5Q2roIBJXsNRb73ggrQMZpcjkJHAQydyNDUw5oLviC5zt5TM2vHLoSnUFIe+m0j
	 V0l6PMCFyv+JMjFyKzHVwNRSh2/eU8ZaiujLeQ9ANUeQDulU3hfpdE6WcKB/HzqiJK
	 5pyDfftuSmuSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E16D3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502797359.9789.6699854510891880348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c8ba0d5d04c22a7acd948e0d1eaae2cad95324b5a64432173160b14e6f0d18
Date: Sat, 06 Dec 2025 13:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765027973
