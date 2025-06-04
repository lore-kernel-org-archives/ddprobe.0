Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366C7175A5
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749064194; cv=none; b=tsTFVd+Q93sFWHB2YvZYVgVKFUQfVNKZbKMFvh4CWb6rwKTB2lxIkzWLkeLbJ9zEMFyzAngSfvGyz2du+ozSzbjYyZ1X6Ey75kLcNgt//bfmJ6fZW48ed+k1YNiDmRwG8Iag6nYgSUd9nBIEYPqu7pEZoN8FgVXjuUCC/4Zr87o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749064194; c=relaxed/simple;
	bh=jfSrlBohTxt3PKMySTFWMsnVL5clg84LABiwKn2ed+Y=;
	h=To:Subject:From:Message-Id:Date; b=mijBECxYDBsPvgxH/oj58HY2dtv2audp5We/bYMs37pxsqRCOho8bQ15GijL/wyOdSw3L4jsmbJT3C/w62gLVNm143pdFDZCpvrNI7XU+lltxfe77oewyAOU9cPYOvWb2Pf00Sh+gnzT1r4rPNqZii6U6NXhhPhSRno3exQuOrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Loy2kGFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Loy2kGFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F40AC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749064193;
	bh=jfSrlBohTxt3PKMySTFWMsnVL5clg84LABiwKn2ed+Y=;
	h=To:Subject:From:Date:From;
	b=Loy2kGFLK4sW6xxUB/+jFzHLcFamwo56UzeMQJZ0YtSwWYDdklbsWHMYH4FDV0Wwr
	 MV5iloal8L8IVktH2ZTnFbOFIuieoZFakEvgYpzU+elfBMQ9G1cC10E4i6qUV9UhhC
	 fWnhacSCVvRCw0F6Szw9uStita7xRTISX5k76eTHYiJcK7hwXBTXs/n1Cs6iMFdhRC
	 LV88tk3azjOaUKoobm6zw7AsR616jqWBPcLErFiemYWpPpjQKvekjmIXxw0buAeop+
	 ozLSVgFZJU4yDkMdhjio3kGap454C8euALLuShQ7Mbx85Foz0b6ul1R7A+vrj4FClq
	 yAlWLtEfESGzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CACC5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906419358.31802.17500911723668275945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c245c71b81376c0ae4c703f9847b284916b4f9ca8d83b3b3bee7ee06e545e9
Date: Wed, 04 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749064193
