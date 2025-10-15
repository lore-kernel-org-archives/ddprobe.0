Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E7449659
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760551195; cv=none; b=SsddBbtihtX5QQWN9OBDIu8mYgUn4cl+dbbZ7/uM4vjg49ah8FZUN/vtgnT0yvUoKNZJGpk2fTEjXNqHhmgoU/Cq3EwHEZe6Ef+n54mzk6BtZgV8cRb4sPVxBq5jP9WX9h5imOG4szZkqoadBWnbH2kaOmKQKvPCuNDFZtb3etk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760551195; c=relaxed/simple;
	bh=uez0YtdJwNWQo+ibWvM5MpjYYm/80lk7txb1/dqA+eI=;
	h=To:Subject:From:Message-Id:Date; b=WgmiFsbmpkdL3RBOE7jONezZIaIQdByjMP0OHCtOXUTZlIp1R7HqTXtvD+9+sfnKZKKYiiVAgA/Mtog7p3lrpdfayExYe5Ju2BeGOVT6qJ0O/DjE7+5q99NJgqpss6RxUbKz+zSyy3RlG7sDh3/pDBsLcpBrBA5gLOnUvTMk4Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxybxZGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxybxZGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6825C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760551193;
	bh=uez0YtdJwNWQo+ibWvM5MpjYYm/80lk7txb1/dqA+eI=;
	h=To:Subject:From:Date:From;
	b=fxybxZGg6pOI4BGUmLC2NN3IPf9F7ybfQo8IVppknTVmNC5nDvI1RLtl9Y5Znv8Yy
	 OkhfVKUqt5z3zotT7hQt/7xY5HQP7gtc8la2jKRwo/DM1g2/h0Wyoh+WdcKY9QOqdv
	 tZPmmUIinVA7aAWxz17kZ4meq1aOz1QLqjiAvGCm7lLm2ruVR6OOjxSH/IF8BRGJt3
	 tNta+ipkT6skFjFjGaASwoDnyCc4FHrLoECK/8QaMH3VJJvr/0YtHQIpd6LeucbBtN
	 1R66jTLIHaBJUa+yt9zPos39kt0YvbF8oIFdDkE/yoJfWvSQZjBB4RA97KgphdKQ+d
	 sVSGK2UmjAXhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95151CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055119359.20177.1672585074049101179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933ac6f5fef85876436c3f96e403d38c9e82539afe5b7cd8e670ffee324ac441
Date: Wed, 15 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760551193
