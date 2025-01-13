Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37ED91D63D1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736809554; cv=none; b=OnprQit6FIgOQoaH/g+jC1Eo9vcF3cNcicMaJGynIuwEqx/sS0PRddGyrKi3nVBuCW84wSU2mBvKh63xuNNJ7cB//Gknb8DmLA35X9OdVD8R+kjIgud4/i+1XXQPDKQiL/O4kH4iB5dy5auRL3W8fTdtz7ILEfBAaXRShee6GQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736809554; c=relaxed/simple;
	bh=+A6b1cPHzh7Rjsg2zmXAxt4sE1dBoBRKsG5LzknHMak=;
	h=To:Subject:From:Message-Id:Date; b=m+CGQbZz4muUtMELj+bvxS47od702QFj0uyLtetnBupFTmPaX1mjG1KT4Eu85BhWg7zQnteaWq7O1QtBPmP4+NwYYLEChPL9LoAMWTjNg+uM5z0v6EtR5zafJzI+5Vh5GqeHtdE2tEYt8ettpfzIhvNxtC0aovtSi8Crg1vgE/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiHAFzHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiHAFzHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCE7AC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736809553;
	bh=+A6b1cPHzh7Rjsg2zmXAxt4sE1dBoBRKsG5LzknHMak=;
	h=To:Subject:From:Date:From;
	b=SiHAFzHR54cQ3Jyqmr8LL8pCw2P8kg5HWRDeBEBCM8j0APcxDuPoQAElFAu1QWA/E
	 n8FRpMOrvAF8LvfhY79QgNkAZNIPk57dlk/PJ+trQ5mMTSPd68taHDIj2zRnlyHvRX
	 rVPfYsqJqowoRpMDUl9GkBbCFcxbfcDP3zxOWMkXcAQENv//xVORykgvpcxawgAhF3
	 IBeZg91n1dDKmbHdnKAwwlZAPVsN2jixVsNVrW8bcqWQf/I9TgyEXzoTTHlyamLe6t
	 //KT2j0yfe9AvHz3TyGraSgNFVbFlhdRzgH5R+ec2eKDwNnAG747bU30EIERKWs8CL
	 6WQIvtxgx0gJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5641C02180
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173680955366.22196.13850937659811159748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfbe75f5791d235b71846da3f142d6945c1f4dbb09348106089c4326051c830c
Date: Mon, 13 Jan 2025 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736809553
