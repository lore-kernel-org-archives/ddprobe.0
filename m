Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7454CB8B9
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791544834; cv=none; b=me1u55mZQGkRpyfpwKNButEJIAt5ZYrWS0Hir0bdrIErOc7LhfaNNgDl7kRwcWNgsxyaJwJ4aWgiqvq3J+9KQ0R6Bve5Y5lwCOpu2SY2PCMy88mRYM074S4oHl8+p5JhFOucvB/Z2FAV28NmsOS0OLQir3QXDACpBI9ZQBH2I7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791544834; c=relaxed/simple;
	bh=O3gOzc+yIYbnwriivtWYF12OkYwR1PQxEsV/fatdn/g=;
	h=To:Subject:From:Message-Id:Date; b=iME0hjYXIkVNN1drAgWdHA9Okh4LnolN8GT7CWEh0ClekOpR0hswCU94uxFrQYQK5dCAOYlx0VKsoxM7ELdQsJm3RwrS0GBuPlcB3Gl/jndAo156v2w24TEBGZhDshBpcsgopBU6NdfqSyb2cyOcAWXPCton9HTP7YeBAdv6bNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8bRosg1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8bRosg1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC927C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791544833;
	bh=O3gOzc+yIYbnwriivtWYF12OkYwR1PQxEsV/fatdn/g=;
	h=To:Subject:From:Date:From;
	b=B8bRosg1vdNPSH1Bk9YJRcQSkgbOcKvnLos5YywFRfks1CpImvkqkP4O+oDod+GEk
	 L17q0Q+eSGA97LtZu4NWTOtsAQMTro9g/dGdHA9ZbakMuBUbGLdn8nKEs/kxnNljLW
	 kRCP555ChfPoGDyZa3hoPcp0zx0aXaNm7BLqLAUan4BrJaNnITJZA7aS6ne8w2xEe3
	 pbj/HbLM5+kWLYfP0Ol3sCr2ILSQ/qRTWdgR7pfeTxIqlFBNBxS3uPt5hDJ8TU8zjV
	 tn29ZZO19M/QlQF7HnBkdeBqz8hApxop2I1wc12kirNu5I4JC+5ZSZIU3eNlE2Ag5q
	 CrsLeul3njSAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E75CA6018
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154483368.21223.4168385535687735287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08af2ca0f92fd343cad50603fa66cf55f11167e50e126a523df74b6e460bb958
Date: Fri, 09 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791544833
