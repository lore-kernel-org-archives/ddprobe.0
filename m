Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEE929A5
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754120395; cv=none; b=Bvqxi/cn5/ZoM5GihJSiAohqHvn9YAtoAepGQa4lx5+XrvMhjk6nkTiMbePD4ZusnUjGpvgCro9O3h+OlSadYbsSXm3P5lZn1lfJ7TxcYwGCiGaRZVeXNB7y+qK40Wkwvo8l7mXLoW8mdcDelI8GX6+xpasnaMd8IUEFB2h3Ip4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754120395; c=relaxed/simple;
	bh=aa9qTnX3kTZ7DMbWsJdIeSWDpYWI+qq59QJTaoG2nFo=;
	h=To:Subject:From:Message-Id:Date; b=FfgStexVu4dB2LKki4KWGfMoMheUOPTX0wnmIFQ+MH8U4hkEdGOFQsmHBXCAOIZ91/RfVXN7JIi6U7LyJwD+v30A9CMkp7F7e8/FA8eh/FQNBJDryb72GNFQCozkv2w/b0ASJ4eFdQD5K/Bxkhs/lSxEXCi+6Xl5CYgdPzlPaBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFVB7Y31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFVB7Y31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1B6C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754120393;
	bh=aa9qTnX3kTZ7DMbWsJdIeSWDpYWI+qq59QJTaoG2nFo=;
	h=To:Subject:From:Date:From;
	b=uFVB7Y31BJK8c2EiuOz6cCm6BkyCoPVZb8MVvmS6sQqjBW8WZeqkpejcpFsdPVxQp
	 ZNnV5YNcAC+3n3qszfIT8Rd2vPI0KWnFp9De8QsBS7CqsWC9/yARaYpR/RHWY1TgSH
	 WjRoV+S09FwhGilxWkXk68trk3QcTkmsJNrJwQEySJkAYPSxnWvba6uwevhLkPmCoj
	 krHAX7aZPalRzNPNLHYho7FnBUUdTTvL+w80gIx3W6VDCHVOpnqank4jHXeByVfR1u
	 GLRVWyVoYEXYGGlJWw6NTQ6hNgHbnVuiYpn2viNZM6x4r7Xm2Y+5aEu/mw4YhLeKgO
	 TZUxwV+64gSCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1BAC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412039357.31157.17466853951801797420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9709420d4a45abed15b0e59779d7fc52bff5616bf1973dff864d40d9cfd25c6
Date: Sat, 02 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754120393
