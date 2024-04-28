Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561482AF1D
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714288343; cv=none; b=T6ELTfa8/0TXUngUE7xVG/V5tZdFFZ6BD4TSwybXm8jtTHitotz2JGWLBjCjb7o4Mnk4qO1ZCOkD3uhJBlAVK5/vJ4Vfjrt3WlyisPUbCtgfFTckmcz4RKWnaIcFpirQjgAmg+ohw4iHpiHqKhnRFGhzv7UCBybk/KPU4DgOUQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714288343; c=relaxed/simple;
	bh=PYX3w4NZyIenSPmmEgLTV6ZbmfqtoHxW4VvhBeffiGk=;
	h=To:Subject:From:Message-Id:Date; b=pdAZJYo0ffnYj78CUXZRV/+As5UwmwiVMZ9oa7sBDqxk7U91zBIyuyuxxvNu91u+Mz8ec4tTUfTe8t5TzVKAOoyZDZ5Et2ZII5IjklpdDpFuAurdz/4GGp8wv2OasMjYX4H9lVRyDEKn4uSwppuMNPP7ROjb1Fp3ajy67d6Jmfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq7y2+iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq7y2+iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55ACC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714288342;
	bh=PYX3w4NZyIenSPmmEgLTV6ZbmfqtoHxW4VvhBeffiGk=;
	h=To:Subject:From:Date:From;
	b=cq7y2+iqgxjMlXhFK05/6Y2O3EaIqH6KX7RsaLZotqsubYOkRzPoPowz8SpIbOc81
	 RA5KMzGzJaZLtYBj00BW9wNESUjss/RnmLtyJrtF/zss6OTlE+ojNOYJd/z82cSYgN
	 3oKZzvVj09LgiV16kFfcvKdbB7ayMMjvxnJGVuSi8pSevocb/CmR/w7vesu0UCoeNT
	 yREjDONWAhVX+EsPGdUt3Aqeq+t1WsLvlkNHKngip00jNdFjqoZ9krySS9bTygHeEU
	 uYGcaY/nwdP6h+BHEHd3QdLwzhc8wwbjvYooq/Yi9A7YZhjQSXtOWYYYPx2xRkloGZ
	 3btSoA4jkP5YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0983C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171428834276.29187.7201205527203509648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583cf9c00f31c7a9007ecaf471dd964d5cd076f176dba9230469fdede76bf46c
Date: Sun, 28 Apr 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714288342
