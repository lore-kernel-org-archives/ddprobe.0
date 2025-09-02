Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280D1267713
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756801194; cv=none; b=H5UahSUBVcbL/VYZ271YW7jmE6Y5G0l/GHBTZ1TjrhTTVSG79mVsB4KTmjolIEpic2DVOMTuNWN1CwL+iIQ8WxpKG2vxKNgZD3VdTd/DMbwhlCLqdwDt9mhWt0SD7yxqF0V/vK8PpLyN5MJL+8qIoouNWt5HJfraArAdOuIY0is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756801194; c=relaxed/simple;
	bh=9uV3v/KvYoVMeWrFfCitBFtR9Y1taB/j5G83WM8mPt4=;
	h=To:Subject:From:Message-Id:Date; b=bU8AHTiv6Ai+mwl8l4uJlrC01ym+8LmE8mppZb0Ffl8WFVCudHIu2MskIInfxiNc2TGN2BflhHUpMBCXENIcksNTVTYoFrznstx4Vk+7i6jHrva9gGq75nfmQlSd12ak6D6CeSRc+xptUuwIZK6PfmMh0p9JTBqehTH4kBYskyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umbEIAFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umbEIAFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35DBC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756801193;
	bh=9uV3v/KvYoVMeWrFfCitBFtR9Y1taB/j5G83WM8mPt4=;
	h=To:Subject:From:Date:From;
	b=umbEIAFNXYli+r5ThCrRiIO0TIDEtEtdo7zUQVeDALBGJDdH0Foy/lEEr+QpOofhW
	 ITEXHoqimk1RAgJ9zQD5rY2BK/zgXdyVMVX1/xjF8m9++hDvbvG7Ajja2kpehxCyfl
	 QlDyC8IAjHNAuGuesYN1TPD/Fj8fp633bUrrqjw7ACxAtG406lNPR8zy8dpn814RD3
	 blNw1RVMsKOJLTTrC7/m58vNHvRxUl2wdcL9yyeFr83f0XdgNC9kaef5fwHPJxE0pq
	 MKG+B3/k3grRCXcZ4/pOkIeFV4C01gO/8KwmwONy4BPw5DMNQB/o+x7co3qgKa4s/9
	 3or5n729+vxjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE04CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680119358.12052.10696833501812444702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1a0566fc0649218b58b6e8ba487c0c4f0013e314b46f4c98536e5a2f21ae55b
Date: Tue, 02 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756801193
