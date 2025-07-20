Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B99AD24
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753006194; cv=none; b=VJeJRYbc3ldxLS8fe2Z1ClWRyYxuAU7xcuZtBCnXyXp53/I3uw2EnqJOstD5AGP1Sno/J6cnAF5NzCS8HT8OF/PtZHkY0RTI0Pdn6wfL6HOpxDadofdvGG5ZXuoVa58/AVIQhM0I0gbm12XG781YZX4a1NFUjDeCV45rrB0AYfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753006194; c=relaxed/simple;
	bh=+lTeX9reTqlWgxm0uc7melkNpMNnFjECqHKjR50Q2uY=;
	h=To:Subject:From:Message-Id:Date; b=OZBz3cfiK8q9+KW1XtHDJHaCPPCwKJhCIYTyF8rnKjAtmpJtuONN/bDoxjoWA2CEfuC59icTYvWGEIJfPZ7EwoPiLJ2M7QsOPpxELW0W0MCeVzpS7f1iA0kR2OJ6eEXmI6rCqLyV3CXKy4i0dQbVCgBzDGvHQXPFpUbG4/BH4As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKDhw5Ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKDhw5Ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E05C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753006193;
	bh=+lTeX9reTqlWgxm0uc7melkNpMNnFjECqHKjR50Q2uY=;
	h=To:Subject:From:Date:From;
	b=PKDhw5EcloLgQmmh9Gx7HaVQqPZ6upccMBYB9ajcZLPDbROtG3CA9owjXxG1oWrYC
	 LzltJgrcvdh4dMHws063nNgHRgQfEQXxpnctUHRphIHz4MvtBM95jyfTd9sz1a7VnU
	 VlWktly3PLbDy/nwB7iWMTXcD9pgj4rkK9xJU0TcYjJIHKe7HNDwhpH0kyBCFCHHY8
	 oKCc3prF1aJuUsCpP1bO/xCbyOe0otaKXQei8hEbYpD1b7AzdlDHVHUAg42skSwMRl
	 h9tNd+tJHy3SUQC6pywuFj/J3e0fb7Vz2dQ2FHu9UHdyV9Wnze+dmbTkwIJV06+Byj
	 g+nly++JPgJKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F695C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175300619357.26461.14031670573379819300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b2354528f317f4e9db9d58ac24fc65f9a5a1fd4d01e9992ec91d8b80dc69e8
Date: Sun, 20 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753006193
