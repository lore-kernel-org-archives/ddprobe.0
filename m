Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3023C1DC9BB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747105194; cv=none; b=FdeaCOovIY7QQwhg0DH9z/PUpv7gw9r7i6t7TkwuFY/wPVAetRhrJWMgPgoIHKwD/LdsliRnfItuE9CJtaDAu2r3Epju5tNEnJ8Lcz2Z72ZptRzkpsC7NGalWIHvmwW1Ss1KqOAaov+yt9m0j28FllWiInszSaZwbKLiGLr3s78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747105194; c=relaxed/simple;
	bh=TDYX5wzuDiODeSj0ZK8U+qdq0BexvYdFRix3CXDHM5I=;
	h=To:Subject:From:Message-Id:Date; b=sc8/QabZekHcdmfr0NZ5pDeI3eeTGcwl7cXErYao8kA47W7A3az1xL3PST2lgMtemOi7byiymfgphcgl0+OrQ2rZ8Rkww1van2vwt3AswoXiqk+zQcVsc8KFT7+Y0EonBzs65AnOiT2suv7iU/UJuV+TGbScnYUIv1w6L00f7ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqsg1no4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqsg1no4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AAF4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747105193;
	bh=TDYX5wzuDiODeSj0ZK8U+qdq0BexvYdFRix3CXDHM5I=;
	h=To:Subject:From:Date:From;
	b=sqsg1no4l2zQoukQGrlLzVWJqzr0wLXt0GEVDYM2PLcIWdzpb/E5mKdZOfg+JPMLD
	 T4NlTs3TjR40EQTznLCXj6C11S1juAZWpM5NkyAThIsMmzMH7VeDd0nGXCFaow+3qN
	 cz1GL+JOSfF4Sno47AvGn7UH9FN+WAFZgLjAJC5CkcILr37Mve6TSnV0uhcXtZfuve
	 3YBViDJgPdkRxYbqNMKyJtIy7LC0/6Pa2IdoSPy46KmuASBfQJK5lXu9w7XzjohSaT
	 n4DtlqhMdxaLpjZCJppvGNZu8UdMcUTTaKSfAGRJQACGxGZtFrqWP7Z7biFPPehNj8
	 8RC3csrAbpAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CF9C3ABCB
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710519359.31524.2904968117900021516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43caa07644acaa0d1d7379b8edfc9b1e3142d564dad571f5e22fe7bab1909210
Date: Tue, 13 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747105193
