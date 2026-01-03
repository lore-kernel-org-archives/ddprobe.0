Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB0F223DE9
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767441834; cv=none; b=bHikA4bDdSTLMo5K54HVbH5BOyesYqFDQ1MpHBf7ns10cLs4H3UL2wrmbmc6F3dl8VjeSyJhpitnzeQUiq0vCZ/cb20OczjkwIbAdX/82lLOQC9UU1ZXMizn0woc0kFF1DdAvAgcRm1yA0rYMuEfPlat0hfDsn4WY6Dp+Ho/vwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767441834; c=relaxed/simple;
	bh=76/Udi+blo8ol2U3ppGgTsjmbKPmbgdBdS4g+OhVZhU=;
	h=To:Subject:From:Message-Id:Date; b=e9Z1KYlsU2a+P6/R+G4L6Hk0v29/GjovNQ+oKekM2CGwF5mypDCrkWw6hChKQDXcREGNnv09aqCVyqw7yUO1rwpcE/n5J5HRS8hY4LA63oqwst7/ylaHgLi113bQB6N/G4ANZuyEtHpvvhsOM7Xx5EeFNH+Hl+RIicSO1FxrYhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bwhFc7yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bwhFc7yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B82C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767441833;
	bh=76/Udi+blo8ol2U3ppGgTsjmbKPmbgdBdS4g+OhVZhU=;
	h=To:Subject:From:Date:From;
	b=bwhFc7yZCBlptEO55gTV59ImvchQdaPf+OkVOLRgOTaurD6x9h190PJs+7EEm67X3
	 UhZap7bX6BU76FpkCcryr439iLa1OV7UHbYyNqg791ZvXHiMVYxC/PWPzkaxDkTQmb
	 0s8FDEgyel2LzGu2wVn0xsKi6hjGjuW07jTFhWR67FATuZWknqkjLM3ReNfR9gGYhG
	 dX2au/CBJYR4bYbkOq/sPjkKcEBXRvXS8Gq6PJ9gEForvvh7+PL8/etiH7/ZvDk+xD
	 meCUoD7CwXIP154/zb75JtB7FoKn7XAr5lgXwprrZ6TeWKSP+jhDiMj4V+uCGkg8cv
	 gQv1sk4zlOUfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC21FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176744183358.4929.2483512110736758964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a63281f3aa02d5600ac5fcef858e15926663d7c1fe6742a648897aadc01ae5f7
Date: Sat, 03 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767441833
