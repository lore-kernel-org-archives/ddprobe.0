Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C9D255F28
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757516994; cv=none; b=YiZGjdJpy4MV3qTcjDRtJHVPp+zCGrnF7fPbfP3h8bZ86Ucha8OanjBobrvyXTm2MxLqfwksfyx6XKMaQTF2TuIqAaZu4hHAeruQ44a16bEs83Xr8eIQ474nhWf004qU16iDNci+QSbbWLUknZHDBKRbHB5JTFy+Y4IoEmYfgJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757516994; c=relaxed/simple;
	bh=UeFZU6fEiR8HyetLMtBczUFT1/8yTAyK21G8OL2laPs=;
	h=To:Subject:From:Message-Id:Date; b=Z+a0Srd8klAt/AALBsfmJaSUGhoNXrHawF93qLoKPvv0XeyUImw/CE48STgAF5/jdSYEDBCxX0zoddS4J93BtNtPhftc5DuMpZlMhBHaDJc9r5GxY9kDYh8smXXPuYd3lmIK7sE4bxF+wv6oo9Zv/FWly1docddN4l4hIM+P4xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2F6drzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2F6drzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09E2C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757516993;
	bh=UeFZU6fEiR8HyetLMtBczUFT1/8yTAyK21G8OL2laPs=;
	h=To:Subject:From:Date:From;
	b=k2F6drznWUQXgqoDZ2ltWgxzPyd/SrIQ10vrknF4OjgnepVf6RHcWXvzMx3Z401IF
	 TA4lMRO6JBavXOun+9xcEQpNjEsqCf7CdOnu+TFpZ2A5G2tP6OzCS8dSSchc2TkDAZ
	 hLO32pg+EerpP0wKVfsPXJFclPm5PkjAgYQY9BBq/NYRJDNMXfdk4ywH5BM01kmEII
	 eKKo6N/9HfhB/+pV7dVTpb4o4tJY+mL16fw+O7TLrgB6MofXEpx7BR2oXpolp7a8T3
	 m73S1DxfuguHU0hR0IB08dRJVunRdb1bAfalACp0A3d9IgazCmtGOtHGQTpdTxAo7A
	 rOn/gEu0q4ymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF37CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751699358.10554.9260278906354756343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b320f619077e892654b6cbf733fbc09c30c4d937432af83cd521356d7d4f626f
Date: Wed, 10 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757516993
