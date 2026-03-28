Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BAAB242D84
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774742094; cv=none; b=k1i37kmphuw3mvK2sPv9NwcUTOS10pJikxvBDY4rUjBDoCw3XXnQe4R+PG1h8CwRVsfyr1UT1ECv5d/JFDXC4nTQbw41rKqoSJWuN1TceS9cZqDu93gy77tg6+1QWSvp/lM6BSS3ytLz2+dcXqGeLdMw3BDAmzOylAixt/aW0lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774742094; c=relaxed/simple;
	bh=aMCcUq245c9kWu7onr0ZEYXqN/vBBjTmyLWJzVKD7jg=;
	h=To:Subject:From:Message-Id:Date; b=HdN+Oiy86qlaE13Tx5fUgNvDL9xwOgw3JWWI89uW/manIgoo5AFhNx7IgI2XEh4utL3qsEMh3cbGslUJnhQvIQTpp2uxRFBU8DDVdperqTLtHQiylt/cwunLuaB72iAws87Z2IVgGogGfviTj5N5ILZDH4qzqHIGT1qAx1NRHbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdslT8pA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdslT8pA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4676C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774742093;
	bh=aMCcUq245c9kWu7onr0ZEYXqN/vBBjTmyLWJzVKD7jg=;
	h=To:Subject:From:Date:From;
	b=AdslT8pAEbErCmXOwHpQTLd7bmWtTChJTc1bLOrLjIk8mpSLf0KUv/u+BpYK8U9Fz
	 5HYQrEYjw2kStbtVrbbKIfDSdnDluhpYa/jTbarXf5/omEWvzpfOm5Eo6aUNlJbFuf
	 GvaAUGbhPbjyDzRSWeDP5ru9i90q+KzqMD4FC1gR8C7H2UiAeymWixTfQ2Q6Xx9xR5
	 b0h20fLGM0Ym/OtRqpnP7mKcc67iFqAlwUCgHBy2D1xiW44rNOb5ap4Z1Dls96ho3l
	 MP1FOtDTKtR0NxXU605GMVE4I9Ux2PHn4u7ERJFV8+wrugctct4RQCmRvypTuEBBvQ
	 LaHWdyI0wErYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161810D1487
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474209358.13029.15726778442157663635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c77578df762aeb7b6be62b5536c5b498bb377a79b7c460eb1986e40216de1f5b
Date: Sat, 28 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774742093
