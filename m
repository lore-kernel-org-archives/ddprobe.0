Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8F2329E7E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769824433; cv=none; b=DQWXfVEmm1D6vNLM4CkoS5G1agrLY+59jAkRLxDAc1uE6syYw7Ioo4xaWkjm33gJo8cyyi+m9wyXNYmLfi0J6PcO6C/RTB3Cv1NlyQWeBvxdGmooBKxVZBfEDYdwqsyBluKBEq8RVeCA7iAq4jdgDikXaOdcGzRCSHgNFQpsxFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769824433; c=relaxed/simple;
	bh=osST1F5nXTy5c8TpJQvzkgU8w+jvkFzHXJPEbtbS6Lc=;
	h=To:Subject:From:Message-Id:Date; b=sRds5SdP9NbXrAEmpy0Ex3jX/jTdBiVZEkH8/owdHxVHQL+BE8FD9GYBYYfau8tpPLYD/DVdEiOvHVcwnOUQtbcvclF5Ca0WQdHhWmJMw9pSwzmPy1B+cL+Hghg/eA5AI4WQZnzKTsgYEbT/mj3wjQowMcLjNTPSFjkw2zrBVEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mNar5mre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mNar5mre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7FBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769824433;
	bh=osST1F5nXTy5c8TpJQvzkgU8w+jvkFzHXJPEbtbS6Lc=;
	h=To:Subject:From:Date:From;
	b=mNar5mrea6c3vLfb6QMdaEvUnjYWAnf/VW7MsT4178mX3QVlb/7KqzzGXJEXV5hUo
	 ybKC2NHf3SIKQfqL5UFbMP/SW/2+u1RDGjgarM/C7M64cwLJqBSBje7e/5ogozIVVs
	 aBXWg8OGzESFvMsYV55bxoSkxjQNvf2KbQSOX2VKdKmdqjfNtZVBlYfBH2kQiG6iVW
	 M7XA/RSyaxwwnt+iQbYLfc76QRFPsgh+mh8vrU8ZH9yx74JsZgWNyns6BVZj+L5tf8
	 p6FoS9m2R/KvKPqyIMlwhp4xf/YwzGQjSX+7GZHOG2B3uyPkgjO6GyiVloCz4/Lta5
	 igMy0EEFSjs0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90097D46C1D
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982443358.24101.9769133071754195037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e0990e09306df7a22f87c5d32a3ca6041b2dfb1d272d206b3e44112634432f
Date: Sat, 31 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769824433
