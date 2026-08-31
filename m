Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E423A782D
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788144035; cv=none; b=PI22wZcCJTLUK0y9/3OZW9362qb2UuDsaP5YzLOwp/TEyppN/Mz9wfH2oinHVrqss9FsI+4FU9nlatdjbpUaI55aCc99EAchFvlf1Do9AX9D9T6C7D1nodUpQ0dHJVlgojXPQzK5HbfAPJBd2XwSBMTfY+ajbN6tOTLCt/mLQ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788144035; c=relaxed/simple;
	bh=unX+TxuUDuA5VPTCCDEMoi1NthMUJO4mhZGn87jEmwo=;
	h=To:Subject:From:Message-Id:Date; b=BhbswTuomo0VLBU2MMMw58KdB4M5SSkcas9vnMViq3iOr4pe5ODg0qswttHCK3OgurinUX7xrefQ16EuL/YZI8gMYa9NkxRR/drMTUJksdQRaZyQFAEvdXOJzciEeIFUh2m4xQo057cs/ZwRSdRr94Pehx16ZDJMQVa5jxgacf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kf95Uuxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kf95Uuxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F3BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788144033;
	bh=unX+TxuUDuA5VPTCCDEMoi1NthMUJO4mhZGn87jEmwo=;
	h=To:Subject:From:Date:From;
	b=Kf95Uuxe81i3yfGjTR6VoPPH2K1U1jPYGpdtvte7xwdVTm0kmLS3S/+8j02DfxmXM
	 GWDZB3T2m2SVJTUym96E0udDAdhzEXO0l42dbVjrSsvinLm6O3DTKrzWF3GWsxjjWp
	 WPQNrggEfLZKYypKDlmByaNPyaU8fPsmSuupjMJrc39T9S0cmbM66HIDJzcVqEYMZV
	 noKY3QJJM98H9t+IdZArsTsayF4zBFATwXuqZQ+aGLtQM+nRIBp0907W3JpjpHMej+
	 cyw4cEmEnhiKfevourVM2xcqfTFhbAlKS7ma4Qyc1PrExWoqnOvDTnYEwB8GmKTESN
	 UZbctKcEESkKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0242C61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178814403369.26006.15534381459323930337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef9fff73eb48150f0b63edbc3b1463e7ea75ec4c1a284bf5f76bf9f1d27bee3
Date: Mon, 31 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788144033
