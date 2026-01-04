Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324AC2D97AA
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767507234; cv=none; b=KiQcF/TVkih0tRw3tvt796F27vqiKi7NZarGFLkjGFidJk+gD5mTslZcwkFn4IMkn9/BWA7CdttaRF4SVON5TH4SOYNiQG4uX4BvFGQouX2Ejnp+sey+tXjWDNRET9o5RNkkHtNFAirCs/yqLPXXtdB1N6x6937QS3c+oOLoYS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767507234; c=relaxed/simple;
	bh=tF9bMQouguQfKlAOZLm+JQdj9OI0wltEqNwTChQuauQ=;
	h=To:Subject:From:Message-Id:Date; b=ozO4oE9YqQ2g1YXyK576kL5GiDA9XHzAW39wxKhLS8VGr3+ZYoUDatdJP9RPvgVNTTYmDLWggQtZC3a1PcjSmU00Im+LyD1BzunrgoX7aPnK4c/TAC1VCOEN0+Cr+TQqS9AfsldpnJJK7zcgNcx8LQdDhdcXhXAlR8g77WWlKWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3XYOIks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3XYOIks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E1CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767507233;
	bh=tF9bMQouguQfKlAOZLm+JQdj9OI0wltEqNwTChQuauQ=;
	h=To:Subject:From:Date:From;
	b=a3XYOIksP8mItkdUah5cxQFOEW9AYxXuBlE3bviNUUWn9MGBAe9U6+7dhYjU3qDqj
	 IGZsUcRNPoNjLCAIt4qBrVuZVwwdc64X3uUbtIzYjqiUmxew/eQZnuiRj7R7WaiFLk
	 DOZOmub7JWxdVc/1yc94JNvW4bFZpHKfUC7MRckvLQ+bJxJ+H68F+1q0HZOIEtb1Yg
	 iXpSkm0aMmvZ0QOV+VtSC5UVAbGMrn/jT89qr0Q/OZ2tGoEWX6gz4ZuMPzcljbYyYl
	 WNHM/371F6FQp/GtQ8cSecpKqHGfPnnXPuRv+kSKL948fmmg7RoWQmuG5uuyR74p9y
	 h/fk3xpaFljaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F74C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750723357.9529.836120042368242906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfa823ad60db03e01ded1b3f11669919224fd68e740fa70a2a16d475782e307
Date: Sun, 04 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767507233
