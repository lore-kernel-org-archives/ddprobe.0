Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC8F17C91
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731257154; cv=none; b=Kd1l7/sfszXS6tkmVKaomR95oWw8kHnBuCfruM/zCg3gjq5JoLTfH41rd3K+Fd27EKbf9DjUYg1p1ji5F/K+V+p0Ch3O9UCr3WbG0qk75grzK/EdzZtlAUerIkETEJmxmjPMXDsbCk6/zxqwiE+w7RUQnHFciLPi66msiaclS40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731257154; c=relaxed/simple;
	bh=OPAL4nxRGFEPBNjV0GUUxksd57Ld59xGtrTp6JFJjHo=;
	h=To:Subject:From:Message-Id:Date; b=m+g5usPlHNfVzeWEOgKOggxktHoJwel2LRIpzGpG01V33I0Vcgw4ZzBGGaEMkaMpdLCHi3gdcIxZVTbanr4XdlNg20LcOGCnqrkPMfhuBcA6QFcDlh/Mpeq6Bxk32xlCCW8lYZMydgcv+TGB+SXHkPj0s8KsW+H3qTDfnKuafgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOK2bjUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOK2bjUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49B5C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731257153;
	bh=OPAL4nxRGFEPBNjV0GUUxksd57Ld59xGtrTp6JFJjHo=;
	h=To:Subject:From:Date:From;
	b=DOK2bjUogrQsAMYUuaEGEOaVBYxI/j74wXOIeeDRupv9iWOsmO79/DioAyhc5YFR8
	 Qb7fV79jwf5X6OaSzXOv2p4ubwZ9p6u8lnvLBJfRr0opcb1JzEAUz0hmqT3z4NtbEP
	 wsVsrWAFTgKCsDNfHkTu0BYfe19GKMP6ZOy36qJ4IcfHW0xaFpfaiHTWfukiIFoj3V
	 y4QrYH7W0xhxpGspKyZ4/UUQIHxrck+9mf1wg+IXMVSC8vRyklJbDdoxa23Y/xFv+O
	 5QuH9aH/pEWDvJd0bsPrhn0BVJZJCIb66tv9G9YiEQvULzMZkwxExJInV+oIFkkbJK
	 Eis6lzFtdifnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906F8D12D49
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173125715358.18580.4865258365927199602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a943b8db14b975c0a560d3c89ff33d84e6d0af49e5ef5ee9f31c35941530c79
Date: Sun, 10 Nov 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731257153
