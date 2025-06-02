Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE21C5D72
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748852994; cv=none; b=FQw4NVXQNrTD0l+x0Tfr3t6OGwboCxS+zFCrR5R6L9lJdsqeZ3H6fwGZ4jS140O/VXcjacKXUntpIhzLZFN8wNRKhtLLOq0SNmoG8aNDj58EHG7YkAudQPddKANArp5eJosgzqVIXmTvaAoo1acsrFqvcpCXxKXpSN3KlpGhOaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748852994; c=relaxed/simple;
	bh=agtBWiNrOEJTKvUt5iPPslVE3i4BxIKyhX67WMYeMJ8=;
	h=To:Subject:From:Message-Id:Date; b=RdmY3Z1iPAQwke1GA17UuPGxTnSHdSt25SJQ8vN23fpBN0zcBy7f4nr+GqnbpqBga0RtuCFyrnRiV81mdzDeQwu8S69DHJkZBP8Ig8mxvLcBMqpkCec7UqI7x/H7mXJAscDoVkXqjioUTrHm6dioxfEV7JA9KQiCEuTPC9iKbHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fr96JOCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fr96JOCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D8AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748852993;
	bh=agtBWiNrOEJTKvUt5iPPslVE3i4BxIKyhX67WMYeMJ8=;
	h=To:Subject:From:Date:From;
	b=fr96JOCRR6115riaFc+m04CF4arA4tEKeYCR+AlayI2y0KjUzx35NfIUDHwXc/PSQ
	 ciqyI6tR+vspJLgdYEDe/sbYLkdbhGuu8WK5NSmIwF4mvz1YWPjNprZYCebfA+kGyB
	 lhwYZNxKu+uK1OZQ2N4gbx+u14D9ZO0kNEZ0Itjmciyf9SnEbV4A8WIIF4usRxpL9t
	 Kz1ZgEE2i5OZnp6p35Dv2j4IqNgrScW5D/WwxSrT0Oen8RoYr+FgME1LUwfF1OVdrF
	 GxBXavoQ4m9IQqFixf5Clbg+/oXtQ7egEgkStn4ps7bQyG0AQSswZ0hShpgqbW+Pcf
	 gGabV5ntUJ51Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DAEC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885299358.9950.11253354452581651798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b386747595355a6a1509f3785ad2a4e923d0bc652706131f86e0af7ef53bc6
Date: Mon, 02 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748852993
