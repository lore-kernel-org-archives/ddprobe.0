Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ED3145B0B
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727227554; cv=none; b=GOxDbQ7GiBWeOyjoyY7jSbOb3BkpPMwygbglyTKBFqV7f3IBlhNqPOXmPcJeV0H6e8pWaoekUrLGa17kCBdU4mEdDhzYJoHkkicIeJk9uOHNHqTsP+CU2fN2qvr7BGh+TexponQh0+6S5jCz6LD3HZTBEAqo3Ed3BfYbbUedjA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727227554; c=relaxed/simple;
	bh=1f5HYouecbR/WyRs6wPcMzhtHpj0afZ0Yppb4ZeFplA=;
	h=To:Subject:From:Message-Id:Date; b=VZKxPBPDIzp8xH2Vilj9+OhR1sMPZjpSsnkHIeqy2mYgkWA6Z68HWC3+PFVAZB3bP1ZNJjce+QQMycqvNexmwpwQolwjXkbh0AvNLewiIwTUDJxZm5VYS81nunF09IffLc9looqkQFYtwlHNqcOSGUqHa3pdmlBZYXX5HSQk/0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7C9mimD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7C9mimD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE4EC4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727227553;
	bh=1f5HYouecbR/WyRs6wPcMzhtHpj0afZ0Yppb4ZeFplA=;
	h=To:Subject:From:Date:From;
	b=t7C9mimDO0ZdpQiHZZTD/z4NLrpU/Bd+lX0tP2syUXweyOIu/MLMMkln2VEjV82Jb
	 TNIB8XKOI7dVKhm1CbU1qoCL+I3iW9y5bgtyiea/mZVYzubXAWjIl2DN3o64Y0Ewio
	 CiR+CynXrsKhDNiqi9yQUVhmG2u80cUidRf8oHUVPKlGsRgU7zXJTAWlO8p4SXZ/s1
	 64wPSb7bNVG/I7Qpd8cyaLpN5Jy8IbW1SoZEO9cYx6SVHEMxYd7ObhN3mQLfzQiSgm
	 b8IrLdT6Pe7Zw6XNQlXNIdIG+6K/XurYToeHASEBahJah40qwsdPW5Dq4aWMdy1TIN
	 cmn0dzmRbodJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9456FCF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172722755358.20023.18044265733528658432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01959559760cacbd9933f2a5bd815bd8641ef66afd6e9dc6ef79afdd5689edce
Date: Wed, 25 Sep 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727227553
