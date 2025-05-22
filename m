Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16BA2874F5
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747912193; cv=none; b=a9lS3r9VX/S2ylQ0gn42bX2ZwIqXctWl91LQu8IIqECGkyH0EStU9RPTigY3oqZ0N2iZ82RsRSsRdfCSzt+dlESlPaP7slrOAEy+ukJ1oN+OsoHDSnSeCJqt5J1t76/wlyft9Xb7mTGvMdQ30hVU4HKwi/PXBld4EmsRMfXtBJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747912193; c=relaxed/simple;
	bh=dCnetr/YAr6YPV3LKSxmAb+YrCuDCXKH9A8GC5/lFSY=;
	h=To:Subject:From:Message-Id:Date; b=Mtlfuw36GX3yZzM5gjLRqH1ZxPO+h5pWhtB5dm3cWWzUl56cyIccsTFHA4255D6UnXnqPaV7yo2+VZ4tC8O2JWYkUfezHg0M25TOLsWngrfJReelySTfxSyeX5iuuc0qEapLo713yXgQ9LOAsMTA2/l7ivarW/n0+Nj1kehjEOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUrY12mU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUrY12mU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE02C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747912193;
	bh=dCnetr/YAr6YPV3LKSxmAb+YrCuDCXKH9A8GC5/lFSY=;
	h=To:Subject:From:Date:From;
	b=YUrY12mUamZ4KPFTvxdvlNb/OfrB/A6uW3y5qUaSUU29qA0VVtU08ytshoSlyrAZn
	 UraQ/33tJt2zQp2FadQ0wy/sP1kj9e4WICuPySiK5oyqnflYe4HqtSuS+dtzdofz0X
	 e995gTHtxIPBc+RVqUzoRA8+DVjIWpBut+NOGpVZ9eJA9UWolXQvBCFUx3JRaXYYY1
	 bkQLIDpCTPX7cVQWdqaQ1Mjw02btTChes7E7XruqWJ6ii+hAKkk1mcDB1+AduOZwX3
	 26er949NXTJ3feMz20fKK0Ob0cAdssCY0Kykz+5omWw20xmn6jdIWQNqdIsNEfagsL
	 v/vLBhfBgEv2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54AC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174791219358.2665.11662786165918697820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f99262e78ace720df2c9570b08e8713006fdd0c53fdd8f0d86b4df7882eca3
Date: Thu, 22 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747912193
