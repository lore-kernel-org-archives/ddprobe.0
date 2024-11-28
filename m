Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438871A0BC0
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732805754; cv=none; b=oRENIAkVB2BRrW9J+NqYLMQTxoTsB0nydrdWX1xZKVuAAlPCkY2f/rmXmkpUxrNBOE7d2FEARjVxRSwvcCGCHETVo77qLSreY8TtcDaxyA5NoRv2XB3VUj3SrRWXY0BgjdCfRzR1qJ0rZNNtyKNe3mlHU73wDlthsrXzVHX9WtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732805754; c=relaxed/simple;
	bh=7UHDydtZCjXK/O1g0BuIFFcFAvUJpUn03Zh+412JLE8=;
	h=To:Subject:From:Message-Id:Date; b=Fzdt1XsBgrxYjAKLDERZnw8dqzz6WosOqABOlFR+rau8XI28FVeW7+deuAixMo9++F0SDuhCQkisAnt5gaTUoMF4jEd1tziQi/I85iymRyXxk4KHWHJJI5TjVBHVlvnFqr60NFwsMBcJJPjs1cnZ4N58/p+zJG5WkAUDnIL9aJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AelSgcox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AelSgcox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB08EC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732805753;
	bh=7UHDydtZCjXK/O1g0BuIFFcFAvUJpUn03Zh+412JLE8=;
	h=To:Subject:From:Date:From;
	b=AelSgcoxhyCeUphED35SBC4p7HaL4Djbn9W6c+IPinzZGCgsNiGB6uucs+iClCKjc
	 p9do+ImR67s/1HYawrcIZ4T5pOhYMrVrcSAxo3Pkvqcuu5wtErf4VL+zz7OhZUIlcY
	 yJWNCJ2QrIGIn/LcOg5h5itQYGnu1fJpegQ+QW1nVTz5tlyTt95NhnMMTddYTM0PcN
	 7nFCW3Ylro9ssABnswj455Z41DIsjYVRp7chfXY9AOSjj52FswtO9BroYms5ZSwUMA
	 IXUpOLcYq9LsJUGQYjMitH3trE35SKo1ZMl45QRlqLmSixrCrbpgnWabHve9Nyvvxv
	 oF8Qi80i6wXcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94995D69114
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173280575359.26041.9976715844519418012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1374b8c7bcd9f3a74d206245f5b695c225922a41b1821932e7aaf8fbb50ee60
Date: Thu, 28 Nov 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732805753
