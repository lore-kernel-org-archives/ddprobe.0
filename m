Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E38285CAE
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766097234; cv=none; b=J/qkL/IXwIE7nl36uC7fKwlLZVwENE8ExKWdIVadRaB9akppb3zIXyudr2wObezvCQlzFzJSpB+Pqy35fSqZ+Vg3e8eOWKdqBTHlAHi8bb2mRMfkUUs9qQQ/oWDNxuE0ksJJp0fK+2fk2WApudzYRQhcMewnXybgN0MWOcnZ32k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766097234; c=relaxed/simple;
	bh=u/4t6hIwKYGPNkiettd6DF1m3vyzXe+xn1RVQ1KODaQ=;
	h=To:Subject:From:Message-Id:Date; b=psjYWf70rhHeGN2qRK4i9lri5jti20RCNErVF7HODRZu/iZO9n9SjhypdER6zB2+jBcs+SB/5N5KVQ2bz0pO6CExS1GAD6rMkzQky5VNoNFV+F1+YN9WqutLzcOcN1Hw3Ib6MdSralbmcjP32mZFEhrO433YoYpTHcquUHUG7aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4WNe9sF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4WNe9sF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4948C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766097233;
	bh=u/4t6hIwKYGPNkiettd6DF1m3vyzXe+xn1RVQ1KODaQ=;
	h=To:Subject:From:Date:From;
	b=f4WNe9sFysOQrl7W2W8UCcsBEebv8HCMih4jxHscQQXhNahfwswy2GaeIg5UjXHni
	 IVcnAq5aAKVJJj4CRKrU7E5B0QXoI7w3ireJXbETJycZUOOthyLjb4JuRXZAqXlnKl
	 +9bYLNGNfNnRdj9YYcrxihoUgDU8rNMjSkyyGejNYHy/xCPXJBN+YWj2Ub4xiDaVsG
	 P9DwG6EZ0m7XWlxx8cfKTaOkqIoXG3vxukz2DWlhwNpeyK7e+cqf4SAqxCf4p/avtz
	 cPKwiJT+toSc9jIhdfNZW4XXv25d1NkvDQ4eBAOmeMJq7mrGjNCzUgo2HvOQM+J1OK
	 o8Ux+R5SjmzRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9153ED6E2B7
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176609723358.2399.11917888607117058214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 609a013b2f9145beab3f71141d6f6ee8a8731c3a79da4b3fa01af237476eed1f
Date: Thu, 18 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766097233
