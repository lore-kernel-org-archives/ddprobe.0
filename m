Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBE31465BD
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726264554; cv=none; b=Ik+j132C0FYygy/2EAXEomhL+kdtELAP3YkKgidJcEuBBxrXsgybAzx/bDZbZ5iKaBXt/F1CjfhVcxH4zNa2W2l4jt6RY4Y3GNSBMZyhQpSZyz+NE3YPUD4cX+xKAIVOVnwHIaxYaMMyiKG/ynctIO76Hayh7edSovOsYt/GI88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726264554; c=relaxed/simple;
	bh=Xo58kyKSLW+uoQDNCfgiQn9q9FsJyi1istN/wFakRJU=;
	h=To:Subject:From:Message-Id:Date; b=C0TKjMadYev15ti9cRJoIARKWuxruTLplR0TIzi7zt/Yqs5UQPxPWGkReXSv16qqBEHNQgduAynS/XRNpAqfC0onJX4ZJiuve5HHXhbEhBgXBt07ghc441s4M3oMOIOOE11AWFq3WRk+4X1E0Q6FdfdxTp93tSRtp4AeTWcq/p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gWa9/ceA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gWa9/ceA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6EDC4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726264553;
	bh=Xo58kyKSLW+uoQDNCfgiQn9q9FsJyi1istN/wFakRJU=;
	h=To:Subject:From:Date:From;
	b=gWa9/ceACEZszIFlmpHwcvPHsujf4n+HzyJMcQTAi6cICuiIQhY9BrlogHFXZqkxF
	 8p/ns6oam/12FY9Dte5TZCq6uWl4MOR6txzYH4ldKS8teCztI8bGxIep82SHHBVy8g
	 P8duTZusmpj1bDutuJl19cfuhGwu4sQk6t1ZlBe2BpJ3Zl93PRRCVriJjsOoadtEjg
	 1ikRC1zhoPv/+b8ER983AlEsEDVKFIS7rENweFpBImiZXj6wTXAN0VZxXYyXPaTM4s
	 M1zDXYf0w1HLlPVAV0DXOAScH7X5j+vkgXpoQgsoCkJmQHwvKN85QnxvNLIY9h8Jsv
	 +mbn+6Yfxzs8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDBBFC6182
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626455363.24552.2899823937358333061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af97566719ed19a11477f3fe3667493f6e73c3f9d4507d68538b0c7c2213966
Date: Fri, 13 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726264553
