Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214D01B7F4
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757990994; cv=none; b=sLOe/ehrHcafYmVI3u4fJXPC1HfzZIqBtsVu6HERrvg+hj/O8tvUZ9C70jh2QnZe+8ToWpj0VdkMSLpbLMNwralW1j9dg1yhoDze0gJ/rPRv1EgoDegRZ0GnlL5CI2ZijSGnJYx5fHcng4nQ4osVFzPZE/MkJyQF0BUG77lhSrw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757990994; c=relaxed/simple;
	bh=CvQTpTzoYiIb6R9Y53MngHZiXVpL6+PzptT1c7vRypo=;
	h=To:Subject:From:Message-Id:Date; b=I1QmAeB5Su1KKp20ibz9mZEpTgD/bgN7mySX3MoR9fi85sja9EB/x+7dy6+4depPpKpf3Uwbs1yRmcGFfLTIr1YAIIxDJf9AosaU1CaWNzxK1/VidpWDBNqxg66ReB6pznGM8DbGSxJMvmypAw7YHWqDmPHloHYbPC/exRecsuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QU6Kx4Sv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QU6Kx4Sv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1E5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757990993;
	bh=CvQTpTzoYiIb6R9Y53MngHZiXVpL6+PzptT1c7vRypo=;
	h=To:Subject:From:Date:From;
	b=QU6Kx4SvVdhwFqY65Z6nqK/7gJu5lCbKQCd8rmpxDOwfoLuxc3gS2k43QMdLeUJ65
	 uZsDCCQMVr9DMzUy4tN1GKGeeZz/uU+qM0wot9j9t+SJhA1zlwdQLtCW5h9whjTUXK
	 cQMITugEuMu0Z/LOOB1SXyfnWATDDzpiGl4xsSvi0khL1HHumxECgDI3ki8e8vyxqM
	 BOLwPESEHcZhxXmhVqMev9LGE5C7dxomJZ2N+T+tYVQui/JHKEPtucKEBCfnrYenpA
	 HqEDaRICKd/+BeIPYIbZj2BZxEMr0pV6vjgaEJDB5Ut7ItZG7XIlbckY7D6zniL0FC
	 4595n1QHWkO8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47ACAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799099357.8914.1665807617754753585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0862b42538cd12f980aa989b5fc930f1354d6c29fac63936b742a74748332b3c
Date: Tue, 16 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757990993
