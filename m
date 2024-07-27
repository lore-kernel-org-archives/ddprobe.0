Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330EA7470
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722103554; cv=none; b=AHJLWUzRdqKoBqK2Sm3z3YfWCprm2UQQM+TsSQb2n/pQTOWCYdv77ZRm+Cy3Najl1jDM4d1WtjLy7NkmwF6dH2RosBOdtSvavaOpvGL5pz65f6ywwGnW10Ga3FqTcm6IiKRHvlAlYvWKidGF0kYw+GFqdl3EEjtFYKesJ6AkcT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722103554; c=relaxed/simple;
	bh=Nh81tf9ZbQ/d5mwaiYgmR38y4QuKMJ7/oyh92/DOz+Q=;
	h=To:Subject:From:Message-Id:Date; b=HLffB5MEwOgfB9C8dM2Y/SZO5DKKsXvlk8YIMvO5PmC4fu9g9mGixlwVAVjPdmsFo9YZ+8aaZ7eVrJynkRY3flWeh6pO4OBSXyBN8rB+6OgRRlJ+A2q5Q1SPPjx0V3+R3xKkbrCS2qknhWglxzPXw85bK7thJmCfdnG5ccgAZeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdDBRK03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdDBRK03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DD0C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722103553;
	bh=Nh81tf9ZbQ/d5mwaiYgmR38y4QuKMJ7/oyh92/DOz+Q=;
	h=To:Subject:From:Date:From;
	b=XdDBRK03noJO+p60bkTQPGKZNWt8zXs28+IWC1pMK3cU9klxPmwb6lGiUkTrxzG6t
	 vHwxbNR2ZJkA9Mup7GaRAadt6WcjCzHq1vwc8D94gnUaosv4bYRZSlrgQ1rULGxcdo
	 GxLVNBEhHFxXzlXIZErWdZQgyE6apO2UyFSAEp5GV2Rym+BkBuDitjQQvv4nCYgQkS
	 jIEU4j+sjYSC0BMV4Y23f/bL37G9p5eeRWZIqKyCqw6hE+yYOiJL6SAyg/71lCGjsy
	 G5znfymxtL/CxKa1aNeuJxosrOj3sE0XyRuzjuDOeKhQ8zNgK1jml7jySioj327cSM
	 dBX2ARhVvaG/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBACC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172210355359.13036.8490817232946991675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8772116e50f919c3134f888237adf1c8c841e1e01a341820ecb32ba474a957
Date: Sat, 27 Jul 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722103553
