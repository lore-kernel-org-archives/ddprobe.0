Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583851CA85
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 14:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716991463; cv=none; b=oeMi2cfSSXTEEib5Pk7+euAg9dxEEVBscCzDh3CEohl/FbNFTNB3NDwlv/2dOEKzHKyxLU4Phz0JpDejCvo2USEFPO2pyjOiTpsDzDYZ+ciN9hsJuoNg0dJI9a2akkY1PMKzb23uM+biC8ejRle3js1rRZym/FfIqIjBTeK1x4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716991463; c=relaxed/simple;
	bh=k2JCE8E4VKLicKM2nZ8QcqEmTkwruzHkwH9UPlB+ZaQ=;
	h=To:Subject:From:Message-Id:Date; b=akQCEqzMlqO/dHP35+85mq0XC2H0bqCGp25nCNwTS8k55Z7yBFfILzViusl8Wsx0Cjlnmsp2PitHM2kEJVNXxhDNfYvqmw+A7/tuBhP9u7AA8WDjg2rEB15sNe/CyEIRxhIwUQc7kMl4dVLJWXhs35K73k8vI5dir2rAlV+I4fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m0ZUCbEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0ZUCbEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB26CC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 14:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716991462;
	bh=k2JCE8E4VKLicKM2nZ8QcqEmTkwruzHkwH9UPlB+ZaQ=;
	h=To:Subject:From:Date:From;
	b=m0ZUCbELs0rWf9Sou40+qeFmZxS0u2WdUEtsdJqBit/nltzKmfR8uoy1/htaz4Xzk
	 aZ+upGe6fS0I0YMaJ74ycUyeSOK26lqxNtuSHENTuNSy8EXTHEWwp4+74oMsZNQvy0
	 38Xwu5RQwqhcMqGoxRE1G3O2zboyH4KGF7EKLpXzE2i03VFApm4jJO5CWs/idQdfdd
	 Ah2qxqrqjpCatliMMyhpREHnUbMkM7jnC6Bkune6eoMJ0Cgxe+iGcACn0OvUZ8uL7H
	 Ic31FVz6vreP6rikMdMYA+4oHzxtCqmiFhoaiqXxCfY4C1bLuBncw7n73d2tHBmC4P
	 oYQHUNjFl4C2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C724FC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 14:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699146280.25204.16340224601220112260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f163b1a84bc6221ec2e1946c1ca5d15622baf182d97b8e2ae88211fb4aa3dd
Date: Wed, 29 May 2024 14:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716991462
