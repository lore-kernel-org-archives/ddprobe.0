Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A6735F60A
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789194634; cv=none; b=X5or16jrQQdP2ursMIp/3lWNMRYZctEDzybbYFlxAER6bqNG2NhGSrfY+RihYaY8gz0PS0GU4I+Eik+MVPuvoUQnW6Pkb37ubF+Uvrmka59Cudx95pLQISG1piiNLHnq76LTUEtHwh0zOIXz692bHUF3/f3NFymYjreXq6ck9xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789194634; c=relaxed/simple;
	bh=5bXpuQVvOgFbl3knwepdAiJWF63DykXAX+nahUQChEk=;
	h=To:Subject:From:Message-Id:Date; b=eV7rndp4V+S4BPb4zrnQ8e2gRUE2CO6GGmVum9C49oNB61jvMIBsTMF/BZrg0g2MXzhg8LnCeMGoQaqTi80sqvxBiz+h1tuIHBJd187y4UjJVfgLJtC1++F0kXkJnK/CFXdyH+Dr6Zw2KZ+WM9MP/GxuxuPKWIMX6eVyvF8FllY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zc0yvBNg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zc0yvBNg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF1C3C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789194633;
	bh=5bXpuQVvOgFbl3knwepdAiJWF63DykXAX+nahUQChEk=;
	h=To:Subject:From:Date:From;
	b=Zc0yvBNgxjXBkL9U2hWfMKy/vELs5hgH103t+D9UQqsW+mX9/OwxH+ICBFwW6zRZC
	 73JrnZQIPWwVO8sMUkVQ7FuWPD7EAtcm5qt1UiY2kK1TklRU53AGNLZTCYYO0glZWp
	 Ou1C+faLBe0sAF5KTSv/+Q9R0Mh60O8eTbXCFFeuxA2irbcmkHs4Lc5FdPhkXc1aTh
	 ep8bOaR8m/CxEwYiCFzZtDfb3ZpvWyiGDv1s4Gi0zNWz8gAGS3fn/ehmi2V1BjuTrE
	 +XWxTuRdOkPXyFkKW1qrJeMMURqoFDH6bpR2mRw6CaqkwhFouYw8bJXlubMh1DPj53
	 SdABg3ZvZg5AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF806C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178919463368.21778.7164016634354769849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282031d15bb793300e002ab1c33557fae5c40137426060dead74fb5344fd4f9b
Date: Sat, 12 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789194633
