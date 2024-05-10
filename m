Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C6EADDBE
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715364743; cv=none; b=qxFaGJ92NuY6WBzzVZqMJrFTEo7SaIb74NJG6kaYINk4hKvlKtA6ZGs4r44hZnmpybS0dFB5Lc2cN7UO1CiEUIe3g4LkhL0aHgMOPNZfjix5G6/5w3V8rNj9uQQWU8kCRNVzgAxYfPUpWx3KrRQdA5ijlm49WEjTJcjWCLUT9UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715364743; c=relaxed/simple;
	bh=RleqORmZDeU4NfWaDauHP9Xs403shAh4wZTvMLyolow=;
	h=To:Subject:From:Message-Id:Date; b=J1DFboRhDSFrKm/0WyjQlHjO2fZTUWQ+TsVh4nk8v3MT03trZkVbQj7zJS1iNREem12lSsbC+rpDm/uVPfy81VJRhVF1hajlyu9jYNwe6EsZRtTvo8HVyruscs/m4ut+94m/CxgFwpCL5KHcy0cqBxg+4xr7spnCGcS9BIUZaG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/gDDOIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/gDDOIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6849C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715364742;
	bh=RleqORmZDeU4NfWaDauHP9Xs403shAh4wZTvMLyolow=;
	h=To:Subject:From:Date:From;
	b=Y/gDDOIiRO6UPKu5+RXyfksE/vG8F1ZLBlyHrVbXFDzqNRwQGHFMHXkEuZJc/+X6k
	 LCgTvGs41DVz9jRy2C+iQ3Agi3zNlmdjW1FxfXiMW3zKzrteOJLwTRWFa2D/YN1yQL
	 Vv1iPMEMV3S8Sr4ZsFUdUyLSjVTBHMk+9AWFKtM4ziomWP3SEdqgYaCQBuNwUsGnmN
	 gvKLCFzoThCVMDLh6mYc/AHkFKxcjDq7C8Mrq4jbr3eLWs1vhFKFyTHeTcutn1z+im
	 UO0o8JA5BldLcp4Zoyy8Vmy3u/v20Yb864i5zIzoIzra1xkSWxxG+ZV557lKNAOCbf
	 sR7z280VTgZKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5686C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 18:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171536474277.7236.4417301155473985169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b66a187f17375df9699692318623854aaa3be582d448766a32985d6882c657
Date: Fri, 10 May 2024 18:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715364742
