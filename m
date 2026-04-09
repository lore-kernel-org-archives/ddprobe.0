Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD891A23B1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775705734; cv=none; b=in2p9XDBeJwqEzJLaM4jVhO1SZFuukoqx7DgDyba8gqY5rp7j3E+8WGUHYzzPE4UUJps0qR8KgOWxlx2BeMdfaI4Mu3HlpauxjLJRxLQZRqnsfUIyruvtElLqGOD2sPnITh3dfCzcljkA+RRIPGPqbuMg4fm7cDSYb7J8PYh22M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775705734; c=relaxed/simple;
	bh=U0h60zWfunNv6I1SeltEiYVgKZl6IBsCFvF6szQHqkg=;
	h=To:Subject:From:Message-Id:Date; b=WrhUECgJvpCNltzKWdMUEvlbJdq9P5EU/jVRy03aW+H+dgLZ382+Vezn1og/tEd5Ohnb7kkphWFHRLzUAndYVrPR7kQgGXq5gInQOzv1QhfRHa+zZFkPdbLLAvtnwrf64P5Q0Hdr4GD8dr2aqmRmSfuGGMaXLlOuffSkYzbBCYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HS+eBjf3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HS+eBjf3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC29DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775705733;
	bh=U0h60zWfunNv6I1SeltEiYVgKZl6IBsCFvF6szQHqkg=;
	h=To:Subject:From:Date:From;
	b=HS+eBjf3ePCcg49Mu3o0NGdaCIlEK6FzBjiVrZGBthGTjqTLJuRBGxcZxfygALDYV
	 hBTwWVoIfL80hyq/aWN+ieyIZ3Z6VVlM079m9UYT7jLgviF426STXme1bcouECedI9
	 yx1E8lr7uUsy/uL+OfrUOMhrV/PjJpX6x5cIJZUPsCFMnDCodvJbfDhGomC8GYaNNC
	 yFgtU1XBly1ZHfL0QVybJ5CkmLUNHdOnN8DRxqSM2TJd6KrpnhEEGD6IpGHZz7d1O6
	 yA0nyvnp5oN/7AI/IgkKPw0ffucwJHukAhW5K8p4lM/QGHYgtrYU9qySFSlbvGDqKU
	 ve9H9QkIirqRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA110E98FA4
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 03:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177570573368.30606.17574260892840668885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34781e27c38f94f03915f31af01d93dfb1716562ba310402978fba77bda34e00
Date: Thu, 09 Apr 2026 03:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775705733
