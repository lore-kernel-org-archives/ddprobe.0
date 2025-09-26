Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B222512D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758892194; cv=none; b=h5fBqjg4CeP0+HmKssv/2qoAKb6iB7jWBK7MZaAGEnB7+281PLZIPkVtohtSRbgATf2HpmpryjRC50rK88DAdCrHSG2IISjhsXFnwDBBg/o4AEr2//atYu08Ec8vzH79NjsUAGsUiHoncFw9if6r47Om4XgB0foDHzNifQW66qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758892194; c=relaxed/simple;
	bh=OLioCVy2AGDDtRCtU6lyR+/jR134fgX4DT812e7CCOI=;
	h=To:Subject:From:Message-Id:Date; b=YnVefV4eRLBN9aUZshhrwm+VO/ZLgpljCzKq7LgWskQQOyh8Rul6OhWFN78Jcrb4XKv6D/b81IHqAjjDlXF9NJeUFZf2Cc6PDrlzhumWDTT/pI/BuRCvDk3fR8csDRYeIlQKC+QVpgFMBE40r+6BNkzszPDmwbUFFwNqoxjKW4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U99sXfjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U99sXfjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB47C113CF
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758892193;
	bh=OLioCVy2AGDDtRCtU6lyR+/jR134fgX4DT812e7CCOI=;
	h=To:Subject:From:Date:From;
	b=U99sXfjMg/8Jo0Zj/M6ufHACH5VRRZJ0nX2FaqbYcGj2Ze4IgUYbYke31URrHU9pp
	 0lQQLTvimza6R3+BvV7DWh8LQna2a6aRNOoBOjal662PbUTwc7T3sf3QCbV3SqlhbZ
	 PZlKUqB2m0fjcYk9QEgtU/cH7zswJB2U1CIDh9SbMfyAwnpJpbNPfeUmKAY1VVC6U3
	 ys8EQ8k6wZ8tX5xLs1haFM9RdKwnWfkxeHBkI05Rr7/GJRpeZ9zlmOnFlqhdQ5YreT
	 rKZDUW+HGcTTaog6BzXysiMlplh/6LWH18LRqDU8O6tz8R41lF/676+lT543RecxML
	 +daIKjEAAUxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE2CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889219358.9674.14747466429189477969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7709f573090a81f88515966d273db334e10257debd20174cfaba7dc29f39d312
Date: Fri, 26 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758892193
