Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB8A1FDA
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765618374; cv=none; b=TzIKX/Q4QW9RBPB8amDisevGIgqDZ57IocouvqGq/+gr6AfhRu/x0q+uVlLvjrsSNcqfGdNC3seQ8dJ0610FaeYVBOA1J0kCGD/0DSC9SNM1OR6oj+4IBNpjQEQi4oj4J7cqrMtJHvgupeHOGTnldXKaQyRehPAAqcVtUn725hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765618374; c=relaxed/simple;
	bh=/Ar1WtyoBA26LOQ0SZ+gC6/nCHoiH17tHgw7TFTDLgo=;
	h=To:Subject:From:Message-Id:Date; b=IIBNIq8Bxlig4TBcsuNiwv+F2JPFxmzEkEMolS+xXvKcEENYsLnXGplH/BEk+8RGditT6vzReaGdzYsUWrZwDu/t8ESRLfitvDN8Ysq6RwE0yIaERX8cmV1kdwFqi/6xOHIzcIBl9fwGUnHPXeyIpATJ6fjjdgCPY3BDAxiWwLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7ux3OvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7ux3OvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9BCC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765618373;
	bh=/Ar1WtyoBA26LOQ0SZ+gC6/nCHoiH17tHgw7TFTDLgo=;
	h=To:Subject:From:Date:From;
	b=t7ux3OvOq4RIxKjIGZRjDLnnycuJGaBHDO5WN+qBUxL7yZPsMIV8iMoLdetNX5/pr
	 MhtLv3tDsANkxGPESHLNsJ0zATB2n2/my82e0AQmLrF+984xc8Z/jZCNdDhkJk1y+w
	 fSInflSJ+39iPUpCeW9QJUEYyzqkF/Rcbm3GenaAWnuAM0nyBlUN1/ee6Dqd94nznV
	 vj4ocZCdIMgSXH0Lsu4qMZAo6oh1Lmakub+3jZWgBjGky4CkmqE/tShVglVBlJ3cdD
	 5LWX58G79t5413Ak9rT+mPsNwANGgldiJxjTGJGHZkdwBMgtcKbGxqQoRL4oQXJbbZ
	 6Yf9vENpjT4Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169FD59F6A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176561837358.7514.4571585061203526569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c988dca01deaeaceaa4c173a9e8f11dd86e3ccd0da0f3f7383c1a976e7858f9
Date: Sat, 13 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765618373
