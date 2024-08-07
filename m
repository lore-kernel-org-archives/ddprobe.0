Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 260C42D05D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723049154; cv=none; b=W5WgGIYdN1o4Gk4CaD9lZ8Q0o8BbnNh50WDZuy78Lw9w77HimVdv0wvZ9CQICTifv52kepVcSb8kndYl8mc9jQUMXAHJrSaZClTB5a/xsMuXZ5vFoP+Sk+qUgg19s8wTJYjMA4pNdp75tIDtsWWMmj1C/EXGWdauhQ0rTGmw54Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723049154; c=relaxed/simple;
	bh=EVpwI9gWrgROsMeWTp3lShJ5ESr8h8+XbqVtbNpaI0E=;
	h=To:Subject:From:Message-Id:Date; b=enwJxhf8q9FPlR+/mYZ8mIGu5Cgf/slJKGpXYDorD4RUtHuwyrdq60jx6cwWsJnfWoO1q0JNvgkdcmkGA9Eb+FJecbakzpqylgAYoY9IU/jKBpB5EoPZSLC2fd5VqOsMtRS5KY5Tuvj/Rm3UR+guR4Z54t4SC/QjgIdpRz9B6ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+1rb/iX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+1rb/iX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0484C4AF09
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723049153;
	bh=EVpwI9gWrgROsMeWTp3lShJ5ESr8h8+XbqVtbNpaI0E=;
	h=To:Subject:From:Date:From;
	b=I+1rb/iX+s2UI4w4hCz84zNfusNZRVvinGMlGTObV884BVVZdflGdUYrbyKqf8ePS
	 rslrrdLcCIxSf/zUbo04rVyhfczgQPMAfgRxS/TuSAiZC/g/RsP3kKAw50VyFap2NN
	 CzDSYHLH9KxL1jIEC/koK8yg9/FkqHQOPw7Usj69iL213e22YP2XtKkgI489HwlJ9g
	 fGJBtOOvEhI3x5mt9soor63N8cqvDp2vuJ90wFg+2AwWGK2pa90pkcM/KyXYrAzQlm
	 Xr3x1SgciQ+XsrA/mxT+mE2gc4+Dv6wze2TALnKQGVGPI/qVGYAqMzDBk/hVSz0qMR
	 mTWpfgVHQbPkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91995C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172304915358.19297.9903496326415354764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5ac020840a9805ec91cd02a682c71e019eb77b7411997146368d5ef04ab821
Date: Wed, 07 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723049153
