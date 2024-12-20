Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0AE2594A6
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734663954; cv=none; b=jcj3XtS6lQ/jaMsPAabEocr+msaJ73HbUgf3wi7pLML6zk2rDS8NYLiob1F9cckZGNS6Qga2/a5cNqdr0lqRLdSfzayGEeSNvFRkYdFnIh91o5wYV0Ab/oYzS9ph4It+KnZ7hH1DkpzNxEN1AO65inf8qh6b4pUk3Ymg9nUr2ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734663954; c=relaxed/simple;
	bh=GDNLqE86jePZmFW5yP7ySNpgD/Cno/1AQ0/K1660nJU=;
	h=To:Subject:From:Message-Id:Date; b=ufmQlSCk35dafImWmF9j+Reqf2NM6cVRViD769gW4/3KmyKQb/CLvvmklvSU0ssEaWoQZ0s3vdY76c2fTDYrYJACm0jO8jz6NlVAXRZ9rs3hxK8MbKUoUbC7AiVUwDHSBmftyHx6lsDLs5TWwE3WhiJqbcQaFnZoT4Lze9ztqzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMVCgJWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMVCgJWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83C1C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734663953;
	bh=GDNLqE86jePZmFW5yP7ySNpgD/Cno/1AQ0/K1660nJU=;
	h=To:Subject:From:Date:From;
	b=nMVCgJWRfQBNJJ7V42+u+Ak/ywiiYwwoujJX0vxG5Y3uzuta1qSTE9Md7sO6Bbgc4
	 Me3xrRt/aEVk++uHzAgpD2YRNolKtzABwL6I6qkfXnXAm+uvDrgHqT1FtIbO5ZOaQd
	 oJGtnlxoM3JMQPt/PBpkEuz8MqH1gy92O/xb3Du9xfAQStPrysHqmISPG1O3GPvXaK
	 ciexq7a06fr/iMfjZJ7JKxn1zQ7dy2IuCrExRL0Ag5xjsCTD/Cb+bzO/tF16XxsTCF
	 v6Eoyvmp6n+7cW/2R0lQ34lZABHUnA92LBJTkw+jU5M4qP3TjH5nBIXa5/dz1xuSbS
	 EuCWqtpWs3zkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2433E7718A
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466395365.22895.1288573261504689780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bab72b52d2e6ba5697eaea7e131589a85a7bfb68add315035c9b96ee3f7e742
Date: Fri, 20 Dec 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734663953
