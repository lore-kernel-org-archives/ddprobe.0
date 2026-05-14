Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444F8D531
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778802634; cv=none; b=KATUDhcEGTLm1u+iBOykiaYxO7fx2FQ5+J8izU4cWxMEW2xsvrkwBbnvLSuElRPLyBgzH20zPPrJH4ZJSMwE+HI0ukfL285ePVJJUCYIDfQ4zubQNBerokscNXtHFulQc3dCbSPR1Kh3mPOQpWQIQ7PyKSHgVzhTIjFoz9JAIJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778802634; c=relaxed/simple;
	bh=rBLIhKOEmtyMcmhOlNWWNWplz2SJ4Z5HGvh4xS6mpqg=;
	h=To:Subject:From:Message-Id:Date; b=qndnY2BwmCamJaync+D98kAaNORCMibiG2Cqzyx8ZXuz+8F5VMkJMdKUIdlTEC8qquuHiTIXkmS1Oab2XdNMtISbs7ytogodFIhg0YOYSXDI1zwJUVrGFoFTgZGPszzrpeJ77hnSTHlqjc8MpvBVRxmkfuyY9n0YXR9aQHeeMAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KOjYoJMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KOjYoJMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE115C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778802633;
	bh=rBLIhKOEmtyMcmhOlNWWNWplz2SJ4Z5HGvh4xS6mpqg=;
	h=To:Subject:From:Date:From;
	b=KOjYoJMeQauFCTgfL3h7VsUcOJvCA/Ju/DjN1LY4lv3xQCfmyF8V/KiYAiv8CkZGw
	 DsyoWlZyFe31Y/3My0NsvuYUPFm/auRvprmF5W7HnU0B4Z2yXivLk/095fS/vhekIH
	 63c8Xgn39RzJBE18qo4gfCSChEM+WN7fOLLLq8dL8QpTRk7iMmVl/pwezqYMLcbOHx
	 AXba6LM5yq3JipZFh1scGboxN6HHCBREtT3P8RpU4mUHSdvPeHPHl82zueb3asmTEG
	 11t1pHTGH3dhXzk0fBjDg0EiA2apS+FKvxKhfx22EBG/gC4klRUFgQuMo1fKLquvzR
	 3BeYLWgKVsIAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEACCD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880263370.12294.6240352020200918463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfda4aa9c17a7b2118ee1092fece58410c810848f1b1cab387ab451c39053001
Date: Thu, 14 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778802633
