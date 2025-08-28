Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F941258EEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756386595; cv=none; b=RF2Xgc4TKSo5i91X4P9IrUDsoRPPr5wYZOOwNA3nMQVgJhYmJt/KAz8GQRpUzY6x+RcTq2/b4ODESr2aafANu3ZjEGoU+Zp2Wst1pb5jhuB1JAqjRq8jnkfuPseu3xIwxVOyk9qGVdatvRTvWoJVJ2/s7ki6ini7+eJhzZ9mgNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756386595; c=relaxed/simple;
	bh=wY7FPzEWxSCvbWKyrNt328mIyXGrvVGA8feaXNDCcaY=;
	h=To:Subject:From:Message-Id:Date; b=dj7X85rU2QkYcJwgIqjifwjGqlVWfe9nHjqR8ChykJn9ZMYimfRiIG0Y+7r0TAGACZGdDtbo/uZrETLDBPrUrkI8y86QhwnFxqHCAVAn5LiCha8dgS+SMro3Bu1mmZKICxhucxO9D9bIQYRtqBJ9VkcNCd0uhSU/xQqwxGB5HFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0QW2b1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0QW2b1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F58AC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756386593;
	bh=wY7FPzEWxSCvbWKyrNt328mIyXGrvVGA8feaXNDCcaY=;
	h=To:Subject:From:Date:From;
	b=K0QW2b1A/NC7tbcR8A5HMCMKagONd+u7N5Bo4Mn3AI0AtjvhnM14jdw9OacFOZVaN
	 rIW+JaZELMyPmAldaDE/HmC+0rEM2LE/Qi5jxbOHwWU8oia7UreDO42SChz+eVRhQr
	 Xrpovs24b7pSsJ/72MhTALoiH2fEvRSoQxJ4yqa61qoKaF/RwxJRr2s39+/2bbXEcb
	 +PoDfM6CI3b6QaO2LCxE1d3zuZbfBAfRcUm3C+9I1CZPlvZ+BixK95N4ztt4jPBjB/
	 ZZljocbPR1DS5xOJBzZn6S5LftUXvqAnce4stfYZu1RnnRNJcGj40iRwiiTNQjxsm/
	 DfookIx8le6ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E48C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175638659357.26573.3311415006292825034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e18dffc1ee2b02d2d23aa1c95acfd7dcf0ed0e116c75d5480bb548c4e987f86e
Date: Thu, 28 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756386593
