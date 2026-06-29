Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B31235E1BC
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782700714; cv=none; b=qavxzBkpY8MIcuAVlg6+LAWvFJgP7gEeeTG8206TLGNI35X50ChPeePIbKdDnhaDujfyUCdHk+BsoJqnZ30wVuj32uV+cxcqA01PSSwleRDLG/G8ubsv2LgImS2iGxBub6oGJITIDlPrQlGYZax5d7ZrW7CQzKzLyInyAQYTCek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782700714; c=relaxed/simple;
	bh=LZarkz3jtXzBsH8UFLBCEGNXPZ2fVJyptxmUyJyae5U=;
	h=To:Subject:From:Message-Id:Date; b=f1bmXdjJ9nz5WG2ILWMflnhk5XZLli28LYoE7JkQJ/+3WCZ6R39ZjeFbB3tAEyfSTTx+4SZGw9UTMZnHWQADY0RW6+5wHP6KVGA7MX0/HyACujv9WS3Lj31fNAbay8ruPfqxsioZ4ngvcTwNdnW8TcHY6K1rG1Sh7nxpVcMIHL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qk1k/OzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qk1k/OzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DBEC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782700713;
	bh=LZarkz3jtXzBsH8UFLBCEGNXPZ2fVJyptxmUyJyae5U=;
	h=To:Subject:From:Date:From;
	b=Qk1k/OzO2qj9PQG0gJ+/H0Rh1TzO/n2IDWlLTEW0wT+PPSPlr1T9fyJ/zi6oyCUlB
	 j5iQlEtrvc7MTomKFImySeFRG4f9/Aii+5QyFjKp3f7svxyAx4HjyRFdmLBskLTpew
	 lhV0rD6pMzyhulp3kmww/op6lEvt65W6Y7LhhATjfpUjCTnJYZY0lOmsKzSJInlVtU
	 kVQqq9rmwD+L9KYRfVIM+7m5QLRk6J7UzfYq7rI1M2lQGKAIsMrT0vuWq55tVfxf4g
	 Bn/lY7ADJLXx+a7aU+EDW8quMpwAwwtg9de4Qktvt2jOAsy4WIas51dICr+dHB3sht
	 HpdgQBi45GS+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FDFC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270071368.30998.13395293909129931592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41bb0ecb2dd1196e54f7dbbeca61a22334433f465b6edaadc2de8a2996602594
Date: Mon, 29 Jun 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782700713
