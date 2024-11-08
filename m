Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3F929CEF
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731048954; cv=none; b=VoQw/ncqnIgSs6LI5PcHQs0ScK5+HXi53NIcWIDnjpMQzjAONUJekHQbUScoWaZMWjgufSE6tTYYhlOQzUqLA0hiNRS++/ud17ucSwVOL8+yN/l3xQYnX6Y827mmteEncuY64fhhAWILZM6Gi+QzBy7PLHGhFazE2ATcLAdhH9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731048954; c=relaxed/simple;
	bh=kB+GW/CE2vF+Cvi6PrDWrJlAJ2DvViw0DLmPpRoSQ1w=;
	h=To:Subject:From:Message-Id:Date; b=kUSuVRdZ4Kt/H6rffwelJXl46ULbsLg9XCJZfyaMwDvpZPs2I4PNjRiLHM0HL9+tPFP9HPtQkEuWFfGqWZM0d0O9639c7LWQvuV7euA+OAiZL5vPRn2ZSVHX6RQJejJJ2jf+3k6ZZ+0pl7yyR1icgfThctUm9Q1fWROl0w2Gw14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgyWhqBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgyWhqBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98CDC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731048953;
	bh=kB+GW/CE2vF+Cvi6PrDWrJlAJ2DvViw0DLmPpRoSQ1w=;
	h=To:Subject:From:Date:From;
	b=XgyWhqBHs5s7CA0txXBpZRibjlpXQK/zi6KbGDsnjHk5s0dPd4dwTdzN72rtAigrl
	 ud6KBJ04mnCJwZ/mCYpnM8nlkN272W+rFtzIV8vZY3As/GYK3Jul80mX1SzWy8rx+5
	 PQRZ4/uleDcCmDkQFtd5L25KL8/IDyd7SUbacoXodgNbtgi+9po0cKHy5VeYXKGWGq
	 Rwgs24KwZVt/Df4a8tAyFa/wvdIw9yw8jeym7D8YwcJusJiMdo2DmgsH137qUqy84o
	 qjGudJtqUt4ntlSpcRTPrqHr32ZIs2ig3XV2ZZfbaQ12heQ+rQkgklWoummK6/NqXJ
	 lR/sWz1r1Sz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1CAD5E140
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173104895362.17422.14354709248016170043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce330ff5f118148ecafac7bf926d4c398f097a44391f998a575c16738b4f1b89
Date: Fri, 08 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731048953
