Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353C5214A82
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743451194; cv=none; b=u5rymkooFpwSUwWDaBQuhORHnMLPhJv937XEUZWOz/5+IPIJ0h+CH0uGCNd8amEaDmk66LkbMLxVNJLW2TSz+prQApfsJAd2lFhscbENnoJ+9CJIQMLYd3LSnTLShUbk5XRa5h2mpPq16KIJqDF2wP2ACSPAxLjCVdfIGF5EiqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743451194; c=relaxed/simple;
	bh=kD1uhI8H09vjBNVRe6WKbP131ZbExoaTw4zuy8pQlCI=;
	h=To:Subject:From:Message-Id:Date; b=syrMcB04IoOG7EDm0gzzJlTjozyrbJ8jZ3ipUa5Q1gW47L40z/hPWC0f6LPQyjm3HZRSShPKCXfASBzwSBfi1A3slTcQpLSp8WCfgv/Eiy8rEoF+5zXWEUMAHmQ9c1LPkHaatDDLv22snJxi4e5KEMB9/mUVeXTiHMmDdaW9Qxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmPAJWPY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmPAJWPY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1617C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743451193;
	bh=kD1uhI8H09vjBNVRe6WKbP131ZbExoaTw4zuy8pQlCI=;
	h=To:Subject:From:Date:From;
	b=PmPAJWPY9ezJQdiBUL50EIqkpYA2ss47ashkjt2JytAkVRcnt7oTFvEkrkJY83sYp
	 U3taAjKmm5d0UJqkkEYPzNyzAqL7yL/PYtWP3HatZKUFCtzd2uxI6892wKm8mMi2MT
	 WoaXJSLjRII67GRlsPzVJ1NuC0CYCgy5KpEnmYKv7dRTVNhj0zrnSup2n9SKUoyvBU
	 B9cWUJ8R6CGO76BsEcpmYi/BKaXcZHFB+YqZ4cXSxDQWJOODJ/kmxp6Ytr+H58X74+
	 nu8drJMB4lqhvdSuW74YM4uRfoOkcItQ4x7g+umGVWmNp/zCiFnQHbedm7jpu4exbk
	 cZqD4/tZZl0XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99028C36014
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174345119361.31561.1561238422115808275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fcc39b5335e4fbcdc022660b25e351b87b277e10445f33a0e80c29f2f2e398f
Date: Mon, 31 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743451193
