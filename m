Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F2386347
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752280793; cv=none; b=IFQ8t27Fw67IdSiaocdd9AfWwluDGNvJaH8BJWZ9szAyU4ydOZX9mVY511rn13KhS6C33jqyXIMrmZwGDKvOXCyxp5FjH4uDuKvq8pz9ULlnzwNc5UnTQIlqLTrBniFjeQiGyjlWQk8muKUqtXKD4038UwmosRSl4BXFmih7k3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752280793; c=relaxed/simple;
	bh=nBkDyUnGJhUS8t/Mp0e64eleAH+4TmRyvPQK9/lGucw=;
	h=To:Subject:From:Message-Id:Date; b=BG5Co1B30EjDYriD8swlUEvsqjlJyjgxnF8onV1anQsMjaWi9Lc1/lnxQG7Q4KQ1/iEw6E+bN3fNqHyfH+WPfus4oFPvyyeB3vf8nYJa3mWbnO8niNdIEUBO0HLWCl4Q9UTixVy3Mp/+Ue23eUPVTAMN8wDWjaXrEM2VNy15sHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slO9Go3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slO9Go3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03A5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752280793;
	bh=nBkDyUnGJhUS8t/Mp0e64eleAH+4TmRyvPQK9/lGucw=;
	h=To:Subject:From:Date:From;
	b=slO9Go3a52bAASRVOvfcIfLi9ORaYpUDDRdp6LyqIW59Hza5xlMO8j3dSulxPiJpR
	 fVLbwMScVsadOcW+UPTt6A/TvlZ6zFKSefmy5Oc0PhkYVDGgQuJBZj/9NLLiDfapJa
	 LcXkvLubqYiEkZxLaszyGwCwzmtlUaMzdy5ph4LrFyzUl7M2br93s+ULgOuD1syAOu
	 JnNV6/b6iS2QzLeq8E36mGgRRkiH4RciZll8VANFDXsN9wnwuyk2JYwfLjkQ9TPRE6
	 Y3yh7az0j1aWhMJ6pROvFdDacKgITTk0VXnBb9f1n0j/ju53nWLgp3LuAp+C9E8lDg
	 EZ2cdYe++2MXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9080AC83F1B
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175228079358.2895.5409543431624495130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa93ae60392b2ad9c1ee7d8e359704e774e9cd25d3fab22f91de3b82fba1ad0
Date: Sat, 12 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752280793
