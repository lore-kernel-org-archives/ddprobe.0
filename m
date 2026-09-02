Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A6A4A5C47
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788373834; cv=none; b=s1j0C7ghyTtZp5Te7n5mD5GONbQhIF7qdXmmcuATszwos35zFpiI+yJJzoYyexz39GFtcIm4rO3IsyXey1rK06fP66xThYtGex1l13RpDcvUfukgUpzLvrAwg7T4hKSzySC9PtXr1jYPN6uDK2tLh0G8IjymU3o4/GNmcRwQnXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788373834; c=relaxed/simple;
	bh=+3IppzKLHi2JfB/4IPBWy/aHw1WxoGzhwiKdguc3Ypc=;
	h=To:Subject:From:Message-Id:Date; b=aMhXhinjo8W+YfVtHXOoPF7VrTuLMxTK3OkvQz67DsYOaV/PkgwBC5zbwq+StfOY+cceGuM7cDHLYCio0XyJvwewOyvSDKNO7XGuqg+FM/ayPFrjxVHqGtNJvvJNTNbhVYMZm1is3/dfuEL8CRGv+HQBPEgyNgmCjZhYpEL2q0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5N5HKdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5N5HKdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCFA7C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788373833;
	bh=+3IppzKLHi2JfB/4IPBWy/aHw1WxoGzhwiKdguc3Ypc=;
	h=To:Subject:From:Date:From;
	b=J5N5HKdgQaG8GmJXgnwDcxLmJea/Ox1bALs2vr+50NwbbawpEjgP3bS71hcEQYE8T
	 IW0cm7CbEgzB9DAY3bZTiCsK/45P+YSo3K2GmIJoKrCWP/IsPWbseMZ333Dd3bIxjF
	 NG5iG4i0ErvLkuAi/uoOGRFJ+bxccJOAVVXOgFdduf6Kter9ZIJFqGbBu7ixBhJ6Oh
	 jlSUaYA2Ye3eASLcinI4JAvP1BgkBdiH4iuqmobD+e5ye6oKxrOw1XpHPjITTQk1ah
	 7LXSJaNtyabqxkiDHhFzd+/9Elz+AiqbfFZKJtnsFCM1iS/pjtpBAfcaRl3YFl3vL2
	 BlKlhj7MFSqdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B902EC624D3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178837383371.32731.9427941533351923916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33fa03d0ee010f482ff3e76d3917680847999c349f6a874ba1fa97adcba155c9
Date: Wed, 02 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788373833
