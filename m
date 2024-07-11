Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B27429CF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720673843; cv=none; b=uBG9vToYjXwcrvISfyOcCMYlEtspyS4cdJFi1hwrQ4c4veKMX+qo5SlzZhg9QXnzFTp2y9mbFa7G3XLfVWyae4Lww7RErSH8h0v6H3OwBV8dzde/S0T+HDIOCH/12woXmKluvR+7kgkahkVVKJ9XDKvoiAOj70JHRyHwHeBExOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720673843; c=relaxed/simple;
	bh=89d1YUi0bU+1oqRjBnicFsG1lwTo9oieCVb3Q8IC7Ik=;
	h=To:Subject:From:Message-Id:Date; b=ewdzjVqElF2XFco7w0zUod9U/U08uhZ7VsQX8GYSTL1Ze0q1RoExV3kXF2QRJi5V3DTy1JVMORnSzcyWcVK0h9zjc+muLQVqXfVxF0kv1PsERI0CD4HgX+FocIHrYhjAdXfX1hykbwVAQRlGFNMosJHLepVCqhQJ4/Esh+mUens=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQWdhtqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQWdhtqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BCBC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720673842;
	bh=89d1YUi0bU+1oqRjBnicFsG1lwTo9oieCVb3Q8IC7Ik=;
	h=To:Subject:From:Date:From;
	b=jQWdhtqd5txZ1nw3vPIgTdGWz4b/MnG5dxwFArmBUB6t5z5CPO8U/iOw5LJuq+XMr
	 tc7DZtDR9ibVC6DdU9HXH4bpAsSs4Doe/Ykqpza6Vevr2Fh2kkN+fvhZAJ+0lYorkk
	 Pu2YJaKMf9BaQrx2jyA04id/PIBIbeE9Ro/P4ALCPEu/ZNemA+EpyErl260m3eHOeP
	 38GuGqB+C3G6SCWrgUctkP5l/84kLHRjg0iGD+L2eR8KFHtvBnTHwriP+aiMUiUE3F
	 EO35eiPrDqYLIFWTFcaI4ezeyH+BvdkZ5tsNsTLhTUGskqveb29Rg+K4aYwwiTe88i
	 UJ3Iv+jz7HDdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA10C3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067384277.22544.7043566239104673650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ca6966438c9232325d0396ff0d490dc409e7167042b3e9e813021142da48580
Date: Thu, 11 Jul 2024 04:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720673842
