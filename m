Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBC2288C3D
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765995834; cv=none; b=anKTv+Gfy6Kt+vaxSvGzRpPk8IWsC0q4vei1WzASKvsu4gI3n/eaAZnhBLiax5S6SBVg/zgztrAYzNmQ/XyUgETcy1ToYnUhVsOBd2P+hjhwis9fgt5Y+ndZP348ocUSZSwYA6It8p0yvuWpemaho5kC59934X2jGdieYY2PwXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765995834; c=relaxed/simple;
	bh=OR7KDaoXDce5cg31AMSmm8ZDfDgmqUAxCgYUXabfVpA=;
	h=To:Subject:From:Message-Id:Date; b=eNATuhEsR7e6yVBNKINZC9wTiSy4g82q1+Zt5W3qj0MmtdugeeIe86M+/IpLnz2d6IlZUPXrGAZzIhhYdEc4kmkz+sxJTD5fLiV5xO/sRE0nYN8c7FP3WsBx/y53jeAOinMENzLmnZtePfbcM2QxCEHHRyVnqFmxWLqgpgjhOpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZOct2jV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZOct2jV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5FEC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765995833;
	bh=OR7KDaoXDce5cg31AMSmm8ZDfDgmqUAxCgYUXabfVpA=;
	h=To:Subject:From:Date:From;
	b=WZOct2jVHE52lBfzYc9cf4PHV5GW+GaBecM++Jw6uDbRtAD05WFhtOq5y/8+bJpLV
	 caHAByLu89J9BejjISv987RR++xUgKek9+e9dmSjokj9urFu8KjzPvvxsdsDn+jWX0
	 3KhT8yOd7nT3JUsJLAzqhFuIBaUtHX6fu7VkMav3qcLTse4k3Tle1zksQ0tt0XD7tl
	 Xc2e8sEuNGNGp5AF8xa9LZ6ltPKoekfJJLHB9oMxnq9aKrGTvxc09csw6AXM0ZL+D3
	 V00qB0jD0Vpff+xedS6mOTeFSUZTaYQ0ZZAL+8JFz1UpQUs75NKWDz+3TDDnT0o5uW
	 8AkZkGRV6V5dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9BED66B83
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176599583359.946.17790187397823427625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f372e28b15da88abc65d35bd47d8ba2beb411487d2c51e63c5945ae3df1d16e
Date: Wed, 17 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765995833
