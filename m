Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4952CCDB
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745810394; cv=none; b=S5VPwqFYIlblbUhEoW224dDXTVAZdJ4yLpSRc6btuQcICb2fJ595j3INnAsWjI8GbqCqNPXbVGtOmcLJ80/p8utE8ysC/xqoUsUltTlNht6ARNWAhBFJkw9zLSvCNQTZiJtKH7/gYXwI/4BVioPZIoKgZi0E50qiqyA5NMn9sN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745810394; c=relaxed/simple;
	bh=rbvvPj98oVKJu4ZPAlwFx+PigCJyEJp9whdkL9IY65M=;
	h=To:Subject:From:Message-Id:Date; b=jSkmk5wMARCAgTObqx8RZVWkGqbc75p0juUEPc8Pl72UGo8lR+y+G/ncgrCbiR7edwhT5rZPiRSo0d/y6a5Jk4v4H0f403gwxjoA/InyemtegrsVrqhJInJOiJKJivi6dkblMJP3z+Z0AFSUwvLNjZ4+YNBgutf+eD84AYFBGcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VneNmAds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VneNmAds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F9C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745810393;
	bh=rbvvPj98oVKJu4ZPAlwFx+PigCJyEJp9whdkL9IY65M=;
	h=To:Subject:From:Date:From;
	b=VneNmAdsNlOuwe4KkSi+44PWpVjZmCJJQqAkVgf1b1leW8v9dYnygFaV08zopejYW
	 B8g2SnBSxDIf5ySIs8UCyBtX4OHJPxe+v4xPX4CFCTXV5ptW6ZjjxDNmiE/y/L4w1w
	 JuGpCaSSqH3CbO7YiykjbkhJ4R5HaBnHBRsgbQOhcWMKqXnxH/W/RCxUGZWhtjG0or
	 knRx7z5zCXbgJgiWsXUKh8SOFzPn9nCrw7wCosunLaE3xyIgS5AJKaFMwpmRFuL+Qr
	 kyvsboj6YXafmIam898pMMHWWHR/x5HGcUiYUJlAi0wDC6rKdz4mCe3FEIGCcEaD5o
	 LjHBHHowTe+ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F046C369D1
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174581039357.17656.12306635890979261184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3318f50579a14844ca7ad112013658688db34ca3a9bb802041b1f4b6d4ef7f
Date: Mon, 28 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745810393
