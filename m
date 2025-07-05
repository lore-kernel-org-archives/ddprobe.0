Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3426D2AD00
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751749194; cv=none; b=dOsZy2FsMLAWKzTh6cjhxOsQ+1nl9P9wI8aAoROXVcf8xhrw21iZ/lN1yrDjwiappIb60ECuD8+EODNc4P9qSptH79xK6KO7b/oDYJTdGrW4/C8+ZbSVu+7sJ7OuvnFFiLMA4l1vBxvXE2StwsbY/0l2FNv74XMmccg3vpS6Eao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751749194; c=relaxed/simple;
	bh=XluZgnzxwgRXeooli1qLi7oXVDTSSGwDI8tobffXmCQ=;
	h=To:Subject:From:Message-Id:Date; b=l/9mccD0cq1dnp44Vmwyr6eD7CsVKGo+a/FidjpGwWZ+p2JxW4Nv76BQ8Frz93rxs51Jt93aSAIE4jG/qXN1v8A/9az75237SGFqJu6EDXmukh58RMP4Yi0c1nyR2gTG9cj+EcWPDmBtBGxgyYk7rh9lZFWPti/1Ee5D2e7C9R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pISpbMhZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pISpbMhZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E32C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751749193;
	bh=XluZgnzxwgRXeooli1qLi7oXVDTSSGwDI8tobffXmCQ=;
	h=To:Subject:From:Date:From;
	b=pISpbMhZQ0YcrYjJZ4THwG09LNQGc+NRVXDgm2GeqDx0Ns8sOCuoODmEB8w/gnDo+
	 xAI/7MChMskGlIUvPpCDwc+9WiGYc16T6Se0lrs20EkGHXuCkwfG7g9UXrPn6E+Ul+
	 AOj9oFaEQFfZNxAQCUsFJuR3YcR+IMUMucLOZ3twI9mJ3X8JbLDeKhuTJYl3gPeqcC
	 PbNJrExvwDK6KnoevdCrr954QXd+C8BKIy6D+Meci+aU06dvDvIAOTx3d0tIfgTteF
	 EuPLOPCMVLo5YtBdDD9o/I6SRbsPRaH6njda0mVtjOkgsUD3z51463sd1YpQwe6Dso
	 P020ByCvWn+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E6C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175174919357.14941.7814175068746977063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c6ec2f978e8e156399eab5870062688b7fd62cde57db5b03103d879e41cbb7c
Date: Sat, 05 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751749193
