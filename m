Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E0822A7E6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766177033; cv=none; b=r0CWjeDrOdtcJwGvfWJrc/dJXQT6pnZIaYUoVmWIvsl9V+soQXFFHobiUn123PwRBgrE0fjWEZY3k2AAdquAKa4wMnzmS1Hr7/uQBDYUhY8V8LuBMMEI3/4rwjWp39K1p582o4Tx28+rVbAXtkbX4hpNlK6+cTRvbFgHGjdXpHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766177033; c=relaxed/simple;
	bh=w5gjldzb+J9lzkBTTRMOl4pGGpt2dKxlx2o5fe5/I2E=;
	h=To:Subject:From:Message-Id:Date; b=uPZPPDJ4QwhrcSWPrqTnSTNGWvNmDdCdTZRphCyO8+DxslekIp2KzgFRP8VxqQad7ok24F0arfUoz/VrxK/7TY720d4wsiNZaIVhzJziOJ4e/Z/IlW24P04mJ8myJEFGoP4ZpR8nATeTUMyU2kF/Ul/nqS4uMS+J/wZQjzMAAC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qg8EOyPN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qg8EOyPN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99DCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766177033;
	bh=w5gjldzb+J9lzkBTTRMOl4pGGpt2dKxlx2o5fe5/I2E=;
	h=To:Subject:From:Date:From;
	b=Qg8EOyPNN35y0Q3Ekd6i+L2qjaYoR95vpGfEeCkcp7q4XQamhzMWaD3N0mBlH43Xj
	 VrcIgB75AYQdIca7TouGfmJJE29VOdgaAL3w/Zlt0lc9orLaVSjjLcbnYFBLSjl3/O
	 2nzbUeD6oUeMqyOogr9/cpIK9Wagjbri9GcIQwBeOaatWQ1CX6E6/vb5ugDrECsUF3
	 HSkrKN5kqQc13C7VbPMYKgZSBIqbaVDRfB12ChMJ4HpZzagfkw2uzcT4Uzrk2cD3ek
	 SQB6nVl6rSYD2m18J+PnmsEK5X74o//WBvI4WccwvjuYSBsnrqVwKc/WhJOmySVCUW
	 GLxAcFTe0z2cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993BDE66884
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176617703359.2085.10500719300657821755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3a2dfcd3b5333d315140945c0a95754037d1cbd802e6ab6c527c8b04e3401c
Date: Fri, 19 Dec 2025 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766177033
