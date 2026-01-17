Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EDD1F0991
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768617234; cv=none; b=twwKNBYJNxTUNQTbSGeefiS0n+L6cynQZ25J4zKIbzQhriQhxuPg2KXGPN7odxxrdT68pvWxZLlyXVMp0rXK/2pGDDVvbznwsQ3kiEgVV41wGEwRhL6FYPX3CEYzudiKeOCS5UP+R+DLsygCiq5Rg+LB9NcGqsxyh0AmEvCMv/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768617234; c=relaxed/simple;
	bh=sTlStp2mRRYre8F6Mjc4gFLlT86MQxkWy72+4GuLU0o=;
	h=To:Subject:From:Message-Id:Date; b=ON5U7UtqdB2n4xT4KEcrHhC10mXFSIfdN0iMkQbPLfNhZGKA7Xs7y7VwuHSw83L/LhFAMQAQ3GN+xy9HpV/PlC+g7ESPJpu4oODQgclYnfSGA6TcrNYd6xIP9RoqGZYuQC/YOUpVOwSoD3PV70X5yPJBYld25+rsYuuwuM5Dr6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i518WvvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i518WvvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7827C116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768617233;
	bh=sTlStp2mRRYre8F6Mjc4gFLlT86MQxkWy72+4GuLU0o=;
	h=To:Subject:From:Date:From;
	b=i518WvvX0oELL8/TxZtXOyP+ewtGWNFj/tkS3z9dzNVkdFNuRg9JiwZof2jFovDS3
	 uDF8jMZPuY4YL3AMG42TBxZr5/+cu3SYk30stGSkDFiuQFcmtTwwuK2JjzjUV5XIMA
	 1M1JONLWCIF6JsWF6XQxDbS0XpRTteUrqs3rFLdxOmefQEcoN1aCUyxhwNsu3I4hPd
	 9JyEubUJqLfKutyNDYheiyouY3z3kMY4VhxES4TBHptwjl3+gam0uB0qHYiEU7fhR8
	 pOx8g7cxAA4EpSNTQrK1gzvsNZa3maH0JkGck8gBpzD1iiXub2iizS1LeDSRa+1M9x
	 JJymZPO1N0stg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9FC98303
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861723357.20541.2669954757163707670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1af65691c2b791655de183095f874ced46f0023df094cabf8c1e01b38e365a0
Date: Sat, 17 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768617233
