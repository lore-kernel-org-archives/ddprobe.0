Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26106219FF
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735815954; cv=none; b=ZWEv7fMYeDp7yTV/hO/niDi+79fr1Tby9bH6NmMCY+JstHRd1wntgj7RMt1ci5HI9xkytXp/EVP4cBA9wOFhYJJU717RhXLCi0ZiUKSkRVs72PiEcu838rXt9TfVZmfd4AEj65h7d0T36t6ewX3gLKvM8EVFFAEJ42uxmNRCBGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735815954; c=relaxed/simple;
	bh=Zevhj83K5SD7EIcWlxeGmKIhEEcSdCUlZhK0vzH3Ni0=;
	h=To:Subject:From:Message-Id:Date; b=Bxno2uiJ5cEmZr2j8ZckjXC/Va8llCZijO5i+HzumyXuggMFbSnPNe3jRvHiZAV4gDGFLOT3yX3LkZszHcd6LB4DFBDJ9mUEQPRvgFqbT/cE8tX6LNmPYupIVzFs9v+GHuQAY66YX5OBAR8Qom52VwUTQRWU9W8PAiQahiK7DJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGlmI/jC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGlmI/jC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6489C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735815953;
	bh=Zevhj83K5SD7EIcWlxeGmKIhEEcSdCUlZhK0vzH3Ni0=;
	h=To:Subject:From:Date:From;
	b=aGlmI/jC5rGsUyaXHm+uUdkf+XvyseXkmM1nXnDXOWdgWTYs79Ph72GH5ccsa15Ok
	 D7EwpzSA2WVnz3P9WAtn0ri6MzSgVsZ73908jqDGA+jSGpkQ5KS0vswPe9pFPCtzpE
	 xUumizFkT0oFLt+Zd7ld1Ku9CbGz4qVrr5G0yP+BQ0nD1dx/6oS3VkVdibU+9AUwx/
	 aPBM7dQ7YlUrxykS9IC05GlWOQnPICp/fPRMAKnI6oaOVYWXcfc6JEtpW+HDuyEdhV
	 FH/yUsiCXBgLMxy3jrF6lzRJ65mv0zu/b6i0OpNOlvCb+EueRZ3xIVuOio8cryd8kT
	 F/iBUXeQezrEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9223DE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581595358.7525.8445712066145293238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3472c4cf850884185caf1d8d2f9b4cc0bd171b525518b4e0c860ac3d7aa063
Date: Thu, 02 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735815953
