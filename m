Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372153C945D
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775055934; cv=none; b=A26THH+KVZYCO/JZwHrv7gWV+L3jWZxbM5BdXoErRpAUyTpFbmSO+XzgZxIw6bxSl5jcPeDF4DmlVDv9WMHPErBBgq1Eh87RPALnIIOTNxHAkY7BvtWUoiIHXLbh6+z75J2LH3bn07SJDbfNoMaZS9g8KwEmHcM+3XabUlu16sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775055934; c=relaxed/simple;
	bh=nXORo0s6SD7XWOFw/9krSKNSstwyLYps/3wXaVvHgek=;
	h=To:Subject:From:Message-Id:Date; b=BJUuDMbKhmBjxHBc6IfyAjqInZl2UPxJxQT2WL17w4ISNJNSyD64tEiBi2D/wUsMOkg5w5/Fs7U0p+RBSfU9EeM1JG6w2SlL/JqPQgBGLW5qPQOzC+BEKqy6VfHxluYSJFq0XNxe+rZyE1mQfyMO2AYeaxTEjzSUS/8PF7ejIhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNvn3c86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNvn3c86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75B0C19421
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775055933;
	bh=nXORo0s6SD7XWOFw/9krSKNSstwyLYps/3wXaVvHgek=;
	h=To:Subject:From:Date:From;
	b=aNvn3c867yCMU4MZl7yAd4ufH4GVbrF8EwIjYoQy3VByGFhyhaoBQ6dt8/WHYaGts
	 Pr1plH/IO6lj8K1t8vt+Ae8XKg+bmYv1bS2Km8KPsGuk4QCDrhFXD16mtMSMEaR1k4
	 7UQHfPbxZAPJe/rq1hsypMR/bhiCdomBdUXVxVnQ6QdDVuWpFpjVJLii/K/O9aTpHC
	 VDL1H/LdELDd6vWqrr2etQwkwG7W+fbNhzTwschVoW53OX5XxQS+Tlo1JvlTSx8pL3
	 Eg4asRkHWWtq3lOgeb1A2Gu+yurErJ8qBlpiUHJZ0YT8kBt7QmUh1lqsmszija8lmH
	 uTqevcvgBWaGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E8310F6FCC
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 15:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505593373.461.13979771554113770098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fc502892b1d2ea0236891f165ac46d46c06a2c0abbc2b7526ecfce3c9e1fb3
Date: Wed, 01 Apr 2026 15:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775055933
