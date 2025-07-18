Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9B21C862D
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752875394; cv=none; b=c/2ISXpbptUq5Q7yrqLBCPq2W2H9hjuNIfPFJlynqZtnBiGi1UvpsiYrJBZOhJsm5+ydUIUcVhJmksv8qvhZFhAIimpdEDczm1HMHvGizBJ7CCTZUVodgDZdBss5JHZR2UskOJ5+Mx681Esk332c+lX6zNlxyvvQlIq9CO/fARU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752875394; c=relaxed/simple;
	bh=WsHuvmR0hdSeB01SipHVakRQFL1vOvCI0dadXKvsb58=;
	h=To:Subject:From:Message-Id:Date; b=u1D7n4Vom9L2F8yB719qkz0l0TlSy0jlVyhBPWkrl7fqKkcuBlpi81iagSSlWDdGtoXJiBSFlaWFGQJeH/EaZcGUkXrpu9eC++DOsIY34J6GDCQvIYxBRjlIUYj1AX9kHcsMaEzbyna+Dx4pjU+3RA3RrkSfLShOeqgTQz2vbP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jd2Nhh8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jd2Nhh8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2400C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752875393;
	bh=WsHuvmR0hdSeB01SipHVakRQFL1vOvCI0dadXKvsb58=;
	h=To:Subject:From:Date:From;
	b=Jd2Nhh8YPxHszkDHEKwzcqfQzDUw70sknGbKPqQxXwl4hicORm8VLsi201XKJPUF9
	 4mtl/e7Z6rTuNt9K6iPSwAXtQ745RKHLazLbN1Vb8JieuakLD1SvA330WckU0BZN+e
	 y9mKYF9K5g+54q3CAis5IXutdSJCtTqI2pfuoXfeeCloLVlzxQ5boOIyPXr7YFw7YZ
	 wYyW6pSH0NYNbrRwwjdoReTT2FvY34kuF32GAUME0TxqPVWGAz0JJvuZr9P1TMOTvy
	 V3QUX7kclROWGSwTdozTZPRdNGa+Z572JoF84SRe59OOe0fOWtkAM343eoTUXhtVmc
	 TTZ45eDzwJhRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE29C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175287539358.17805.7600268630226684359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a44087f445d984c562b82bc2da1c7248b788737a44f5b23b4f51da680cb5104
Date: Fri, 18 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752875393
