Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A9FBA42
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749072594; cv=none; b=a5v3LJ9kHx1hi483R1RDpEzwcjYLLicArhyAJgaJ4Navdn3CscXS49KJwkF0mF5uUeILbSwfzNlSkTn9/RgNw90oqID4AKKAdhlcUvrtxvuorbdd1qBndNCH5C0aqz0aD9mrAr38g9e+ok8kvY5UoS49vvQ8slI7S1aV7wOez0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749072594; c=relaxed/simple;
	bh=R74/XukFC2d5JpHdMh3yHSwvwHiEnx1E1+5jXNb1iK0=;
	h=To:Subject:From:Message-Id:Date; b=ppbbLAZk4W/elbed/3Ggha4UVKfchEYfDMx5NvGU751wDzeuSKZf1/waYW30Z6m15pUTFhUI7pFbjWvm6ssFACut045kL+XitKv6iFQj1jAw79UYCfaBqjJFTqS3Wq40YG+Hd1B3D+7gH6gcslcfN1JW0ltUCPn9MgVTrCvHrTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CI7Karxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CI7Karxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF4CC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749072593;
	bh=R74/XukFC2d5JpHdMh3yHSwvwHiEnx1E1+5jXNb1iK0=;
	h=To:Subject:From:Date:From;
	b=CI7KarxcW8R0Vr6diWq+DDe4qHLJ2u109j9o9Z0QGqChhr4hqvUby420lCI4ML45H
	 QMYqO3Wy/HewhlYHCxJA5MnEfWaR78umnYwXhNYAIRv5eEtNqXfuisRqerrQxyIsfd
	 vmU3RqJCyypSk3gWFVoQbnDAxoIP6eM0BcnIRWaUudbTTvM0/tVZGBppZECovLMpci
	 dc0YAFwAtoi4vihcP8kcoSopvcq95qP75assa7flKJ/st1BH3WSSXhDVHxrPNXFAGJ
	 ywsA8ji+BR1w3j6HUl+GuTp/ABtJXRELTRN2uwGkJn7jRMIDkar1s09bnGKPzZRagC
	 euzMRfpKjb7wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD4C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907259357.7614.11212201792400927284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abbabe5a9e11cce4f96a4b464ce69e066f570acaf09445d5e44c4a5122fdd86
Date: Wed, 04 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749072593
