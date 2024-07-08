Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8BC80B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720411583; cv=none; b=rxkukJ8RhOw4YNc+ojB8scFDVZoz/Be/Vd7LByP6Hw5sEimKfo/ZauGvG7StolfniY6Zs+B/7szZ3QKidzy/NdGf5qg+qYSIHHWekjM/qHNKfcZU7iDe+jrOXKzyVSqwJV0WI3oZWyVnHfqsdrtZ6+Qrqf5J3dqvCqkeSjQ7jIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720411583; c=relaxed/simple;
	bh=xs7o1+ybrR/T0L1/cU2Tm0sCX0VH0SvTn2UXpY18KOY=;
	h=To:Subject:From:Message-Id:Date; b=f+pmBieOJsb2dgz+uUa/oG6soL5HrWD50hfbTW/qo6SB5n34skNicQqHsTxhz9luJyWGpjxa3luQ7SdACa0Hl9bCZaxClNiFb6a6tlYdbvmvSQi4Y683+6Z3QciRc9cQI14J79MQ8As94P+Dr0OpiAtXOP85rXSJqSk7JJB+KZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVppfOHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVppfOHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E793FC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720411582;
	bh=xs7o1+ybrR/T0L1/cU2Tm0sCX0VH0SvTn2UXpY18KOY=;
	h=To:Subject:From:Date:From;
	b=aVppfOHT419sIh1VueI6Wm7saulinnzwBIrxg/1PsNNi9f0OeKN3cwD5rLiImP9Zi
	 fK3tFeJ05isO8dDdPR8rcITlXUc7MWtuFiNdFbYGsJeQnvXgJCnK1VnZYPp+1HU8T1
	 ae2fSH0wOC4TXz+BuelL3v4OiB/Yv2effUDv9gADcs+cCzWWNm0rrsGTYqRJUk5F7R
	 tlDM/AYlijSm2u+bwGC7My5hm/ChnXFUhCgTgv7iquIgGVNX5F0gklq7/39r+gChsd
	 TEHw0UKWSohTUhyxokkZdJlUgYikoP7uoj61Lq6KMArzj9j7m+nQL+EvPi3V5sIWS8
	 l46UXNcV+Tdzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF47C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041158279.25492.15927475758595205391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 014671dddb34a499f23e010b591eed99516e3b033e32dc40ed2ad57a52bd0c0d
Date: Mon, 08 Jul 2024 04:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720411582
