Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2180B2ED16B
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759325395; cv=none; b=JIxVMSCW9+BsDNnr6BLPMcxj5KDaOS44SMHsLyqaS+t4+22HfPdOMG4cFqCuXMnJS8M2Si1ou8eYbU2GpbDgaBOLXw6txB4ZhhVA36PEA4KRPbyKRoERGHX+TvYWMvBioryep4sv50czD8wMcdQqJGMnL/6CqjXZqxwozczxgvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759325395; c=relaxed/simple;
	bh=pjDrifwvEutDQci14gV+u/C5w6rH5mwZTu8wbqlOwls=;
	h=To:Subject:From:Message-Id:Date; b=jyJcXAEOba/t0NYYCmuAHaxRdksGE7Ps6QhnHLnbn7PT08w5Td6y4V26WRpFTsYrAg7UI+ovBfIlFGaBQ8i4txW8XLqq+GwoA0XBvpcsPkGVb8FYP/+I6X5oIsm8OCSZLIUqkFBOZoPe/sIq29z1AQV09e/i3ZQxsIg8GNnefVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p1bD7zwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p1bD7zwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3276C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759325393;
	bh=pjDrifwvEutDQci14gV+u/C5w6rH5mwZTu8wbqlOwls=;
	h=To:Subject:From:Date:From;
	b=p1bD7zwNdlBZ3QDuiHBml8ZMqC4C5iyky6niZZZh3mF3blKgcsXKrWMFK0baby6o7
	 Nebd/JWnkLuOTXxUIfsZHiZxmr/Azokoz13aRziRMQF1/GenxS9CjSe9uRLpROvO2t
	 Gtc+Qit5SdDqG13Qze6cSkB9oEMTpJdvo+lNLTqWC6VyEkVFxxbHxkI7+Xuk3jjptL
	 /jeEbrpUggfplu+jOUp8x0t1q0O1Wy/I5Glo8C6yNMCRZWYCO3iVju5+jvW/IqzarJ
	 Y3iEoBLGBGLu3NHQ/kM89mRywYrjg2mE0jjo+dfi23Epi/VkbsQLpKl6S8h60X1NgH
	 aCG004yM7gWig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E1BCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932539358.3252.9574293585996438819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbff48624655d7df2cdf324cf5e2100b45633e3e4508abc3bd203dd3bfadfd2
Date: Wed, 01 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759325393
