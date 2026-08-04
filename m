Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611FC3EFFCA
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785855634; cv=none; b=urEWhJrr/lws5kDqW2RLFQJzP/lNAKTGLQvWs6tGbMLpw1i8k4m36fF8DyocTPhUpTTWiwBUDyg2kozg9jRNe9uHR8LjWIird/0lc06sg1t06iQCszawv76WxDLS8tgVltVRusBlpz8DD9DmxAS5BzyljOOcJCD6o7UmH6VYnns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785855634; c=relaxed/simple;
	bh=zjr6bDWipTuBwiNDPAoYpqz8IS97xWWgKxfr6AtUbpI=;
	h=To:Subject:From:Message-Id:Date; b=DuxITc/6/2r7k0lob+mG8dhUFRBQd2YJ/30D7YXEKSEy2bPH4vzrxDNHUuuhoLmSfC52hO9R0cppcVnJp7utYeJ1yNWI/kxDgF3gMrQWoFtOOq/e0CyjBvmcf7QXYaeq5kFWR3Vn+buQPTt7u9oK7psQcWVorfUno+kgdK2Zuic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=enXS2Zpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="enXS2Zpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5FDC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785855633;
	bh=zjr6bDWipTuBwiNDPAoYpqz8IS97xWWgKxfr6AtUbpI=;
	h=To:Subject:From:Date:From;
	b=enXS2ZpyWoiWd4BOdrdQIc+YLv9pDj3ePkRFQ7qHf5Jb12Y1dSNAIfbkeBfjIbeFO
	 09UocxMWzpbvaiOTz/i8ybpRXaxDnKqeRZu/a7TbLE8t//v7aPaXXA7KiBzSusnVmK
	 3Jf87Vv1MY8IQrT2c5j3R6i9oTtglbhsnkJ9AJgmm7Yliw62Ek8tph3zngau6SR2OM
	 XS2CUCQco5PxuycAbMeeRtX6Exd3RTUFn/qvEFk3ZRPbPWsZ12inU2HhkkNd7O+6ci
	 fzSXRudsQxZSK7QDwO9cHvFVyh2nKEQmKkKgXiP3fdS7xkO4/uMwOLveQZUj0XTDdZ
	 VI5GxXLXqEAKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD1DC55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585563369.28313.3287105428238406926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3710a30f6779f53cd28b47e84045fb4a06e8c2aa66bf13d6873d8af3dbfc06
Date: Tue, 04 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785855633
