Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB38218AB9
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772969694; cv=none; b=NfhAT3h7hc6YPf/d9aDnyLVz58JujfsxR7Jf8A2wHLu+ZqFsLRhRETOqrdXAZTRzPs+eNNHxJbcTztKEjeW10R4BnGibqdAIAhhqx+v4GO/BVTlY5KCzXiews+rkz/+baqWZkp4EVYeKQeqANqXm+v0wYFvyK7Bgfcq2Fn0T2Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772969694; c=relaxed/simple;
	bh=9o64N7qiEPjEO4EB2mXW7M3ALULdP6LlmWc0/u0MAw8=;
	h=To:Subject:From:Message-Id:Date; b=nWh7Qn3o8I22hqPLyx0LKouH+prD7moLAaZjdX3TY5HievDZidCg/lLTLFnL2N90xYTNSl7IhErtKNUf7nnEC/2+Jwt97TSNEZO2eMRb5cKKWMhktRjBdof7qfIHhVy14rZzpFIpvKMGgnFVETtL1WRqTV9prsHcv8EJGibjEH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS+KJ5Oe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS+KJ5Oe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F58C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772969693;
	bh=9o64N7qiEPjEO4EB2mXW7M3ALULdP6LlmWc0/u0MAw8=;
	h=To:Subject:From:Date:From;
	b=uS+KJ5OeEZCcb1Mn5z75EGWwKYIK951uacGucaOBWIkeWwvoarrvyujg8/0n1akCl
	 jyXfYhcqDhcNraFi3+FOgfGSz7sTxFdM24jVE4YPY3UUju8kvTBCEIajd8q7aj1Vhy
	 02zQC04UJTk0Jf/FGO1yevrHeAvC/IcSjQm220Jn/ua6rsD0TmINFSVA70o/uSyzsR
	 AsKI2f/QDVaGFGUWhQVsUS19vus1qsIKq98l17AOy7mMGGhNc2mDisHeUOOjhslRMw
	 URa7qrlEuLC6BNBHb7RYskF4n3UHo3rc4OVByL6G49Pr3NraLyXcSCxUCoWg++rbEK
	 sATRi82OnOlIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D7CF5513F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177296969357.3009.12699329613871960205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40e9ade1c731a72b5f875f83a96b319dd109e2c557e5ca5de11a8a0ce1e7bf3
Date: Sun, 08 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772969693
