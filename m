Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FBE2F39D7
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759220996; cv=none; b=ewN2YLCi9d0La6neOiy+pooQvKjYt8kRodbi1jULjDwTwMri9npEVQsgrmFjLADsfxM8IBHvOiFz0Rpmf0LLJxyATpvJTKcgujkX+lPAc1XCv5BYke+OVI3tsu57rsl8ewfSEqKbnaXiG4FhCbTsXTrDgZyJpqazRnZWo4fN7GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759220996; c=relaxed/simple;
	bh=eAO+jcbDeC++E2Q+zEEpIIJCtO+09wOzT1xlG6Xm/4g=;
	h=To:Subject:From:Message-Id:Date; b=SJhLM1wGHW+OvzQIN2K0eSNTkvUYLI3vfnAKFLBSzbibDT8gQyH3QjXdoXPi3IIJGwVkqoOVjj37umfUCtaoWC9oL7dluXbz859pN2IQv9cg+TuahHkeZpTyTt6olf4CF8Wa/0vj5iv8LZnHyZiDxanBPjIGe3+EdJn3guQo2Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZWq39exU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZWq39exU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0233C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759220993;
	bh=eAO+jcbDeC++E2Q+zEEpIIJCtO+09wOzT1xlG6Xm/4g=;
	h=To:Subject:From:Date:From;
	b=ZWq39exUWoyck+Hmr3Sgfrh3W0yF5tYUSbRzzoCQFYoZP0jfUF63hgvPkeMfTtS0N
	 xz/5PNfCpSsNLE8m/AvFaNPj5yELuBbicys9JuNSOYx+D+S0JJAYCuQwPHMUW5+qu6
	 rKcZznezmBGga77oPqE9ZuyoxuLMFkGHC2yrFHGNAr4YbzXWPmS/RMpATXF342xr07
	 3XxYo8lsH8pXuRUQHKTYecXmC0aVv8UVzJ81i4YcpfWit4dagjhaBcTjhU1xwW+f/U
	 ywPrTgo8zyFaHxaHTxO2p3kxTekPVLWMZ/sCqMVRX91/wCo3e96Mq3vnLyVTzPECUM
	 iG9ECXJ7vrFLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1F48CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922099363.19210.8646185695481365183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7ed00581a909da0242e986416e7251c45510b72d0db2a2d224126df7d5c7217
Date: Tue, 30 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759220993
