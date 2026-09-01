Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C7439A045
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788236434; cv=none; b=FX9XMw2VNmh1RjrXcCVIzvHE0A0A84I99IInwZyfxlsW7SKsTcmaKTiJFfX17LD1H9lUE0dSy5t6OS81KXgl2oNvEcnAlnUMOd7NQYpZZdd0VLhg5RCrgpZkMdS2U5sDhtNA4UWpuO+Cya99ML3mbxKM2mguzwzhlj3l5gToxRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788236434; c=relaxed/simple;
	bh=nfu7k+NjPb6BWa3rBqC8VpujfGhGsi7D194VpAvUBk8=;
	h=To:Subject:From:Message-Id:Date; b=uc3Qagk+xBoSAsAD8cODnUT4V0gvDQGJSF49n0Vhwn1FWZmCmOQa76Knok6CzxTgxj1WmuDQHq0g5yX5E1D4HbJG06l55e+WpyVhiUeiDrmBPmXQJqKg/P5izwWvf1vnPTy3WAPUKSRTgwav56Tut7A6NN82EGjfbyqW+oxyVmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s4/7BPoZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s4/7BPoZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAD27C2BCF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788236433;
	bh=nfu7k+NjPb6BWa3rBqC8VpujfGhGsi7D194VpAvUBk8=;
	h=To:Subject:From:Date:From;
	b=s4/7BPoZTSbd/rQLfXubOD+iGr7gfPIIBmqoEDOEVFSisZxJo0OLX6/jbVWVJPSAC
	 ztrgX8tcYt7S7V8ffGxZSzibBaKUxzB5cZKanXbNISs62zg66N2IXaO44UVZYQIWwL
	 XgL00JBZmyzqJ9YMdU2m/zqDd53foHWBR0BXBFHirDj/80SIrDBMON2RwXpLV2xLds
	 hAbNlGMFgQF21NxrpCP2Wpm0aLYzAGje2Tpx8+6jIuHTkJ1EDXQ8+gJEHEGROKa/6P
	 P0zx/KC4c3Yfb60UDE4bFw9zgukMEHem5WLETnPks5J0fq9ICnye6/CmxtiAnY1d+5
	 haq9jF97hedsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B43DFC61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823643369.3581.18411666508825312575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbc24be3142733f9793a0686607ecbcbc938d67a301fea7963b503b9ab8cdd2
Date: Tue, 01 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788236433
