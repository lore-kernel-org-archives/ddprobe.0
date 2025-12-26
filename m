Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEE4269CE6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766780634; cv=none; b=hsNLXZqVb1WhKNzHXGXdgfNPap6r3Rna2HvL6jRPMnRqESotfdMJX15QUhKMkKWhRw3XIOp8leSkiH5UsWA49HS5RQ6qkWHWxE01FMF5jNruyLXwnyTNmF+Jb3pbfSpVpKvqkh+MRT/e6NCUifbU3zzEjuDl6WJ1tO6Sxle0HdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766780634; c=relaxed/simple;
	bh=RBbnACrxLeLuRC5vJ6S+aJFHcvXbgVNGohruCB2ksD8=;
	h=To:Subject:From:Message-Id:Date; b=I3Ty6CDQGYvMd9VpH5S34j/58sM9c5+/nRjGVLrEkZTwZctVRJOKXdeSi7iHYPhMfTCL39MC29IimvKJITOB052MwP6ppG2u5nMnZIi/3YdyAKaxoPDwyfhfwtnVh+F4vdkTZlGQJxkS/da/X/uN4nPnJz+lhaUsSmiJYoh79cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PzRF/INa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PzRF/INa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A694BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766780633;
	bh=RBbnACrxLeLuRC5vJ6S+aJFHcvXbgVNGohruCB2ksD8=;
	h=To:Subject:From:Date:From;
	b=PzRF/INapC9Sx45uWQqthce15vebD7hRLYULd1TCGCcFGu9EvhM0zD/KoZrqLz8Dn
	 wTqwO/hNW0Qx7Q6nDywJ9ZYXvzRI9rhHx+Ajwjsv5pymAsCbHm8jPWDuDCzl+Ekzq6
	 1NKAX1N7A03q83Q0dRvaLsVRWEEr5Q1/iVcXYsfGMB2tWwrQdmXrfUGX6wk088MSnR
	 hBGDg5RWsHh/Dh6IcxyTtzvu5iRLW5aMzZ+eIxLpNCR2G+zcrmatmRCjvUTlwVcLYQ
	 FVeon5rUb2iKrpvCEww5jXxuiayB6fHlIOLki71POBpvX9c6EhxPHngXACBxSd/BCR
	 aDAJecN5HkGmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473BE8FDB4
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678063359.8457.77628225377242413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e72edc14548251b70e6c5cba7ecd553535a9c360b2b49f2d47d5a8440749c38f
Date: Fri, 26 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766780633
