Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219773B8D67
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765401774; cv=none; b=RJFjAxnlNediGdgKeaaFpalloUfzHfemLKmJhokMlVWcJ8XIwEgdN7HEg/R8jUDgih5Gjc7U9x8raJKzPItK+vY+lSKOEAt1RBqL1uT77noG8CDzGrpXdNaVodgh0I9HaySKeniOA773WA6sWwjT1fpTzuO2OxV0M3KehBKg49E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765401774; c=relaxed/simple;
	bh=OHlincE5lw2CI0Hvt0W0JzF42rdw0s8igxcDB0xNgtg=;
	h=To:Subject:From:Message-Id:Date; b=DBh41RWbOe5m/GieIzA0xuK043Tdg0Nj6JWZxx2ZTmUzBRwtlUIr3haHHRwPkZKF4wLdO7laNkMdg7J8DMiBShBUKjN6H7kljmuJZ2HV5ZNFYI4VjPxFDPaRtDFCDampmOjIqNbnKp1FlttAsxDHUPn3GaB/pb60A2BHUFvokoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mixf5cFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mixf5cFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A58C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765401773;
	bh=OHlincE5lw2CI0Hvt0W0JzF42rdw0s8igxcDB0xNgtg=;
	h=To:Subject:From:Date:From;
	b=mixf5cFgkuCzTDjvciztfdTPd/NYWzYE7QynkiojW236lwaM1icGnCJdFrpPfBVmq
	 /BKt2nAQLqzqtr8iZFr6k6W0tmA2e3JveXvnjhh+YyugHQ/6Kd/cfhgGHyI/sRTSQL
	 kiT4+4uEWN6eRs4X/YhS8fJxn+/XkfqqMyNlb60o+gectbpGdKvXeqmZZvRV/ZZb2B
	 Jp8GSXtk9RyptouQ4jeqUIByzocoDsl68AkRzbijg48wKEmpscreZdw+N48yYJKKLb
	 tiVgC9l66epWS+k6exDqziU/MY5IvIYhnlCaJCLr8m1bshsASbq0gdcMaLODkGrwMf
	 fj42hpty+wdzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C17D3B9AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176540177359.13568.5691561596361809775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d65963d70270af716e5d442c4c4e6adc1fa20f95260b5ef46493b5357dfbd81
Date: Wed, 10 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765401773
