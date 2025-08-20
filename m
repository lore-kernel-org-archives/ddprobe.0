Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFBF2BEC27
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755726594; cv=none; b=Z6qFLKz38HSzIK5VuL+mpJNQSGFlQFE7RyvLdK5TIJJFvuMQN12ODLBYYS9JNJ+AktKJ7vdvg+upVLTsAUZ15rTWn/TbG6aFNhBLWXTc4Q57+cTVJwAuhpDG5i5dDbTTV8FBT3iMDILnpOAAMJaYRfLzJduGjyMUjQjUeBa7mF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755726594; c=relaxed/simple;
	bh=tMDsbKJU8V3fOjZh0JuMkSjja+PIhCt2JnfT2WOKswc=;
	h=To:Subject:From:Message-Id:Date; b=EsPRb0Btkpidua4A9HBTZoouklXUgHAeYgdWbkyNHF5AaHCxrQe6pH3SCclvj52+729nLIfvTNVjcsbj1a8Uuq2ZTFgGz0BYBulnqIfbyrPz2m+OtYw/o3IlWW2pGrQM+YLzu9viecY54XcYz9Ygozz8GmJSqH0O5HX8tIw+h6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dx1Ut3b3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dx1Ut3b3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF7AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755726593;
	bh=tMDsbKJU8V3fOjZh0JuMkSjja+PIhCt2JnfT2WOKswc=;
	h=To:Subject:From:Date:From;
	b=Dx1Ut3b3pfSrOr22YthsIpQ360SzRer0ZY78GiIuOIZs+sdvUU12BMDwFocDO31/q
	 1yQ1q9pq3MDu8i1yZSZyaxI9+UfLAVy/+hoVyIVXVJXZEsFDp7U8fEgSOz0C45xrtr
	 A+vUzxzs3p87Bkp9QjorCzgi8kjizixDgmcrtXisz9q9PQDezeD16veTiGbjLqKFz6
	 tRhK8R9RNa4345s68SsxL3uyHjg/oehbHFUNBqq/7ByEmR/xdg3AVlDnJ+k42rJxZi
	 63eReTORW/NbUcEXjoJ04PPbL9vjhx1vfXjj2omeOwWvFGuTlP8gJ2Ppum46tShIJO
	 t4uZgRbAU5jpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC5CCA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175572659357.16275.15797953987947685823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb85797733022dd7c76c54d8825862e38dc4184351793e8eb8778d5008eec8f
Date: Wed, 20 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755726593
