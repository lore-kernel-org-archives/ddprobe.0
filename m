Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F14154BF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759545594; cv=none; b=a9bOC0E/SBiX/E8KOuRVzTDfuNRYgUFYKkfGzi6AFGeAmAjq1gdvaiznahTJG2ixY00YPMkP5saVr6kgL7vC+fcT2UQViy2kwYRS+shKtIIgpY6NMypuuXEivCXwV3NaaxmT4R28O/oV04bvGtyCbNzXRL5CPk+AXHLUeBbdz68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759545594; c=relaxed/simple;
	bh=Yjag/y8K2QNxmzX9nGE0RYGqFJH0iynWmcA/TpO1wDQ=;
	h=To:Subject:From:Message-Id:Date; b=HTtfsfAB0FASl5lmPU7wqKeTguJZeZCTLl9PxnumarUvyMJArzr/SHFMlcvKNVaDXdraGIL784oIqZ5aE2BxF8Sg7enOC0Rcm1NU4PMMsjg+Pgf1aKNBaOZTz1OiHWcQNZSt59vbVLPOH9gydIwn3szsUPSJwSnGUbFn/DdlH5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L36aWp/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L36aWp/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1416C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759545593;
	bh=Yjag/y8K2QNxmzX9nGE0RYGqFJH0iynWmcA/TpO1wDQ=;
	h=To:Subject:From:Date:From;
	b=L36aWp/6K5Q8jmzc/rhsGb1JGJxbOVfHxvRq2Zu3x1vmfe1BgrvmyVP3qhGK8wcRD
	 EAPrpweX5BGoeOYD1G0E7mNVXtFOCEyNwCWDWws7ojlp8QsZRUvdBqJqfVtPs40kgM
	 GylWjwGhrUiIL7qNpGhZmqym6mkbrXApneimShRuhUyJAJT2lnq0ijSp+hwgn7i5LO
	 vnV2TQhpxdlbpGANQ7bsm4mZ99SoSvF16m31S4SJtx1l3J1WtalOrnEJuF+Gps8ah6
	 gAK4rIjVlB4jZUYT9s0Khc0uKhbENqdZF/uh8iKPsGbpNTA58b0MSPTdSdC+DE6iNp
	 3w1uWMK0t0Jcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F01ACAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954559357.30422.1086867129179295439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595f57fc473445c5522163ba686a3463d035581ca77de5497c1ac0c81023cdf9
Date: Sat, 04 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759545593
