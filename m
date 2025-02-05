Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B8615198F
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738798554; cv=none; b=sQwf3Q02LWJ5QrqYAQ9tj68fjt3f1UmTkDXgw8bNMSTPiDQjGlpTTmY39JmiA+VwKsYMSIrfQYVSv8MTk2chyghaGzNsBqt4Wh4quyd3DhqJNppqKhziScY7h4k1DhizCbh/GRTDIVo6NzN7FY2siEI2Z2bbdYGTecFlchieK14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738798554; c=relaxed/simple;
	bh=asIfsuSUeeo65I/mq0+OVt8adaCiDumgYNvF9yk4vm4=;
	h=To:Subject:From:Message-Id:Date; b=tmBv2p8pNG9jeu6KtCzlTIbC+sXXstc2YvC3/pR91hWQ/5Y/eSpX1SrYrTZTvbzjYAOUK8/8QGn1mcvTB49HLPEYRZB84tSn+UMeTS9FdZgwZKDj7gOox+D3QldVsFXK0+bZ3i/lLQJocx7pQX2Ta16qXQoafrX0TGj7SdgUjA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnOkPqhn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnOkPqhn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B065EC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738798553;
	bh=asIfsuSUeeo65I/mq0+OVt8adaCiDumgYNvF9yk4vm4=;
	h=To:Subject:From:Date:From;
	b=fnOkPqhnspbwit6KQjQKpUAAykwpr7ZR7JSIcPrYCYw/R4xQVgyZNYUlSlaEJH0Fw
	 u6NgYKILJwvI5vpB7HhmEkrfoHeuGXZ+f/9YowPPpsYE6+pgSrPSCtdn+qjbDA8jYi
	 DE3eulbfbhp5xsNgISjo+n5EEKdyuuY7pOGzJxvcYi7j/ZCqAdUTN6trhi3OyRPwS1
	 6ajn1fGInciVzZKFlGRWjAs8lbxkeNQ4Xlqyf/7sYdPqeuzrZP8wKDMSWzndBtyGXR
	 N6iDiCopvZZM3xVssM949MCqg/jm3PDBw6pe08aBo0q34l/UcP/oSxXSLXjlKkxpLo
	 hKmM1W5DBfD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E93AC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173879855364.26729.17739394480109505850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfa0a19d7063bccf2a3df413754f278b23005e1ad0406ce3ef786164e4c24147
Date: Wed, 05 Feb 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738798553
