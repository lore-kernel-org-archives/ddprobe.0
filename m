Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A00242D7B
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756498794; cv=none; b=uF02JYfHSN+m2dysvNQ8caR5vzQrGbEKAUOrVTgKFXWGyS74MlMY/Gi9zcO9FGXLhNomrTerYkXdGbnyQpEvk0z5E9vKHknDnywyethNPtc0oOtNniXAeFbZX8GQ2OHarZaQTNumkHsJYPsvCUjqJtJAgyhRvngWwM7OuUHHaOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756498794; c=relaxed/simple;
	bh=s0kZ+BKqXwVHYcolBJvNFnMGf4xOO2nN69e0i0+Vqvs=;
	h=To:Subject:From:Message-Id:Date; b=ZDKwLSktBX06UpRbWs3y1rHP9gCPB9kcPhWhSVUbhYdns3vQ1LRH64s+IcaVairrT/z+tw0T9ijcj52qUXJWcN7XQzep7p4N/axGC7jWzdfBnqnMJx98D7CdSdeZZmG6U4XtT9fXHUjZBppEdWldvjRLPFjze0SKVVAhCQSxDz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCMd3CWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCMd3CWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93E9C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756498793;
	bh=s0kZ+BKqXwVHYcolBJvNFnMGf4xOO2nN69e0i0+Vqvs=;
	h=To:Subject:From:Date:From;
	b=oCMd3CWlMw/g2qKTwGVzc5mZNLeIh7Pk++c5FcZDPCcXRiRPFATL6Sl25GodsdKm6
	 F0hW/63NQc4DSb1SePdnmDnDYvFwy2gcFEt+RLgp5Y3hEykZh7cnVMeYdw0+Ydimms
	 NHi6+GwIUaBCMSp1LlL+6z6wICrmsx90Ey2cNnHdtWzCmv1PX5Zw7UNWvpQwxJ0kOk
	 MkFHLTPpIu/YCnHbqr0T3qcTNRAz4iRSgRjZQqM0mO38e68mvMzd/bLEedy+qEW2jv
	 BfCX3FXpivKK8tijBghtzDxcZtrIRN6j/O6klGKk8w9o26lrsmFKcWUas7DPXY7sv8
	 ZBgG6/x1EjQMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F5CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649879359.23018.8123210933454300333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b18a3779289ab884e76f31c76b809e4a6a70488c3a6af11b923ac9568af508
Date: Fri, 29 Aug 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756498793
