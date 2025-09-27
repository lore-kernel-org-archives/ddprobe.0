Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CB034BA44
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758959394; cv=none; b=KLwtalE32bGWOGq24O4Q2A9HCs1YDDeL4CTA1uKnYiYmxeyZV//rq2SC1DnnSlQ+EH5Upn9XeznbG/LC5FB3+26kEF1OD/R8rMr++h4XqQm4HxYSdJWiOOzojVICrzPeHUaJ36LsL/MQsJPpasVnzN2mdH1TtCCF83ldUNM2jqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758959394; c=relaxed/simple;
	bh=k4K/dZBq6pB5OZRM+wpV6wJNjGpgHRczWymD9u8x3fE=;
	h=To:Subject:From:Message-Id:Date; b=lwi7pU7//mNpkzQbOd1al2gP19aNf54wO/AUadY+pVYwYLRSEgNE8lw/6t/NDcaWkKXzEJEw97PcwsB2vShyg/ahHdNqJG3EnqoURaDDcooOaxG92aP2DMdM++qNScTSXlgzkGtwnh8PiQq5B8doMs/nnl5BWdW8Hu3hEcmo0b8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMK5px49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMK5px49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C0DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758959393;
	bh=k4K/dZBq6pB5OZRM+wpV6wJNjGpgHRczWymD9u8x3fE=;
	h=To:Subject:From:Date:From;
	b=HMK5px49um8Y54LEwlPbDhPUG1/XwczDg8j/nVpD9aFHr3VKtyyGfBRGo3pwjpOww
	 sdJ+0W6bayhBqysQZ+6pm1ZTwYfN0+czrG27HwkBtNiwJx2asRlc8/YDIMe9fuaqd7
	 5G0Wx1I3OVY3SlnoZyR91lS8rkLKV/K7I3+6HUp7q9Jq4DauC9xGDjHbRxJDW39REc
	 TencVhX/WK47o84DqcVvkcBKcp5mSmX9rmrsE5pF1t4ti5zs4AHrPHCfRMXqRHD7uL
	 P/xmBHfG3v1n4D/4QrNYkYKRR+9UP2AkHNMGSTpdZW3yPXzIi/2LxD7QyCkYOSCNOp
	 VpsRsufwk84+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E860CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175895939359.8168.2756260549719175167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f88a8ef7b55bd03576ab9968216483a6d46039212301173a3a68af5933345798
Date: Sat, 27 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758959393
