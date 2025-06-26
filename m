Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF5D223322
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750979394; cv=none; b=f5HMiLuIwpJACnAzBdH3ukPB+3TozApY2tZDrOFcuLlO4FeZHRVrrGE1BVb6H9J89fremtZ9WJDtPHalwdVbvcSZTow1PMmToUVQXV6+sGQy+5/N+JG62+tn6GUChLCXxe8R8IyUVthUe8yq5dA5FEXa7OVBL9BmMbA8la/boP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750979394; c=relaxed/simple;
	bh=7jufAMWLw6mqD09ecK7n4yUyfMwK980creEKYhKYtAw=;
	h=To:Subject:From:Message-Id:Date; b=R0Q4sSNoUEjq1TOgNV70jisE4aUny60iBOkuN5urFIGebgaPZdo9u5b0MbQESURMOtzl1DApBcWT4TSr6ITGcz0MW3DZp9jzD+Dp6yEfXSDzvKdhuRjBHykq46v3o3GTytY4POFXExahrPC6lr9cdDHeOAZZLz4xGrsTEh+ANeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5b2K/NH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5b2K/NH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7099C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750979393;
	bh=7jufAMWLw6mqD09ecK7n4yUyfMwK980creEKYhKYtAw=;
	h=To:Subject:From:Date:From;
	b=X5b2K/NH4j/vXpDsgj73F6uV5e5nbc3cxhVm1MrJWvQ4+AGD1jFRMtcUMXrUmZJYI
	 O0a8P2X3tvI5PaobPbLGnzkXLsdKHhFWXYV8ZQx+Otro8k639glrX/JKoKKwPHjbCV
	 6lyS7vqby3WKOZpKphFMHiwYRGNmY6jbP0f3g5c+It+tlSTonkj53DHidutGYjjjAs
	 QVWhDuNclLQdvznwFIy/zek6JhicnK/p6tbpe8SMP2AUhNY5FbwUoC5UuqsYqy8Axl
	 7buVsHlqA7VHFQX8mWfStx+49560/QuXh68sNo2GooJmX/UVgapWHPJdJdOtl+XwoV
	 krI8+FKyQwzhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E7CC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097939359.14176.521312931618324148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 499d3d0acdba3b1137dfb77073e7456454397fa8f37a0e9f5f609d45d73eab48
Date: Thu, 26 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750979393
