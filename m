Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A1C72614
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754464794; cv=none; b=Hw5Q/7N2CdUiyi4QzxJuLKanZE1luQnxfb0WpGYTD84b69p/XLuq/136yhw8vZTWPw4M0qhPhWJ5NJny1sz8ZhvWsYFD7YjvDoG9GLnjDg/guUXzQFGIVZ8I9JZBzfU0YxupjLpaFMnjbu7vTab/6C7IRkvAnFynteisIlPKJ5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754464794; c=relaxed/simple;
	bh=ZJ7XKzIkT+yThDiMjgOvbf6cm5M2vUWo3OhW3FO2B9g=;
	h=To:Subject:From:Message-Id:Date; b=CYZXGpOiAlhPQrBanGpz4BfGle8ad4JGPS0wY64gfledv+c0b3U3M96gj4151mrDMulzvtEYhj9+K0I5OD+b9dfDW9O9F8VRY0maeLvAaLqJbFTxpKnOr1K7tsiiUCtawq/iqQZi1S8f9Cea1+bErb99i0KDu3GeJhk738Bg08E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6vl+/jZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6vl+/jZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E779C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754464793;
	bh=ZJ7XKzIkT+yThDiMjgOvbf6cm5M2vUWo3OhW3FO2B9g=;
	h=To:Subject:From:Date:From;
	b=J6vl+/jZmegx5B+4iAPCP9Brpb/HDxzR5LTeJONwHOu0R5VvQ4yjpMflMo66noXOD
	 EgKlPSLxzRDp2JHYSiWJs3w644WWsQhlndKGboH2J7LWC4UD/e1KnX81DAqP6Cfd7t
	 HQLgCP3IUsKvDYYxET2/ZkRQ25c2AX6pks9uQy+WqOuMlo4usYUfrCBQouHBz4lN6e
	 shk2LLCG1zYwVzmf/b6jsLxYVszF2Gk5HHToolphNfQsAtqAPyPgspv8pYIk28Jftr
	 a1hl/wqqXr1Vp+OjjZcDtGkVsXr+dOqb5Q8UaRNKdXdWrr8bmdx8KmL03aitliuuiZ
	 ssUKvotC94Faw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE0C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446479357.7006.230246486219311414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a1a4bced036c2bb568ccaccfa720c593c1697adcba89f8aa8342cc184da9e4
Date: Wed, 06 Aug 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754464793
