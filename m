Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD8329CE9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761765594; cv=none; b=bT/NFB29ZRUulqSm/ccEWCWyBp5/0L1CVSPsN1vMTBllcnJvvtoJojb9sAbALOR0tHf+pl4U1II7XdeCOPCDqEi7h7DmYlhAPX225q3MyYeXsEgVlLp+Hll0McNn4MdBh90cnsMyMTjgdvgYw/j5OcAxk7r4lwmBJjLjdtOVpcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761765594; c=relaxed/simple;
	bh=NL8d6WlE/XwWskMBUbQnvZKPdpQLSyZwpmagEE92lEo=;
	h=To:Subject:From:Message-Id:Date; b=AYgu6ZP9NPbUK9xVo+KdCT8cjFJUBWCylfcI89bZ9sLdLX8T4Yv8rx7g3rPWW8S99do9Q3dz6WM06Jy4jlaxebQSxxqfbKrNeswdhdXMZKtz97MJWEGSoHLT6Zgn1rJMuxzYtOtlJiA9psO/LR5vK7/RKV0Yvej2jZ/IzRUSFmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLnxHB5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLnxHB5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5C8C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761765593;
	bh=NL8d6WlE/XwWskMBUbQnvZKPdpQLSyZwpmagEE92lEo=;
	h=To:Subject:From:Date:From;
	b=vLnxHB5mSgCPwvhgpn9g6zX5R0KpOeQE2EKKGlliTXUVFcQSP9jhx7VH3w7txHP26
	 9hK8jXdFVgHcO4S7lce0i2H0gxqbIy2wgWH3fCJjnYF2XFLH4t+o/7JFDVEwX3NjpS
	 WRrpDlJvlenZ02rCcckYu0mZABa7aYfKRGd/xIPS/SCTAYpmGvOmfE/AqI8WNjuiPY
	 1LiQFyXV+5vzpFyX52KJxRbca9nwG0g/z+Uke/+3Rs9hShgxF+zrukzLwfrDbyuor/
	 BzZbbyvRs63Y6vJJx1SKVdEHmWya4vEPtrb03BYN0Z5jrJf+dBzdxQG5OYR7E5QQg4
	 lkTTtnAcNK4aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE8CCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176176559357.10864.17957843969216884205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86b894956af350cf20f8766d03a0fa4bb74abd5702871720bdcd6acce6d7153
Date: Wed, 29 Oct 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761765593
