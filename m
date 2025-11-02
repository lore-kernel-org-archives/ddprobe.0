Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2597E433AD
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762053594; cv=none; b=tZw+Xa/ONF5U6pKsBgneI6BKd7cyt5Crq1nuJSm4u3w6+l4eljSByeIHKT3GQkHtSLVvpOvFy/MTfsxPZ9rfhPb/kh1yYg8JuYfghzVnfVcS+cTVtu4nE3bXZfMpTGMmuR2v7e/W2iUZonmJ5d4/3+5QiaJmZkhP7sSI9wPn4OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762053594; c=relaxed/simple;
	bh=6NGkgMS7038R/aj2Me7zoJ78iX+QKSMvmOeVs199lNk=;
	h=To:Subject:From:Message-Id:Date; b=ZDju4wce1wX9Qn+LY7boNUMsAdcyURRtaP3STIr4fww8/J7HPCNamLw52Ii/dV9HDoKoeWlsxswxviORaS/fx1hNMRyML1C//FINPMPdzUTcKR45BvCnqWsptIZ+r94w+cQIk7HErzd4dwlCuiAFXvQRHKh7Usl4phZjyDGMgIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUKodc+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUKodc+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD590C4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762053593;
	bh=6NGkgMS7038R/aj2Me7zoJ78iX+QKSMvmOeVs199lNk=;
	h=To:Subject:From:Date:From;
	b=CUKodc+/O7MqYkYJLOfXrlfQ272SAskWfMgPOemCxMueTlYx3w5Os+ZmTqQnn5qJM
	 J5q1GXV/qVxBOGyHhEmwOpdULLp7Pyd67kmYIPlxAGZr0eeVVQfIuMyvoURW2fF2/b
	 V3sKYLNAIQ3i9czgIRevGMnXjAYqlS6tj2RjwL610FsH26DnArCjOkC3RnadY/BFhS
	 MVCtvSgT3B3yZrM1UUJrLMg1+brT2HpSxSMipLaZw2gxUBI5iXImkJw+GpbEYWbmbu
	 XwMMFqdnOTMxhtuqO9+bGzJTwCAmSfi0tcwJBsC1U4tnPiqby+mO8LXwqqd1XRmmOt
	 2obCAJsDsMPBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99912CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176205359359.18631.8550782505564949608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491c2586b6cba9eab8dd4e4f546adeb86526eacbca1c96789a4d32c0613ee3fa
Date: Sun, 02 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762053593
