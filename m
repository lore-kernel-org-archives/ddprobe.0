Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC01E1FC8
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743380994; cv=none; b=fmqKfahytTV/wfWZV02BOGtuSD9l4ROqB8oy98F7D3lVpMIqebsxZiRMaC6j8LcRDS1umFdCDi73P6A51JbiGQOxVEp4Huaxf1NMA4XxNuk9jLhTwytpdN9W7VFCQ6VCNrslrmJNtqgXsymVEqTr4PHL07CglhSPAFwT92dxuro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743380994; c=relaxed/simple;
	bh=4ujfZpX4fzwwyiSAcTuWu+msfo8qRa/YvQAWw9H0JbQ=;
	h=To:Subject:From:Message-Id:Date; b=FHOxNcDK9K4K5pbJ/bdN58GiDVP6JO+vBW/apED4WNgz7Qqbs3/dpE5oHj5iZqNY6XToA2IwuAG9HxIms0P7Z8Qf/TPSmrb2IEps+7iiDe40nxtYMwqIhWTWvA1wfS3BbBas4DZTICBArnt8UC4h84M8+jfmk2YDELPCGU7/IVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quLIvlT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quLIvlT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88D4C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743380993;
	bh=4ujfZpX4fzwwyiSAcTuWu+msfo8qRa/YvQAWw9H0JbQ=;
	h=To:Subject:From:Date:From;
	b=quLIvlT25ILm6tcg9+IN7FDumxrPVuAFlbF6b7QnUVXqmyCTYeoMgNep/M2KEugqv
	 Vt6B6o1BzMUgMKEWoe3NvEGG0lQhL4bYGcg7cRVwWcCSHEUkiYiH02QF8RmXGyPBIH
	 5d796w0iM0c/6MS6nKxNVcKTQdglahd1d/w1GgsjeujahIxLBTeCRI/k80ebRDpbNa
	 SQ3iJjAM6Y0WtVBTdMaOtcSIuqh8lxZST89nDQqu0lqFTYvCRzu0IF8A8CLLv6S/w4
	 /KmAtoN1MoRCAgvBpRcGPGv/yM5AY8b32d971N1jm98lbiJk7kjzuCdHybPaT+I7DM
	 5cefu8h55lkhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54A0C28B20
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174338099366.2092.10902944794687163154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df806d57152958e313174579270cb71aa8bf6db01aebe139cfc2a94dd1874f23
Date: Mon, 31 Mar 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743380993
