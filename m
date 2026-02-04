Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E3A38E5DF
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770192834; cv=none; b=jSgYlUg054dsZVAVM89cQZpGRPF6wJLECrUGQcvASksVb6dou8aGKHAv6TUN98nZ4O9LqnqcP3NcbEG3OmKy131Bqenk01TkvwYQBGWuiprstUeju2E8sjA29dwS9VqZ3lIHFfTTRivekXtPiLbuuOFQmALmJpICGmTLop/VGbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770192834; c=relaxed/simple;
	bh=fyiN1bIqRsiuIUNI7QDrjKX6jOuACbv8sFUTpPKljNc=;
	h=To:Subject:From:Message-Id:Date; b=Je8k4ToGxDCHrM4pU25ZD6BdN9MbA9xPQ1V/navzI+wJPOeTpFip5AAFA4cqL0LE4hm2RLs56eIX0p93cmWApxvV2qF5LP0zgvAfSX7AYQrA2Dqp9bLC1C2n6w3fnTTnigPHHZ+iN3ZntSRFGr2qMJrNjNs5DUqRdFVX10ur6NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMymWrfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMymWrfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C26C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770192833;
	bh=fyiN1bIqRsiuIUNI7QDrjKX6jOuACbv8sFUTpPKljNc=;
	h=To:Subject:From:Date:From;
	b=GMymWrfsROZxu9HdSH1AbCQEDASzmzxw4jBWsk2EpAa4UjIeiN95hUyA3V4l//s1C
	 xRhqZexjLYve+IdB/yEuu5Lt+mQKfv12tqs+B1U6X4OcLT/bbkYpLj2riUozzroiOf
	 BT0+VnZA10ornADxcGOgOVBQGTdy4KQdNr/QRElToVK3l1XzBWeITIVYQF32BhNKF+
	 vYkBD5NSYshaCwrso0M+PbosQE9+d2YM4/040KYMoK52ZimCUC7NyAADkd33tG8pXJ
	 bv3NkoSIOTGp/cqQfjMw5Bep78TV4/fy6s1KwS0S8H9h+SZJElXfha3AjWHSltj74Z
	 zRQzpqBZlqJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912B5E83EED
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019283358.22399.12153637019149584649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eee01b6f672d0fdd37cf2faaeac4f80456571c1573d03b927bced81fbebd68c6
Date: Wed, 04 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770192833
