Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541493B5306
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783417114; cv=none; b=MrQx8OFIf84B3KVZC2WAhEcygspq2T8TlO9dy/FLoyPc2f3fRPPI7EOjoAE7Y0VGZyPbXAMCOZmvuteCrlDJgLSqZokLpFQYwq4EQwLvw6ZSnSrPJrrapU0ELLO3HK9ZytS0SMVBHnFV7lndTiI3Oeg2zGgZF7BuHOihhCLNLpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783417114; c=relaxed/simple;
	bh=mDOgS5AJBMIBHgs3VLAOD/+knHUJHBdDL8sEkvPFGak=;
	h=To:Subject:From:Message-Id:Date; b=D9neQEsTOhWbHNyb00WX2ZdMzsKKx3pkVdpNLGZt4/bgfsU6VRzCJFbzHEILt6ZJVM9snh6AvYSUiVyCseizF18LLD/yUBOHCw9b5+Ulq0EJ/WPvHJYrrmZzes7zTW7dVOm46gv63lfp8zV6P/JTzu3gy9xPadYk9DLRAr6vNyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iw1Ozjep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iw1Ozjep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BF3C2BCC9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783417113;
	bh=mDOgS5AJBMIBHgs3VLAOD/+knHUJHBdDL8sEkvPFGak=;
	h=To:Subject:From:Date:From;
	b=Iw1OzjepaHznjFGiGYEuG/PTAmWnaSUXAug/CexpKT01hYU5Ql3adMhb39N6hg3SV
	 mD2T7ssHhE8LJphyi0zzI6rHKmwiaAqD6MfY/wHZA4+ngf5sMSgO/m20AEuE+f+EbI
	 p/73lLwJwi7c2Hg41ivTM/1FufbfWi3NAV7mTRhRnJZ+OSdbGFTXwwCWM4TasGno41
	 043fuGC4OJysljyubp05ohmb0n5J2/sGqnoXdNa1SVDXPcgZwC9UFpBFj8xZC+ssQ2
	 fJ79/p2syvSDf3RC1xohZAr94fr9gYaZCNeB1dsJytlO/bvXB5ecBmbfWoAVJn5GF8
	 0uZ/ZwSdGdewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1FBC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341711370.3021.8692933238909984743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38d9d928ed05af8bfbe8a010007b7cd50d8da13009933694b4a6dc3c980f7c61
Date: Tue, 07 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783417113
