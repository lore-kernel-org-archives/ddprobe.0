Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40267221D8B
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744847994; cv=none; b=DbR+j7EtYuF5xVb8c2dGN3h6wrzX2W9Y6SeBh2eDKgqWq5SrrgsZfR5tBxrARIbS6N0ivZ3lWxR+ySaiN/7iDwSnkexCGb0p8eDKBk0eKHoP4AQ2EVvg9CXxZZrtTtibAjK+l6L1outlHXXHAeGyg3N0QSZcAWlGiVJmDu5+tGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744847994; c=relaxed/simple;
	bh=b9IJ3LpPAEwJi8JT2XqyDk5GBl/chNQ1M7pGAsIgFxI=;
	h=To:Subject:From:Message-Id:Date; b=Iwke/MTIbTYRgj8rH7k3fBgZoRq+wEUsE5QwIx8J/BzS60qjxpCcQ9TUO6tZtYky0uRuMuOSU0Yxdbh2Fnp2ypl1L8bU26QcWdK9zc9Ar7ZTMtCFWx27KEPNuuIHakTm6475NqG5yBQpfm9uIg7ppQHADFwvl6KrHEqZ5dyZjxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRvByVpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRvByVpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA0AC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744847993;
	bh=b9IJ3LpPAEwJi8JT2XqyDk5GBl/chNQ1M7pGAsIgFxI=;
	h=To:Subject:From:Date:From;
	b=SRvByVpCzcF3UlrfZVf0VyRwoU+XYqvdOUCzCcFG+BZZsBOpAtmdqgV040AD2mpKh
	 /sOmJlP6qycNl1HdVITv24E2s7UFD2xlA4EuPP1Wq0Dn72phUx9lkHw03rpIw4WATf
	 16l1fvki3Tb78yF0vdoITeZGkKvhHuBy7DUrukQlZRNzW9UtHKTwS++JxQz0tXWxz0
	 JQhGZIUPX/2h7KmcFV2Y9rKevTmLKlzU1vjFQdbUifiTibPYe6egWWCn5mO5DAvWOz
	 ecIW8KlZ2SCgywqG9bgKc9rNlyVoyfJTCCLpkRTkuvVAPRk6ZT+8M2UY/6UjxYcKY7
	 fT5HDvb/M7xqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91698C369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174484799358.854.15401842863898781266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf2dc6cb0ba1fe9b4168bdcfe951707e058c5081c497e7b14dccd7a8f73fd13
Date: Wed, 16 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744847993
