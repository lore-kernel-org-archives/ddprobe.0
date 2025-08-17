Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F27D1B4247
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755463194; cv=none; b=DpFwPbUB+llfXp+r58QRj5ihNWDQ+qKlsvBwFOtIE14Z9dbdvO8AUHQ2dCnwi5veSaYIgdra2w5bgpoKuN0HH2cL82wN39kFv+mjmKLoRomYZclcdIbNNTRHffJxgnQgYbch2uxZ8iJ1MhykulrsBL0fLzgqpHxKUoj1QyGoa/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755463194; c=relaxed/simple;
	bh=6TVTo0wQyR7Uei1C6ttI3buOyF13y2d6zyDzoxAZbU4=;
	h=To:Subject:From:Message-Id:Date; b=YMCIMz8dEvqeyaYEdGaKy83E9UKPjblHaqjpxjgfB2aukKOfE/o5w5cgF4OYFKUZAcgl+k+S+pWl+astbq65RxVebyTHDkN6T23uFiWMa3hO0WyxcVs+AkhbEPmyyz0YiYoFSARhly/rpcWwrZT9mGA2A90k1RR1mIxbEUhebBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Trh+Fv2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Trh+Fv2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6187C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755463193;
	bh=6TVTo0wQyR7Uei1C6ttI3buOyF13y2d6zyDzoxAZbU4=;
	h=To:Subject:From:Date:From;
	b=Trh+Fv2vuJ8704wUEz0KWlW2EFKU28RlT3N7Jwe/iNmkq+l88lyCbGuJdnWRgl7LA
	 GGZ+Q0aONdF5qcnyuqpDs6dln/ZNhTZJDIcEwxPDfMkdR8EmeizCopqPEx8GurcPyz
	 MGoqnmR9E/t2ZAszjCAEBJH+MYAcOJorFyq0nwsXPx/neudQp4VjfBHQEhpRrawvLG
	 QJjhHO0rZEnje65S3Ex+ZQZiQX+wwM63Oqm/cL4ZuM2IbBWwzDVsSB96eaf93oqIZn
	 y8sM2f/DkOCDzFJVblrKN1HBXkXEt7pwEpdVRSnXI8My3SoxGDYLvtbeBEui/FmQ23
	 eo+2DbbFaJjhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E2CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175546319357.20436.6981978880504648348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d93fec64d5513a52771be6893364ce2d64b40b45c1a001379ef21b9435a50fb
Date: Sun, 17 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755463193
