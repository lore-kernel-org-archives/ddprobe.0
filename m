Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AD32581
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754007594; cv=none; b=EsrtVawy2R+RKyOwcc2HplEQR6DKYqxU4GsKfD2wVfJhO9WbembSTNyZxUgrwcU7CyCa6qEnnpAlOBQB4uEUnaferqcwFMTgYSJf8+4t1RGNDKQ2Q+tLaEajcH3DVTltKiSOB+dCpKzlxG0KxEsCmG/zTTG3fAP/IUQsQmMrCZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754007594; c=relaxed/simple;
	bh=lwLd0hmj7ZuxD5GwYb+vEsyT/WF1jepm+F/0HmFDbsM=;
	h=To:Subject:From:Message-Id:Date; b=FU2zB2xX25wx6WFJVJTB+MIxcGm32CS7iIAQ9hgw42QlnwuIJsPe642G1KYjriWn9V5igyK35Eh5blV0JaUXlAcD9uFLZ3kPQPpfwwumAQXkba9cjwI+ADfoPDVqxOTcbUaAuIGa56SiOXMZb71LDwR4DqyqH7lZORisA8xiY2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPIvVI2S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPIvVI2S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F40C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754007593;
	bh=lwLd0hmj7ZuxD5GwYb+vEsyT/WF1jepm+F/0HmFDbsM=;
	h=To:Subject:From:Date:From;
	b=NPIvVI2SXk2+Qf/n0s3NHMWxAviu95Lui/22SMiTnTcDtWZAnv4FkiNXkk4nwfQ8Q
	 s8hks3pd6rZv0VJhNTYie5ZkY0WBBeikR2gr9hfT9a/r9RnDBiNmM51YIej34VhwCC
	 7Dl4suJbOJS6+JU2RtcIEgSWHMf/y+Tgp126vVtX4OkZyH6rfOZgzKuXBl3zEE7CWb
	 b9XinblyJdIdGo8C09QZBSlY706+PnJhhA1HxO6hJIrJCaaCLxz5XTu3W6rQr15+CV
	 0U3ebuR1ugOxetsLzu9kSQtd1jbueVsqEPBk6JpMRto2DSJK/b+xOf1p+pWtJ14kT9
	 JhdgHAQBe2RTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE18C87FD3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175400759357.17925.10917446368783122261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7519983ac591f82b156b332c21784055bcb21b6f5978c08679dba5ef33ac768
Date: Fri, 01 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754007593
