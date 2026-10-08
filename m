Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2572B2F6562
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791432634; cv=none; b=SXYABxO+yWzSZpfv3s4mV56wFipEE0W8BAHlFik//Lxj1IPz4o5GOzwBxCiYxn/34Bz9P2z2Z+o+U0CHP750SSfyLBsFlu0YCdEKytn8v9yKhN/GWB4R+7bnA1+sxK3qsFWcwVw48PgoieDljEQgbnhrbecMGPMrzgWmfeG5DUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791432634; c=relaxed/simple;
	bh=zxvmvRmVRCF05ngMRplghfiAS3w2F/TMXvQipzisPAs=;
	h=To:Subject:From:Message-Id:Date; b=oTxVAFX2Wk6WdXQ7Rsu8cH8P5nMYC0C/6hbfrFiKYCb2Xgh5Ac7izsnRKII8LbbecaQPL+koduTsoZHGiveJ5jweZDlwnktX115Isc36gJFo+ykSFYJLUey8P83lPGuvdmBwOO3yNge508h/tEp92woQ/C8Xy1AhRxFfp3Ecmhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqfgXDjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqfgXDjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE075C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791432633;
	bh=zxvmvRmVRCF05ngMRplghfiAS3w2F/TMXvQipzisPAs=;
	h=To:Subject:From:Date:From;
	b=NqfgXDjORJKmBaWvD1ZS+gg/GY0QdoRajMbsxUCGrDlyZ0PeW+hwOYjGYcluVHsdO
	 18jQRJKyBCqBIed3N+J+HOw6iBNHGZ+3QbGrvq/AoJf1deuzJSumJuSk+JivvRdBwh
	 gRQIHlulezz9ohhWQJvKBG5H/obW/PTSU9WZnh4WzpedaI3s4sWV3EK1fcFQjuFcEW
	 zphY3nGQigiNwlw/aHZz1MsqR8oARiIrupZKdyHY9jld2o1STF4O6A+O0mimJDo7nG
	 LnPBoh/J9aF4ANliwsP47wLyCoRQMZsFlMrBsIWZQerqX9eDbCzONiKob50tOltTSl
	 PqWZRVFviozDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA580CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143263368.22412.10515817566072293288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9289f5ec85b85c0448055439976197452ef51b3042ca2e81bf9016a746ea9d66
Date: Thu, 08 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791432633
