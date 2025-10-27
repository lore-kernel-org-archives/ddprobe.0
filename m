Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBB92E6CA6
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761599994; cv=none; b=baoD2vbgIDeWF+SSnVCQFWyQ3uG0FQfZEWsUPxixtbUdV0/rhD/7pUoJW6QjYhdDd5XMmSr3Vj5d/VG41yYf3rFGLw7WfgbuJTBn0ay7M5Yfy//zT84y//zcPxS/NhVm6BbwQbAN18EIMO4eoCB+UYqf6rYTCwu5dsktpdxiELQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761599994; c=relaxed/simple;
	bh=YKED3eqDlFP8USmNvl19Ks4Hz6E0PLbotErsZOUtvRw=;
	h=To:Subject:From:Message-Id:Date; b=GfbRmDbO9xYOw9MDUyipLvFR+TTwPSMT0qNJQ1LeXna/VX467xiZhk7LWbZmXOZ0ma6Z9LcWB3VP1nUzTI8+qTiV2t/nJUvqDULP49W+bqcWD/bxR2d3Gex+wlOGjOiZq+4tcC/EtJHFdaZEDap0F6KlE5EGc1Ibr4hl1RyD8jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TxQJhJKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TxQJhJKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF8DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761599993;
	bh=YKED3eqDlFP8USmNvl19Ks4Hz6E0PLbotErsZOUtvRw=;
	h=To:Subject:From:Date:From;
	b=TxQJhJKUQ8U2zYXh0Hk0KX1SEVm8VRMnXcXFuyp5t4oSjXdTxub4nUUzvr2NbegJk
	 mXxKw8nYdap3Ggu8c7COjllkCukfAbgNBhG5Zz16KWv/B6Mu8sagQSNiHLO/CUfKlb
	 PTKc4TXTk1bAtaKPp43a8mvx6FuGovfNsBIHQ0TaM29OEG/6NiKCBhq9sN4bs3mbQi
	 SdrumknECYEFsnMhQXZKyhZfvnjuZ0yZtHp6scwml4djmsBV7SYEmRj4oQ/ehEhvAv
	 AzNL9HwWZn+YI5sY5RKAh7WUdSw6GLmHr4jHKedqZAsuWfFn/2NydJ3DF8dXTZaCgd
	 UqshKp8bgVQkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93670CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176159999359.14359.6508432505879292277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f15e9291208c5076a169365ab7c9727f8713228d53a5526aa1f204adca47b60
Date: Mon, 27 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761599993
