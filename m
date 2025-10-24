Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185DB238C03
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761288594; cv=none; b=oL2V1O4ETSGkPY4gpJ4YYd+4lePPdv6C9BUsEUaXoAb1VUf1yCRCcnxf+wQexnGfXTlRd5QnE9dD4648aq46Z5CkC6UAQd6vbPFPS4Em9GE6oFjGJq+eteNN6NglxkyHsO9/WKmFwN9m9c37dwnw2dSHyQ1Dr7Ve5SpTjRZMjv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761288594; c=relaxed/simple;
	bh=wENf5D10nbI/qz5d0bXZgWmCOgy81kmBX/PhKNm7iDo=;
	h=To:Subject:From:Message-Id:Date; b=no+57qI6s8e6NPTFPkaNPRUuBNikgCe4XE8Wpcrx+CZqxj37dU7rrHk2ckT8TDY9YeXRvNxWju/rKnhsAjTDlQ2fryLeYOVld8J9Rf1d2QQ2uY23WYX8jl9wGBm97oJbAJvBuI90PBwIvCOrJLQvJOSbt64HjKbaheIlXtVlPZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIdf7/j9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIdf7/j9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A10C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761288593;
	bh=wENf5D10nbI/qz5d0bXZgWmCOgy81kmBX/PhKNm7iDo=;
	h=To:Subject:From:Date:From;
	b=KIdf7/j9h2F5gnjn3a4zD62R4Mj+hHlaXFMB77k2RgN4Y7lxoMYPYFBAaDgfYW6yI
	 OYdSpZaYHx06DSIAr1JtcjX2WCuzmzUIRG76GFUw8MNLk5GKnoJKZrk6nQaJ8QHMQr
	 lg5WY/bdbKcPMSl3aZEXgqcyIg9s9x64Fo4ZQpzFVWkX/XgZ/gBCZMKZ3aqXt+0r92
	 hG5IW7+7/UBdZGCcMrOyEYlzREDByVG4MUDav+LwjTUvS4lG4YS6rmTzKmRau6Ojq8
	 BbEeTWwFCrBwz44pZypFnhQQdlNK3OTS6pV5pbXeb5WjW2zTbvu8SviqZ8JrUis7HT
	 iIHHkYngvfzIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945D3CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128859359.6399.16324011238070862042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b7812725758d5de01b788a1b0d989e9675ced448f17c036d2f0091622016d58
Date: Fri, 24 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761288593
