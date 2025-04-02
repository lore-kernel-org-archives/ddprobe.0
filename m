Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 514431E7C02
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743578994; cv=none; b=DnxInw7nt58fnuwaTt6jWyUTC+5GsdCrgtvBe5E40ADydRjT2OwIMQli9ig4rtPKK9j0+6p7pUR+LsPQ59zth1ADfw3pkJ1FfS02X6HBge1X7zny411UPAfDqzHOxHNQbbEFLq82va7bpBX9esmndLo0hc/UUZJZP5aNFh1kOAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743578994; c=relaxed/simple;
	bh=63idjSLXtddhlKVRFgjJIJHyn4buS+rEuOIpRJHSsvo=;
	h=To:Subject:From:Message-Id:Date; b=lkbAPSCu13TjgVR46Xjxqok7YmplNYCKadpr5iPhMMzG/tpmPn4rWZcOWNBeAojnnTvAqwwaIWm6Lmin8o/dZ7PZCYXrwxNGnONI0e9H5jlfwkLK3UnQnd9PBumg2uUcSdixFYJpQD6sWn4WP18cdS/jkdkWZbwsxBc2+RcWtOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHQbyxBR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHQbyxBR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5AA8C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743578993;
	bh=63idjSLXtddhlKVRFgjJIJHyn4buS+rEuOIpRJHSsvo=;
	h=To:Subject:From:Date:From;
	b=eHQbyxBRK5KOkBz8hN1nY75/3wUN0o/eaB1YE5KtmSh2RqjuUyGQCQNjAtuGIlQdy
	 c4kUWNFWyZei4yv6uwCVHaD2y8UyE0fIjBOqWB02pHGf9g99EHFPNagHxQTrpLS8XI
	 kU/6oJ6iV5SyLNCguumd12uIR72obD/gF1hlM/Ya+2qMvfPNX7bbUmds73vGsiegsd
	 128R6WJQ1p3xPuXGNgWp87fmzWDR9DeXLsCgRRM9+gpF1exCIHgJh5AqNwd7zf7Efj
	 71ygSq5kkNeq6yxvHBaQ/yEdl6ZGARiTwMUYwlm7IRsIILfQ9HfCIFOon4DvDm/u6m
	 TGAj0V+kMe11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFE4C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357899362.17888.15947570744229143262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 948f2e84db7bb6c221622dffac9d27d7ad72807d363be87477285ba17fecaf06
Date: Wed, 02 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743578993
