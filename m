Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E1256C636
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790095834; cv=none; b=nuwPLNwt8Rwr0ea3Vyru0QR1V1iXCVZ/ghULPqDMQLNzMRusH6SJoyV1vkHSJ3MN1kA6yvBRept5dp9TWX+xARHfY7AUk6Y7EdpmRFIM+g2z+lb/R6By//e81ngeCYGriVIQ3i6kmVIizNSNDjGpQlvdHU5Kb4rBeoimO5fQSqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790095834; c=relaxed/simple;
	bh=zCtHB7sjrQbFoGbQItEvfuoeduUCUbGMUqPxakyqkAA=;
	h=To:Subject:From:Message-Id:Date; b=rrhVuU8qBLWTdaczPetRRpWF4pPQJFgvZVeCuY/JmZbN7QldIEHpVkXzixtjUFxmf8WaFHqCsarOQKaUQ9BmiCupai3481vEd6X7pPsldywxOWtUzLhj2CKXKTCX3p11sewj1LxJWgxXNvDvLXI0GnCR+i36wUihFOaFVUu2E4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6mtAsd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6mtAsd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1BC9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790095833;
	bh=zCtHB7sjrQbFoGbQItEvfuoeduUCUbGMUqPxakyqkAA=;
	h=To:Subject:From:Date:From;
	b=K6mtAsd/8SK2P/upMy6B7z5Zq5HA3j9w5rM4nPWo4micla73A7B1KJi5z7hDhFZg1
	 HL2wb5vzH+2mZnOKiBNRxJBRjMFO2vJ+enaQCBOiJrxnI6LQkolip5FYHnFM3NVo6R
	 crlWKkuiXwYzW5/I9zZJ+UXYW9WZsC+vgHPyy8T4krduXHATk655E/RXNS2eOhEORa
	 UkQKsHY+qIy9zhuR0oItJ+siX+mHcYbUqaaKrErfnb9knf/h5gNdi47r/KkOzCjfOs
	 01pSDkmTGvtbthZVwEOaJBOV3OIGJV5KFjtY/eL/fpP5wa7iocQAV7TaedvwRG6LDu
	 6X2wURmj1z76w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB31FC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009583375.18421.339650877439616530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b47a3552250f69110dfa1f7af2513d47363823edd7cb43607940f9a883c0b5
Date: Tue, 22 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790095833
