Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD6D1586CB
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731368754; cv=none; b=e+gUdcIBTL0iJ/tuVkC919yrf9vdJ8tmMqMiHY6sv5IevBQSNOOefZfhmUJDYEv19P4ETH9Xce2oa27Pn43hkvKW8Khx/pqY8PanejitBjqaWbMZMsSVgk9ez9b/U9pax7H6JWfq5np5Bmzc2hfDJ16sNTvI5p5IADbmzOT7Hh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731368754; c=relaxed/simple;
	bh=Xk9qMxj+0GA5qCIEdX8Z2vhdwM/WoXh8fK/d/Ae1L6I=;
	h=To:Subject:From:Message-Id:Date; b=oRKVQDKHo8ZUuxpJFj9hWdu0GRxu1yqXPJQ4cKeF9uaF/uVb/HfWkuu+eJVsD/n2XFTzGW7QbO4e1PLEpL72jIWg99mDVbcVRRmoolt1bai2fn0RX0jKvwRybd0OVEizXOv8YtpdIFFZbAUuhN9VA0DOt+nIjLy2HVcZRTFCu20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqfqhJyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqfqhJyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55A9C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731368753;
	bh=Xk9qMxj+0GA5qCIEdX8Z2vhdwM/WoXh8fK/d/Ae1L6I=;
	h=To:Subject:From:Date:From;
	b=uqfqhJyLNzRNfqyzH41bofDljozQedsig3gT4YtIhrAPji8/k31pyANNbZKIsPfKT
	 zpCyeprEcaSaH21fLY7zBHragbNIKYVlCdoaUPDZ8uS5JveP/W3ACqoShODu+Tjm7J
	 UTR1u8Y/d5G6EfTT6A1/njr6HG5baCQRu0lWu+1l2yk5yabUBa9Oek8gVMSbllKIht
	 zxM4Ze2Hj/ppkl2RmWpVpKr6pR68bMc/kjO3cnsaxrhyxtduKOLhZycR2nA4twCbkm
	 sclxACYvvx2pgLRwD3xefT3fVMaLf2QyhD6zgM1mBzkJWlVuN4SXoaiofF9qVq44ji
	 YvUNaWHSe2wxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94642D3ABFA
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173136875359.12572.3685979746535716555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9715f9731ae3871d08ee32af580a62464a20df1e640ef98812bc8a1d355442
Date: Mon, 11 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731368753
