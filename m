Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230B2E555
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756752595; cv=none; b=SXyF+yXbrFRu7umibR5DPvL7IprFNefE15s3dG/raUmxw2xGZk+wJTu3HUOT6F2LDRXH0f+yKbvFXSWdpUoBxmwOOGYog1ovadRU3lmL7DZAeqYIRT0rzTpAijvmPt5dpGm3KPvHeZDE9QmuJiHpVKKt0R+IxQXRQVrbGAquMns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756752595; c=relaxed/simple;
	bh=5uhyTKrESjPNCT7Ac/D/V+blYgCgcdWrRI8HI3lnfOk=;
	h=To:Subject:From:Message-Id:Date; b=h+g7Euc4mmVyK1MHfq2GCORf5P7JkIhOa5LKwGROdjC81+wsxl23vVK7GuEt6XJyeyVUSbi9Loj7mr7gV/ThJMeRjLGA6vnpBcz5WGRwG0/pPnWX+TdIjxmOWoGADGnUH3+aJLoRtn6TVpazH2QSV2hpvqlWMs8JcLhNGrA+KeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogF4uEpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogF4uEpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C76C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756752593;
	bh=5uhyTKrESjPNCT7Ac/D/V+blYgCgcdWrRI8HI3lnfOk=;
	h=To:Subject:From:Date:From;
	b=ogF4uEprnCj68nC/30llRv1ubdqSuVhUIHX75fHBgUf2AwzGdluLpbtQZXp/RzvvG
	 uM2CsYmsMa2ev9FugvxEFIG+WJ9ARAQxoWxD5KbjIrX7rM9ZaYlbPZra84QgW25dSV
	 u22w4QdsMW9E2O4V63Ymzrmh32TIyzdoFC9u/6+lLWsYM9z8WDNe+xKVCehEWq6XXj
	 1KR3NVlkGRelU8FPucU2AOaBdks3r78bK2hppdDfn6Oc5ikdEmz0J0jJTjD9bM41AW
	 gug0UAYlfVkZAbFmZ6YeFkzpD2JzU9NDoNih8/SSE/QwyRgQtZiy/hfUQYbctCUpGd
	 DfZelSZyXK9yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F479CA1007
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175675259357.8964.14585424883942232894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d688cf131a6b7e1ca118cd879b411f3ed3f2cd71525ef74849823645ccba004
Date: Mon, 01 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756752593
