Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3263A366FD0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761845994; cv=none; b=j2e4T6vqTDpbMA/h+XOGtdINn8GXrJvAGwCdRyPsop68DBCm9a4iRj8a6n030e0z61chKYjDMHesCrDcw016vF+vIOCzh0cQHFG3RJo63hrP8A6mPshXEssAq2YryQvqbHDfTYs13tJKxE6133+XbFnuYAV3d7TD1Kj/QMdgIWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761845994; c=relaxed/simple;
	bh=ZTZ9n7QR5C4YfZZiEG2d+gUctlhYvtHsHphUz/pxpes=;
	h=To:Subject:From:Message-Id:Date; b=nXq3xg184ZKEZV6na60CwN9EtYBZ4VJ5MhVIe/XEEmZOIo8Nqhlsj/lfMBVsBS8to8WWaWOuvN4YxF5WXD4eSMe8isWKOm2Oi9qiNJZhZdsNFPx9u3kNuVaQyHdxwC6xPZOTAIGBt+9aOFWd/CeU+kypeDDih4R6B0MMaSw62YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqFNwA2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqFNwA2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761845993;
	bh=ZTZ9n7QR5C4YfZZiEG2d+gUctlhYvtHsHphUz/pxpes=;
	h=To:Subject:From:Date:From;
	b=OqFNwA2JWYy6gnyemN3rS4shtQXIwv+uMNjY9zqJfoVKJHDbUG1quA6FAE18QaQuN
	 IDBa15wj7B7mF5akYLu9N+yZD/g/72COEcnsRsRrlFlxupOi8t6fy5kRpek39ADLFV
	 eWNk106LpGnfyRoAoZj7xnIedh8Vwaml5r4Dt2Kb6ml8ZpdaTtlvSG4tC0p4LAsv0H
	 2jKyphYef8xner6OlVwTzVm+AAMtlCakX+7tLBRKze1uPJYG9q2zfEPcd3bZ3JY+sn
	 qJ4KHlYKmhD1Hbx2r4W9ohj0O9eC3ouDQsXkj58pEOF5Jg8lfs9XRKEHCAJrFpcw/p
	 hrIFA8zj04CGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E0CCCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184599360.7161.15493019817865465691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5e00b39ef25d0e67e01052a1fa8fed499be94f38987fa65f1dfdc7c9c9294d
Date: Thu, 30 Oct 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761845993
