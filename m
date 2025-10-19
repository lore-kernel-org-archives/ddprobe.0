Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439B41C3BFC
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760873394; cv=none; b=aB5ICnkpHysHb1Y0jMbezXHxCjqjsMeXbzYteUsGBIKgaaznDZa5WolPGQsvmGLuhvagY/cH5unkwr50qYHjrouiC06mAjpW6efM1fqv/1n+yOr5HEEK9DnugoPXdZl9X2VbKo9ah5f6HmrtaJ43z7a4ieUOrpz9wAvDynN05yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760873394; c=relaxed/simple;
	bh=uR1HdhQVSv2KrlCNHr7IqwfAL2w5saiywSGnpAEwark=;
	h=To:Subject:From:Message-Id:Date; b=N9F8IYv+F6mCqN0va0YnudGZJibCPnasAhONVTcIJZ7NugOWIkOZgfVm+73Oxvtlt91E0bPoIXV/kRHDPsOmD/vTExUxnytrB+7BEt1eEn9EZZpKv/7mg3+ivxuJVeHlO8poDaiIMKIK74VO+QhRw7jzuziwKfpiFssaHX6XSQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opC1fUi7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opC1fUi7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41FEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760873393;
	bh=uR1HdhQVSv2KrlCNHr7IqwfAL2w5saiywSGnpAEwark=;
	h=To:Subject:From:Date:From;
	b=opC1fUi7cEd5+58W6aMnKgjowZyVYw+stuLUlpCDxWMR2plDiVQAPTB1XAUJnrBsm
	 2vJvKWiswS+9dTCjJ4wUnmfQQTK4rYh6PcS8vGYhJ7crJpWbo4ziCIoiZod6d3Uspg
	 X66YRVLT/Nsg9LyozU4PXq9XrPHDdaxUchnrcKe0+cafQJLrzDDFMXruqZIiFcSQ6Z
	 a97o0Hlrfs/FeOkT0D/wUsiuJkZ/i/6lVxNGf+/fNNk9xdiWTkEFmz/X7nEu24Pr/u
	 j/kAJuOLClOqETWi9wBhjN+AGW4yrz7YD8CNcszMMi0Xv2FEbxlPne+3Yaj6P2MnoD
	 OrLhqWd8a3w4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BDCCCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176087339358.10229.14161510770002413146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15aa3c66a3080c475075eedf3081da9dd7961671cfc6d19e469f4d12eed9de9
Date: Sun, 19 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760873393
