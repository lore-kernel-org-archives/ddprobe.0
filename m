Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2441C32FF
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769749434; cv=none; b=H9tMqG82zk3OrWomYNE6osBPJ4jQaYaVMn81CHH17/u/KO4c1OewT88J8ll8bnYBTYDymtwBIYL7zmn5tvsY40jtTs+pf46ZvoW1jwlwTdeZcSwBkUDnvVfnLdV/ONbU00Nl6rgzPgY6prWi+kuM0y/Nv57TbdcIvotOfkwUdnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769749434; c=relaxed/simple;
	bh=uCqdLbROiJU6cXEpClZPuEtaPAvFJYg8NakD7+/dEFc=;
	h=To:Subject:From:Message-Id:Date; b=p2FU0J5/+hpO5lArxFgnU358Ms7P+5bcHA9jTNNUjVqZvwGj5UcsItiw/gGsD7Qg2qUwDjQ8flYlukQamuv5x0W8uO3uE6TZK4bvFbAERGWUHm7RnWdNsk7HqPVgYfdNvRwBjFZNBofNXnSBFwAr+1I3tNSvicRVldwdA0mdhmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRCboEyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRCboEyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769749433;
	bh=uCqdLbROiJU6cXEpClZPuEtaPAvFJYg8NakD7+/dEFc=;
	h=To:Subject:From:Date:From;
	b=aRCboEyL4vT9+SPypI9pnMYFr6mRWFCuv18hhCELmranMQaxy/QAh7+xUrvbxTm1y
	 TYhkANK3EdrLl+h9QtY6P4M05dPhbh8VZjSfpEiCGK0DyE+33X2boaAU6Y3uiRR0YV
	 Ac3S4Rq8GLIGaoCeSt6vt9yCeTtPBhJphju5onOta8lxnYyCQNuaGoXcW7rzKRGzQ7
	 MaulbaYi6ncAO4GCsRNTS1BLRDmfRySkdYnz12JRKj03PPa5LFqW8SW/nmJ/cPug7G
	 4X3ZdVGxW7uhr3pj7ktm/h2dN5SkG133Vb6z54xdKwz/oU8hiev+MEVdUTMYUiAOhg
	 BfUCNWNUmg+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F3D73EB8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974943358.6007.5179251772195259711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7393f16ec6d331c32a9d279745f5e51838a5b940a0ed7cd45b0f6afb320f008
Date: Fri, 30 Jan 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769749433
