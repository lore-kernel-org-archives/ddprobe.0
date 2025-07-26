Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262511D555
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753490394; cv=none; b=rtoY2yZ1StC87IzGvps73TGztK55/XhVl7NMEMVzrobxaPpwFDV/gPGBWmUoiP8SrAXCKT4hqhGPV94EJwxo8PSaYwOQlLkczoc5Jq6Q0MJB+GiK7PaAe8KPxE5dj++bXmUF+SYW2Nkk061rNTDn3FVBe1qrEJNp41KjN7N+dAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753490394; c=relaxed/simple;
	bh=KVrVYTMHPlLSFIWc5HYUhUE41yjSvQXFcEKktBHCdq8=;
	h=To:Subject:From:Message-Id:Date; b=FL/OMAtg4AyMEa7LZcYdO+cQWvlM5HM1zzAtxUkjjP3VT2NBP+l974yOXSRdlyHyVyfjX1jEZ53tsq3Q8S4iyYaHxkxWtImu5ClFhfGWMQrPWwL8lDbzd73ro5dK70i8RAUS7Rrn7et9u4tL2M0uawCyH57gNl0J15Ii50Jrcok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGZj6WzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGZj6WzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1420C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753490393;
	bh=KVrVYTMHPlLSFIWc5HYUhUE41yjSvQXFcEKktBHCdq8=;
	h=To:Subject:From:Date:From;
	b=ZGZj6WzV5bmVyj6hu+rg8MaWWuyStfWlSwCPEBxyZgQ0FCuf48sp0pK2LSbhyX0Ot
	 r3lfJHw0OhLwAYUnHHJ7FdxMZYzzdSqawrfCMt7oZU4tSW8/Ul+uTIyCdXXZTQoYwp
	 pGVSF1Lh05S8GY38H3hnUH2Qq5H+S0s7Et8+vs7HxI3UwfDJ9YPOqVrsS5pPbUjh6I
	 xrw3p4vUS4bTBKRQCGA/ywu6ZfP1GamaKm5Vu09wN4OkaMQh+RT8hVC1FwN8H3+a4G
	 qj4P+Tubv91+fMhrUCBv8VsGijMaRpCGoqu4bnoh1TAUQZoG+K1ZSY5alQN9VbS/k2
	 Y6iwoRDNPWsKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED0CC87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175349039357.4738.14161889237452222195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dffea6b2a127b19e1e3769258bfc8cff8c2513a3be89b3b01c8f322311a26d10
Date: Sat, 26 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753490393
