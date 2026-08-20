Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A491ACEDE
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787193634; cv=none; b=OL5dk0PbOv8WT8o9Q4W1gA6YLMyamAG6HacjYSqgq9Vv2Kz8w/7HvaLIlzq4vsVpVdb+o6kxXWXWB8yBcMegNnM9blvRN3hBw9ALbO5d85RtXyoNC+AeIwrhKk5njtJeh0jQYIqJLbj1UXwK2FMT8ThWsis+A8yjguCzcQsqOs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787193634; c=relaxed/simple;
	bh=InV6qgGaaX/2gs04ra1w7h1KMuc5s7LFIjYCnpJBYwo=;
	h=To:Subject:From:Message-Id:Date; b=mdNH8eYcIx+3eZ8fl+FRStqg3dMyXULgXKoZg6qpcpA+NpybeMBuzsAViliv48ymOmx4D/X3mECHgRgihJ3NRYWMD0SsE+1HZ24HJADjuszcG2NEi2bHV4b47d5uPkNCrceZ0/JYTxlbwAI6f3QW3WS3H7FKdd4tF7L/o3mBH98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLFeg/gY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLFeg/gY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1CCBC19425
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787193633;
	bh=InV6qgGaaX/2gs04ra1w7h1KMuc5s7LFIjYCnpJBYwo=;
	h=To:Subject:From:Date:From;
	b=PLFeg/gYVYywhm8hdSxVLWL6T5U3SMXms4q8X2c3KeKMge1twuIWkJpPSDTloDIU7
	 XRatt3zBtyPYfAeBtGFUHOYiRrIhglLYNvQcguI0Uw3TlqraWaALyVwX68R+ELG2RP
	 5BOMGhXS+vD6jTZ5cAX9zmi/RUyXT28mNdm1Q3HwBgrUynkW67oeQVI0+NFHEooI9H
	 ifVrrM+WdZloypcW700IGjR8Nd2rLsLUrISAPkX1lI8qoyMbzoBIFNKjUVVdmdAFes
	 DPHfplsG/xTFGfhnNJXdG4eF/xAKbGKKpotur2Nb/Pj5cAd+3JUcrwTfnDVo0cRuls
	 DA00hqQ9vvyzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA0FC5B572
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178719363372.24333.14937711268445120316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cd0ac774628d305c45cca710bc8241378b9c009bbdcdffbc460929cd32ee5a6
Date: Thu, 20 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787193633
