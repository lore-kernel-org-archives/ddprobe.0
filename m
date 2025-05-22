Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D9C23E23C
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747914594; cv=none; b=um9ssTVg1n9ZZLGW9n53K8rpXtjAFPL1CjyPxj95UJM3Y4JrE/rX4DG5QHhfjqKpvn1wDymA3FPNSAo2mQhtgK5Trf0XQRg1fY/z896H7KTZ+58My/hj4LOVJvdew+EyRSdOaoCR/us6sa9Dv+qaY+C6IbIEQHbZpelqqKxybpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747914594; c=relaxed/simple;
	bh=VJyHRbgmPeOf9hfIw6vRUsu5JbgTAHUjvCeHuZYafoM=;
	h=To:Subject:From:Message-Id:Date; b=ZmJU8C4NgXpk/koZrQ1iHIQmnRY02/1H30bNt2VLyL4Q/1RRtd9EioUF8WEKl4gm8qcqvRPAPl27MtTPbOJUmn4ndZ+ZNZKQ7o1FE1UytuUcVTRywvX23evmeGp7d98ZOATsrMoCgyX7kXhv8xO+qkIh1H85bLtkfxtkEAJltWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2OYp67d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2OYp67d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEA6C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747914593;
	bh=VJyHRbgmPeOf9hfIw6vRUsu5JbgTAHUjvCeHuZYafoM=;
	h=To:Subject:From:Date:From;
	b=c2OYp67dBZKz32FOD61Je0LZWPqkdShERgt9ofbGDwE/IzzmISYpavJd/2DjKSSOs
	 6xfnyPlqa3/ntRzMKu9WsbnRNUlOmF9uP2JtlFc86J/mY7zihDc+kSIUubUWvJFkFJ
	 tw7FmH171ySCArz+tTIxhBY819NNnAP8kQABDuWnULLxBdRk4OSbDxyQmxuF9WWeGM
	 mn8IkeumnVX4uDra+1eUq7oV6ufS9R6F01a32ANXEsUsYam0BBPzwlArTp373xyWd7
	 dTZIIWVGMW5yMMez+VJPAUiLe+BU65xFhcwd7fGLTPSnsp0QAhhTrwwzu+lTDwejFA
	 NuYfmUQsesH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF34C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791459357.996.15592915788415318655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6ca6a007fc9c7f89959e9a8fcc1924ed2eb1101d318ae4e6557fbc918a2df2
Date: Thu, 22 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747914593
