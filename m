Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F01126E616
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710416297; cv=none; b=RLkPuXWQu5fnCx0QLxZoOR2uVepi0Bp2YO09X6MKjUObfvbVGqclNzSSemlHorrWmjelKxjS84VGRsOxf0axsbIjBvXqk47ML13w9EtkWyYfGkMVgBsp5DAeQY9ExlgYx2nwPyU328z6GRp2+GNFNnV5CAewSNCx7bVr/ZVrj+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710416297; c=relaxed/simple;
	bh=Z485ococqU6TyIKj/e8VOYQhpFYCs/cFRKg4qT07VJU=;
	h=To:Subject:From:Message-Id:Date; b=kw3nwvN6C0soP4fmGRfS17k4MrNaDZmOHrwPwPnpTzcoGjC/KDiizvgtpLQUSfMnYpFVwbu7p4USuWBJcmTfi7x/mRfhP4kx5KheBup2q+CKbqajSWeArAME09/Wqld+pA69Cc8Y+zTkrJTCwv2OWJWAtIU85KkM0dQwiodOx08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQZGIvDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQZGIvDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 732AFC433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710416296;
	bh=Z485ococqU6TyIKj/e8VOYQhpFYCs/cFRKg4qT07VJU=;
	h=To:Subject:From:Date:From;
	b=kQZGIvDng7X/BUQbcMVyo9IBXHAeOoF0kVgFZ3lRpJesD9MrvNwdjuzsQ7swjGowF
	 VRfbMs9c4GWdtU+u++XeLIkk6JZa3/dBfdfrfBxT6oaCfWY6Q1Ba+4ib4nHDak0SuU
	 kN2zgXHHVMW4Dj0iadhHaqzGtTAxB2sJG0XLzZt5K3a8BcVJCelNFIOYM1hkw/XVHj
	 EUlvmtaOPNOwmetz8iniG5Oq4zX8cGY8C4GuFyYerq8PH2oEnIHIyNx6cD4jGu7MJQ
	 D97/gxj4SJnEun9/DQBL4+nGW5nzIR259Tpcp5yfwxvYbHpPoBuE5UzvldOCC2LKAv
	 sF3WWDE9MW9nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 654B7C54E67
	for <ddprobe@lists.linux.dev>; Thu, 14 Mar 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171041629640.12003.271111867397972602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357e5683e5b93012296678b425957b09b00c47897d3a40e7dad8390d753cac53
Date: Thu, 14 Mar 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710416296
