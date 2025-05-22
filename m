Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C145715ECDF
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747931993; cv=none; b=VKMtxVpn5LKCAgKo5slE14q91i3qBysR87w3MZAl4S90+AcHbeNc+LDY/sASQxzgxYBctFccm32qrBI9bN4uWsTawxLpbsh7su/mnW9mUdnHA5ZhWexiTMN5uJBGqNr6oQQFupgczjk/mgckYJwp4XdIoJ4vnd+kodkI9M4elHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747931993; c=relaxed/simple;
	bh=cehFAa0/0z/yOM8S0wV3TsU8L0+Vck4/Ab040jCt0nM=;
	h=To:Subject:From:Message-Id:Date; b=IzAmncBgIPuMs4rk+BGiqcdS7NfTn8uQhpO2ltddnQCtcfL98gYIqssvE3kPdQu+FdK5UPBjPh2QOS3hdqdJWuAgJNzBkeCgRd3dOQmRGcgZonRlp/NO503KkYzbz6sj4Bagx7IQQZd8QJ6jMoTmMHCJwh8lNlrJj5ebT0fU7II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnHCeyDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnHCeyDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB52C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747931993;
	bh=cehFAa0/0z/yOM8S0wV3TsU8L0+Vck4/Ab040jCt0nM=;
	h=To:Subject:From:Date:From;
	b=XnHCeyDIbcqxkY+EOl4snDipPuVgv0G0XhrE5IMjk7K4Jwma61kSBgmPMRSQtIUG8
	 oaCb8Cx3kU84ggf8dc4nPfLMR+Jq6r3Vip4++pFY/yYmXIYal1b1ynl180aAxu/vwd
	 AwHlyeClaDbzbjM3g28ITA1LhyJeqSVwMiH+rO0yEeEMzv24IFXmxuQ6ld0uDBhkLl
	 wbLV8NVRrumhLwWvclqboSgAQkoXVTxUu07diIexb/0cQkEuCVZbXdXvR0VpfbP7/m
	 ad+eDPLFF5z5QXmZRyhNamNOQbPKOgaijeo8scOJ+MiVJxjg4gQfiCmvUmp9nbsAZS
	 Xdh2BB5VCUkLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90354C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793199358.18418.15561798119579115719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4925fc053a93fb4536d9a174a26a93bd232b57186f5c8703ce3efb5fbda67b5c
Date: Thu, 22 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747931993
