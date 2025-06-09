Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B3925C6E8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749476993; cv=none; b=dtbHH82Je9jnfMqJb/EaeO8/QJ9g/6+9vL5vFp9EUPXWc8Rka6j7++o1fOlijURmzkn+EAEStfLC/Cxsu7rg6pb4YaHaW0opGygzXFbNF+siTIwiTDQvn/n5rHmWsJ29PHSaPsZfThyXxLyKZqNLcq6171nYu+ZY59BODgQxlIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749476993; c=relaxed/simple;
	bh=wJkDH7tiCt7epPxMyKJOBAYpCJSKuK5n0VixlgAuhFY=;
	h=To:Subject:From:Message-Id:Date; b=jHW+IVhfV1lGmvDAk0000F7I9TYTegvedeHNEzJKHryAceRwgMgxJZDATCCpXJ+RMuMiTAjipAec8zE4c9vRpAg8o+riIQSOni3yjcfcAquN4Kji+t7JpTkd/6x9KmqcwT8vRi2Y0wdLkv6QrAyv3GMvkJeG242id4zPsg+mVNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8G7zpbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8G7zpbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42C5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749476993;
	bh=wJkDH7tiCt7epPxMyKJOBAYpCJSKuK5n0VixlgAuhFY=;
	h=To:Subject:From:Date:From;
	b=H8G7zpbCtmrTbIWwlEtGW3p/qIEB9/UFmoz3xg0cdFGogQHf8a0rSFU0bz9CGwmDj
	 0IYRlleSBQte5ZpY1vq6au88oI6SRW9vIcmCspvv0oMGt0lOqjAEyc6Qp+Lb64eKiD
	 sKAlcY6wyLUVP0CGf2gvmvfiMmf83EdiaXBXZO3+IvPyTOPi8PW7D37B5LUPLm2c+4
	 Je1U5D5NDj9bbBDqoKk81lWpn6C63osoJZfNNbcCwrdPvR45fmTfk74PCxRSwq2ic1
	 3VSJv39NSpunGVKl3dS4aHW5FXwDxSAmcUGoeh+EvXVLtT0Y8PJ9arTdZ/rWN3xc6L
	 hgWImwpCv21fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318AC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174947699357.26114.5142209167428089444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28b08122e251653d8720c8890667d8cc84c6ca44b39bf3fc896fe78b53828bb4
Date: Mon, 09 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749476993
