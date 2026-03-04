Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E9C242D7F
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772591094; cv=none; b=cTBe9SgPVk7LFFt147kF9nuROKngrG91BcqXeYJfLL0f1u6+WZfpprNXepaN2IAqbUAF928XnHrOCS6lQ5ukbubRJtQulBBdqMdvDFHXNFdGpGvWYs1qm11mzP6dRW2FLOeeLYT+nLloJ6GX8TxOXnoLfeV1zYkh2JRijk/gWsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772591094; c=relaxed/simple;
	bh=6GrdrXlpVfR52wjSExC0Y+tMx//14q0SQ/4VqRENYpk=;
	h=To:Subject:From:Message-Id:Date; b=Dl/PT2K08FmFuuJHr0fGV7vE18JU91yWUi2H0y2v3/JMlHtPpn9zssqTHD/QO594WZEi7rwzgSTfJDxtsGPmbjJ35r9Ir0FLDNPB0BvpASBSQvO9vTFMzC792oP9WCZFyS6h2YjBIzfQ1AFdmBIOqzKLe9qHUVProTiDRwuelus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ioQzrknh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ioQzrknh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA72EC116C6
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772591093;
	bh=6GrdrXlpVfR52wjSExC0Y+tMx//14q0SQ/4VqRENYpk=;
	h=To:Subject:From:Date:From;
	b=ioQzrknhpa3pTBQ+wpY+aDRIIr4Gt/MwCccWfZRZSQKphAWJGF2X8ekGndO9dJM/t
	 hljpQ9wj41mueaZmV+22l0L3fTyqipxrSK3q0axcz4l9t4vQLCcpStwvtOzfSOCIbb
	 WAbI/veUAxEOJy6OidH5c1ewn5bs3SZo3Z5Rnomjro+eW3/auNUSWCsHOVTnzBsLGN
	 M13jbcIDAvJd3gFhDZ4zRwShVhWJPwHQpKOA28pYHPXp8bAgtzrfO+52OG7si8Bxfy
	 OdHL7gOUz1FEXH9PlN0uOV8aSE5tA1w1sdRuqFWDBVpIQIJS5p8xBBlQ/HY50sHT9W
	 ac4HcHxL8ZlCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A455EEDEBFF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177259109364.24565.11537960751189269451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6021a6b4d8f6f9995de4f52078b0a9e88b20c6923cdbfd3d41f0b14eafa12829
Date: Wed, 04 Mar 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772591093
