Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5075E79F4
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717789043; cv=none; b=JzP6EIPaj4AUHeRoey+rU5IucmWr4asDElwnqwiHUurw7to7+1tk8JH/xmyv8394NealW/0lwlBs2XA6vbDnJrJJaS4QLQeF4mk3KA9IUGyZxx8KnkQYT2CbbloGDeTVf+LVmxFPF7zgYS/tIUtDpx71g3MyrzyMjWaV77cqG90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717789043; c=relaxed/simple;
	bh=/ofTIgADDI9klfluuK3iNiGIyvpum5Xw1L938oW2iX4=;
	h=To:Subject:From:Message-Id:Date; b=Tlrs4Lqa2h96X4qaJaO7l5FfSpU1d5P7i08zD9Uhnjsa8J8MTWimMPul216Wd6jHiPWdFIw6UBTDpt3nwSGEGcoB4W25cWkWn9WcMakhKyuURctYHrOJfF8DlnlP/acJ8E1LwJYwsDwVNj5kU/2RbmetJviTm45VmNSuntolyKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCiPiZA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCiPiZA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB96C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717789042;
	bh=/ofTIgADDI9klfluuK3iNiGIyvpum5Xw1L938oW2iX4=;
	h=To:Subject:From:Date:From;
	b=jCiPiZA7LemkModGJZH4oUpfkESskr6i4vwDSLP7B13VPWEdLHgoWck0pzDqDWY3o
	 QANfRL8iOzbGcGFwfkPtSzYVN3wmp/CUzP5P7U+reQKSmaAUAv6SKXZuf8Jx22CDek
	 aX5A3YMAky9pRh0gLlBObJ7PG2QL3GrX0PsdrIVJJypbzbNYQRAMEdAN5po/zfIz07
	 DkYFpRzIL7JqLDPx6AEiCJFaLyWc/YJoFWd/b2y86dgctX8Bz4dvt4mtKT2Qyy+myy
	 Shg2FrokMCXNcHE2eG1tNKC9XXCazfXGI5XstIBRQU3rJBQ3iJkAEep1zGT7odikRj
	 lqoAznIgzbvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C499BC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 19:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778904279.24434.10759932062815961256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7196cb90d21b4a9c4824c02c541d1700a03e1b5d5d9b7319d2809923dee0571b
Date: Fri, 07 Jun 2024 19:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717789042
