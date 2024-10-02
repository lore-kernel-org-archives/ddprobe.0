Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527311E7646
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727868354; cv=none; b=VPxMXYJ7BQO76OIYeJXyJ9JJEK50sQPyr082qMmj8obdaKz7cFjsstiCqz9LTrQ0Mk6U3FP9tCEWMKHLrZBrLlGDwpVc5kstpq9h3/r4/ly9b8K3O+ZdU1XVSRKu8tTFNLxZsBCeofXcaBRCih9tsHRdgE0iN05ikq8OZfkIMPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727868354; c=relaxed/simple;
	bh=7juWpTlXLNBdJtJlKJ1oCQ1ELGAcmJ8VWZwV7k3wHaA=;
	h=To:Subject:From:Message-Id:Date; b=Ujy4pLEaceHZk8s0yPhDMUB4KWrY98sqW11VLE4A/SPiBoZt4/qwgx6gIoGNLszdHJDNGlduFx8Z3dQgxPAvCs2H3w86axE16VkQTntS/72hCO4Kctm/U9jBmP5+yfBglE/KTAy9hpMHCSdqvO21uxRI0rCD5nIk2ZsBnNfVgLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMlxTDO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMlxTDO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8102C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727868353;
	bh=7juWpTlXLNBdJtJlKJ1oCQ1ELGAcmJ8VWZwV7k3wHaA=;
	h=To:Subject:From:Date:From;
	b=WMlxTDO2yff+QQ+yNhaTNaruG8k1fccwx563ZE+ePCyzqyswM48gpYQm/L/u9NjXO
	 +MRan+vUlvh2S3mMCkeYeBZFZsvWYimohbBIA7fbILuM38ZrFdR36l5kh4/ML4oCEC
	 FdKt5xL1yRudTDev6UBh5jmZzBrCfRQujb2lLkVjTPq82d7rfxxrRqyWkqOu5iPVnX
	 IgPKAuwJgSIyNzNpNn1+WJ74wpJiASdm+P5H+KewoZbatTvO4pQNQ99NnztC3YJ8gS
	 teR9gQ6cIt7BZ23EHX/WrCOR3wsGzEIVhPwhOXcCIrCfx1gIiEGsJOgbH1QX7avK//
	 fjYsFdxakZ0mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12EDCF31B5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786835364.26423.13926286992663442837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdf0825ed4a5c2ee7832f77c67c56d536b18c313993f035d9ff832fcbe2688d1
Date: Wed, 02 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727868353
