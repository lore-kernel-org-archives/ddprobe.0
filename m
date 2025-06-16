Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4231721D018
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750109994; cv=none; b=sBtDjPHYKUuRiJMX37HF49TYpOYRHnBoQgvgaiIgxe8LFyZrIqe4x/qEY1LGwvl7Vt2ymY9EF3eU5F7muh96sf6a4AoUtPFehf7EpVkFnk0gbTnAHN69GNHAeHEo26l0gdIvOiRMHv/L77Oz4gWxjuZJv8IvtKcjwXO/WD/S6Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750109994; c=relaxed/simple;
	bh=Fjcth8PwXHQcw+kKk5Y2RrT7eq0S9tYJbz1/iK7lX/o=;
	h=To:Subject:From:Message-Id:Date; b=qvIcJqszglGFybFPs2D3yu2VW5QluLJGxpIMidRCq4wLB/ltKwGYX4eVplO+Xy9VpfWM7/RxVBXNoqHoVPDf4K3SFoQ4tMQKagoA0onhCb1JV0jm5KbjwpZRUzS9Azrj+7C+4islxWKVCzwOWtVB4e4cGeXZ8L5I3daU8F/Wzpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhoS7uNX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhoS7uNX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2655C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750109993;
	bh=Fjcth8PwXHQcw+kKk5Y2RrT7eq0S9tYJbz1/iK7lX/o=;
	h=To:Subject:From:Date:From;
	b=DhoS7uNXOMKt+uDR8mRGIZ+tmkVYMZnwkU8ptszRe1JF+gzLqn4qzJToDtGC+Et+C
	 lSJpQtm2xFY77G1Il9CuGn2Q4bvQTv6vXssAmLHZcW83Utmrk7jvKyaw9cfXcElic/
	 +ouiwGAFYOAbgM0oIHfhl9QZqAkn4ZOvxLodq4KOSXkBydsVNX2sB4yKlwAvG/RxLd
	 2K+BltIEAt/M0zXOX+RJRg2x3elXYpIkWpzUJ77G4UqtScnYqmuaQnWuao52c8NEFo
	 PS0RchPYtgq3McoUdlb2p/11MFHyZJW5XeRdJ4/d5d1JrSlqo69M6lxLhVQi8ngEFE
	 yA3COO2u7LjiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8C5C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010999362.30997.5698573716749715163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acaca3ce30cdfec9d380c9e9cd5ede5b80fab9195f8183fb13399d9091fe0ec1
Date: Mon, 16 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750109993
