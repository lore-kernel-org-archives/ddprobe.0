Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD5D7081A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783903114; cv=none; b=sMVx8ZzpYiT0N4aAFpM5V2ocIDENgh+jaF3+ntq0GBXn+mhOf1NF5AUV0Qj92DG8cD3Cmaq+Z7IICkl03WNvsr+z6l4wgrqojzE9fOpW5XKg153CRsR9gKIu8ep2un/4T5pWvagRGVuejVirTLSmm0HjKwXIwHj/xmnQh6CBOTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783903114; c=relaxed/simple;
	bh=sv/AkMzfcFQ23ZWUwxwZxiyfCqNTBtJPKNrp0GqobEU=;
	h=To:Subject:From:Message-Id:Date; b=U3OW1HT819/jkoca9TXcOivHtZg7Lc9spS1wWeoUFDxpa6KcsbGgPdvdtfmvjGVUPeojZt1cyP5iEh0DZAfPBYpVRkMrCDdGd8td4o8Q1xF9LhaWL5yWe9vssNaDeYTKt9eAzEkhEzdRjWh0uzoU5At0Ql14yO0aVfuZsz72E5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ENRaioGH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ENRaioGH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBB7C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783903113;
	bh=sv/AkMzfcFQ23ZWUwxwZxiyfCqNTBtJPKNrp0GqobEU=;
	h=To:Subject:From:Date:From;
	b=ENRaioGHLGQeLLlyu6Nuhs2TgdeNSzVmYspOT+ya4OGpr55cVOixpBVgA1bxmKuSZ
	 9MX2+vZX1k7YfUBuikIm2UYGgL92pFmWhxqHoI6hSqFnCPVUh/qC0hSqEsiliv66KH
	 ulfzTlbomt/jLn80tsjIL+lqNM8XVjkwf1iazcZWH+wG4+3Qh2EJqsgD+zoBW1uvnr
	 yQE6fOTfxF3jmkEVSwz38q7opogt4GNzZitPte7b82fnNCaPORuaF6XNY6isMxkezs
	 Rxz0vy0O9hppfGOU19PK5nVCllXyRAzEmzEBCN9yCWnyIAdRlvMwARWwvIvQa0DczZ
	 NvQtnmMqtShOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8319C43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178390311368.21780.13354408989506564852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7853e7c73c934e610f513ac78948d9a14e807fae8e265b1ad36b81066387cbae
Date: Mon, 13 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783903113
