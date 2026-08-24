Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAF9437130
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787581234; cv=none; b=NVV71mNxHxk/SlNqEuodSXyU1csCaGsL+U02MLxVFCXsw9LRouOE98NIh3pIwwL0GvlE93MXFI7648nM+a9iLb2MTRnB87mjM5QhkWN+RlSpxvzspdhX7gpDe5WoYRagmQAW7GkOLWPIBaTHT0Mak+ld0EWAstktwsulD/7qcz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787581234; c=relaxed/simple;
	bh=kaKxhYK11RVt8/o8vtdUiYmbut9iS4Twl8cKPOAM980=;
	h=To:Subject:From:Message-Id:Date; b=HjQxlrm11yKZS9DEkWXsBDwPUJMPBsJxtUbhVyGJp5SxjTBz7Z0Bw5Pc6jQashebANeNUITTIpYPCiA19yC1s32O96UR0aYiaKGl82LOQC9TRuX3a+yqZgk6KNGSG5y/63vj6mLdsMfXGwfyGN0WN4CXNtKdtl4nRxQIGWqBxqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GSNhqEiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSNhqEiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE02C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787581233;
	bh=kaKxhYK11RVt8/o8vtdUiYmbut9iS4Twl8cKPOAM980=;
	h=To:Subject:From:Date:From;
	b=GSNhqEiNht4bdodThsYbWka/05H2joHYbH9PRmoPuVwTSbMKFl7q2mRGEkGiErlq+
	 ASwl1FaI09AgKDtXJbt/ItUVzv0Qz9iGbOm0rhEyIqwThQdO6MzSREF0p/X64sU9pg
	 ciTvP2JAIBC20qxylcm9fKVTqeAsf5N9zOmbNn3krQYQ/JQjOVCFxLYHTH5jOka2pq
	 VyZbNAeCc1dmaM2gnYfpsYvaFbRcPHVtrrGiR7TyWUY/hgUTAwldlSm0m+pLhyrcNE
	 kGRwdK9sp48SKwhHINZIjWnuYh/1dfnKlTBkRihBH+Lla/T3hyUbpdQtvoPLKwIlkV
	 3qnqbI9r2w+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC653C5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178758123369.4360.12313004891368801529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e42fcd3ed7c4f925b13ff6d63cd790fb5541044efadcc9c4c8dd6448e03b67
Date: Mon, 24 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787581233
