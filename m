Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2125E199EAD
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751901595; cv=none; b=kCYZAH6C0yBDSw5uxe2tM/fO2lZcEyiMGMuNIvCBcTohiHAcUONEygOAcXqrRnfo9pIexgjaoAbGRcQM+5cJE0y5tNd0uT4xBHf9gLin5NVPJ1xa1IyfaU3avIvGjUnU3zfn1iXrtLGXc5o+qh7cQZC2O5JUB33o18GF/CnUsAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751901595; c=relaxed/simple;
	bh=azxv6UK5lezqfdv6z8T4yY1Nn696fq9l5XHvVvL1Njc=;
	h=To:Subject:From:Message-Id:Date; b=Jtr6lb02kdN98C5Gq70M8Uy2rl8e5SwgflHt8/pSnd/POTVcfoGZxtl9VCgU+m9XvLbRuohvSV/ltOmNVccQq223aHnz/zttSgCinVtBoi2ceS0IUhbjDfClPi0NqFNXbOUxQY0tAGzC7Nd9LtdVWtsm0u54Nkt+28oT/uIUGJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J6Lg1IHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J6Lg1IHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751901593;
	bh=azxv6UK5lezqfdv6z8T4yY1Nn696fq9l5XHvVvL1Njc=;
	h=To:Subject:From:Date:From;
	b=J6Lg1IHuqT5jX0U6vNtLSsIKg6QX1WJ3BD0Z5M1MVgkbKV5r7Ep2+Mni9d0jgLOk9
	 EtcJUuECyxzKNjJnbLsMJ0EqDnvn15kYLGPepMl6CdYLwaSi5i72M0lyHNp10GtHiC
	 u9b3ndL6fktvxYez7aOuiIPzfwlSuHEoXLnYedLfnIZYPCTiJPSSYYKd5NMIIi5cPe
	 yrn1K1JUGghi3XgUmYGQkANC8+r7TZKw/gSpJO+TrwsP4yjlXZ2xcuQvbjRiryhTCa
	 WQBfjQWAIQhSWK5XKdX6BeGc+yB/BHW141EuiCyCFHvfrqTM8n2U0J/9VzrjzC48gF
	 Wa6CIvRn3wJpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F8C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190159358.23915.890417612465045434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc931719c5eb7cec671ce6d309cb4128010893a426dd3ee3e7d31e690edf42a3
Date: Mon, 07 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751901593
