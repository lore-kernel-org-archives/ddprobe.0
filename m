Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F49B18E2A
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732846554; cv=none; b=GsF4jNpbFlgzo+qpb2gdIeG61k1G2NE75RSAaxxP9A7VXZIVlPd95nmMgDMcpa7ebcIGuA4ovog0nd6iy2GpxwP1RiZs/yyLDRJVJvHn26hZCD8qhSZHJg/hpzlTZAEt29KOieeuhS0anruNVYILQa8DmAsSaffnBv/01zhzo1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732846554; c=relaxed/simple;
	bh=ntxwpEtFq6yRp3QgjhlRBxHLKq3fPmpt5sD0nbWkvk0=;
	h=To:Subject:From:Message-Id:Date; b=Ykba9g/CP8AVkUVTjDpeIock9ROlxH/aQbo/AaE7jjKGRX6ejuEdJ1u+RQuxRJ/NcD9s6FjWtros18qOiiJbgM0oFM1sA/7Xyjhj6Pkhhny1mWA9iHh4zpuWhjml6PWSD5zqy7j9KPpPKdNQ1haaV1VeicA/Z9aP9CBe1YtTBEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Heecn7mV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Heecn7mV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC6DC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732846553;
	bh=ntxwpEtFq6yRp3QgjhlRBxHLKq3fPmpt5sD0nbWkvk0=;
	h=To:Subject:From:Date:From;
	b=Heecn7mVrSf8sU4Y0nbEB0Kvb2ZycBuE3ryYSVvhKZ6BNWEHmVLuSTxiNoY2pg9Zr
	 NO8j8OpHNmt9PofTlObMFt3PdeHUOcvr3rfNtIfGp8B2aBQ0Rp+GgdsMI/pA6nWah0
	 Sl2OZil1Ot/KaRpgHckAyWt3TAjsJd6E5XZx2af+WpHPD3f+AgnAKXBsZANOqNdlDF
	 iNBu8Vt3AJACWOSVnYXzQsNUVSOeY53QtJtsnT5ehFKFUAK/rw7ZM1kSubqM/Ti5DI
	 E69qg7TxfGpZ14XxU8gH7VlbTU4cruNR2TW5ORne9GvnCibpbXnYFB7F384MS1mSHS
	 YPJ3ar5uu2oXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998DAD70E02
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173284655361.14642.14022158696024367013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720ea87a19d936db13357d768600e54cd76a81b623bcc2f00dafe30b817846ec
Date: Fri, 29 Nov 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732846553
