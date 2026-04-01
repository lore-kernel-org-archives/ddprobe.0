Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306E34035D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775052934; cv=none; b=rZeNpsq//LhUf3qsCvAIsNH68OrqSyyyN/x6iYtI4mGfqaWRHiwTmu8tENx6cPFBab8lOa0XCS2Q5cLm9khrxMlVLIX6srRCtcdz+gG5r6qBEFFQFbDTavT5R+RIuiq11Mydl96WFCmCQVjcoHD/S15WaD9oYgGA78x74WLg8KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775052934; c=relaxed/simple;
	bh=XQwLS8zVCdFOxsFJDf19B+Eq12YCwGFT46Djm34F7nw=;
	h=To:Subject:From:Message-Id:Date; b=Ei+ZWRX28NkhKanv5/MnYjUnDaSozg1sfJRsT+TRp/w5AYPCUTMs7+vSOkcS6/sei3f5oBpeb9L19XAmPeqNvpu1WHIeCyihsDM7gis/LQnt0LhNBs47+eBJYGHS04Wj+3u9r+CiZm2CIuYhOIhQOWKY1lcEtlHUOhuWTDOtZak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sM5mYVKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sM5mYVKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01A3C19423
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775052933;
	bh=XQwLS8zVCdFOxsFJDf19B+Eq12YCwGFT46Djm34F7nw=;
	h=To:Subject:From:Date:From;
	b=sM5mYVKSSqAybQ4MfXtQ4N0p8AwUL9IuuOfHF5ZUd3IDjYMb5wn69Vn5OBZRyWutJ
	 sQDdYBebnsmco/lEiSkmGO2QhacyUgkYVWcIzZ2LE3MinckMwERXC0esXWp78e5w4o
	 aULJpkMmQlpoe2UZsMPKV3pa4Ht6KJ5GWNpRdJQv5X7saiYmLtRRY+i+7j07neM0Hs
	 e/6RBlyvkG3zS1A60wHfekpUjRGbGXWBTVjk/nxVbvMXeCfxNgcJvaqCay+skOyKDW
	 JSKJY/Ze7oE0G7LOFaIEyV5nohQ/YAuv/rFu7jl9P40o/qo8bJOFUZA8vpDlJ0X3dv
	 LzSe4YVPTFEmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B2E107637F
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 14:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177505293373.14727.16001628289466239203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14411998e2581513670aa8e42478d66422a6805931e6f697749de625b1f8d749
Date: Wed, 01 Apr 2026 14:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775052933
