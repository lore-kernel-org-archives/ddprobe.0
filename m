Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53655349B0D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785451234; cv=none; b=erpLYBSD+w1gIq2nfjGeP6wPFG5vYlYICGycVk7rC9AarIz2m3Zbf9Ol2dwWJtUBe6eiAWXy2bOuYD1O91yUWWyBNL/RsboQZBXuYrfwIq1bAIdlVg27UvMKppwawhR4VJDaFnMxXlOTH+7fGadgnFcZOJay3mHvUGipxMYCJ9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785451234; c=relaxed/simple;
	bh=w+kuItz1HqQq2b4H6WhrvJPP66mOc58DMUPh1W871FM=;
	h=To:Subject:From:Message-Id:Date; b=itnHWFOeA2+QvPLd6hvATqqiSw1wHHVbAzdBdcFjdIKYVCikJv7RigaB/lnAcSXiR0KKJPRj0YG7RiYxO9Hcyb3uoxOxRpDFfim05gD7x3enHqGAoIJqDsrnCOdNEEqE0LGF/lrD1k6ArAs/W417bqw/gf0jpxHl5DNY35gRQ4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEOtmMFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEOtmMFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3525C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785451233;
	bh=w+kuItz1HqQq2b4H6WhrvJPP66mOc58DMUPh1W871FM=;
	h=To:Subject:From:Date:From;
	b=jEOtmMFH+fKlTcQ28Q0fL+GlCwvYkZUwSuzNjjdQ3N3kQeT5lickOdwYz0UORJRCc
	 HRgfGXLSNnkDhL71F9lyxJr09hkQFRcb0zmQNUBeawt8OSN+b1w8evueC9bwBCk/TV
	 c/L6n/xbL+vhcCMtehVG6WylbyOEyYQFPVlCkBnoEak8pQACfROBmX02zBbgZYCKNB
	 rXC8PWkNrbAnCYs5hv8nAVO7QSDKJK3xBiOYE+tPJO/FWv73FZPRetkvIcc0aLwJIO
	 FoN/PuDwwleUt/7WyaHPRQA7eeJVPIwQ9/i0SSdiKwoINynHqpnilFUTp2ZbAl/ton
	 3YIpzU7fWeIiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2559C55167
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545123369.20101.11677317190592833740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4878f483d679dbbcec1cff1dc304ecf8749b5dcccfa74b9049716fc5742ee2
Date: Thu, 30 Jul 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785451233
