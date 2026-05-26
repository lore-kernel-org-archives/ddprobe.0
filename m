Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26313369203
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779835954; cv=none; b=MNv7zbL05IjXY/o1b276Oio5Hsn3+uZ1wrTy979rrK0bT0/8Y9Sqsni2/l7KRSWxgwrOaLjPjbI8g45BrH/NCGZl+oQpYJQywFM3daIpZNzogJSE9DmeLymgCgh3rquFFBMDd+5EvfIk4cmJL3xOHpBDJSTsZzq3AWX16YNAEwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779835954; c=relaxed/simple;
	bh=LJHsrzPx+1DgTTsHaSKB50/oCaVF6L8O5SkuPKtEcLw=;
	h=To:Subject:From:Message-Id:Date; b=dvo4yrn2ryNSldU36aUhTTIh8llB0ke+f6uZagEypYkRwo8taH3+NFjJInV2EPET/zCYtAsBsR/qOGodp312GR8xwT58CHdXxEBAp4kyu+pf9/wskNHTzINJQYy0xwxNQSTSVArYfvay74onvG5jvxpc294eJ6jchxWI0vyYG2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qixTAmZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qixTAmZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C500FC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779835953;
	bh=LJHsrzPx+1DgTTsHaSKB50/oCaVF6L8O5SkuPKtEcLw=;
	h=To:Subject:From:Date:From;
	b=qixTAmZwe6fEDuXmxQJnJH91XcrGg1g1W/ZdXsIsCY0sdt1g55O6bdaOggtYuGV6p
	 xPhZPjKqzDCMjPsDQlNBoU5Ys//yBelk5pkphISpQr2JLhHgSKoLYkCxCBPzGqOUwF
	 mVr4U1oTElTuesMrii/LZxfD7pvTWyA5jmCW1z3TXVmomqSR4QB1InwBNndsm4b3QF
	 frfBeibw/xQ9BqCngfLMu+QJBYq7GMJZcqhMWjTvqGiVC17DkSgpGGj1L21hszUL6W
	 PXTiyz3LlsMzHb0dGpGgyIacZVV1Rdyhgt+Nourqm1gmyJH1zBYp67F4qdFVaxY64n
	 YneVjPX6gMBrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAB0CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983595369.8752.7727036783096873942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5e6eedef653c31cebc1bcb96e226bd418d9c22067b160f7abe7688b862e751
Date: Tue, 26 May 2026 22:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779835953
