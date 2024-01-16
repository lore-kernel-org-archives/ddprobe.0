Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB7EB1D697
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705443497; cv=none; b=RHfMYNT71h3qhnyXaTs+KCPEbBgNkDfxJtlyjF79wOsmyH1YPnhVUjq6PQYNFRjp0UE4WCC/EFV5pJP+KUtnxTi3fOxCRwzCcOv+1a+0vHFT5WYEMHsZF8+7pbIlRkv+V3u16H1wxId8vCrq/lffjeaGdgISp/lxZwdTTnzvs6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705443497; c=relaxed/simple;
	bh=/RlDF8BAC7VwuL2tAArPPNMTkVOkNKHVPnfudARTPyA=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=MS97P3XBxvtUxbRel7/Tj92OZhDnu1W2S7P+RfbEQ7siJYQCH/vqPWd/CNh+G/NgmcY3pufq4JC8qOZLyAZwpbnwTOssx+b91Zy9BWjy7hB4cmlq2DWEy4seWzv80aS9JULelbVAvM8uQzKP1ik4bemb4cQ9PQF6QnS9ZJx9CBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfycPty4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfycPty4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82DC8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705443496;
	bh=/RlDF8BAC7VwuL2tAArPPNMTkVOkNKHVPnfudARTPyA=;
	h=To:Subject:From:Date:From;
	b=sfycPty4hVd8I7MYSuQFbH3fKWvKTyfcOtOnewW0Yi/EUZbqQGUPRjUetG1OFXM0S
	 PXvP7iWUNsbCAaYLY+F6RIkNUEQaoGHJY8v3QQxWDN5K28Vc5sxpgQk7BcyXB7hx/J
	 LLBXbzNAKF46AZbt3estwU4CPdYrgjqQ0ILjsVeTR1szdugpFChEec5CxEyN4dQwe/
	 D2zL8qAk/uB+CqJw44n2/Dp4Mets5fML5nsWc/IvDeDjkLHowqvqrMXu+9g33LrQEV
	 wQ1j5oHLM29lbWESSlkVWbRRfyqlFHZJKz3ylV5Ilj7n3OkjUol7p4QTN+xHPDPrFD
	 FUk4tU2ktMARw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6232CC47258
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544349639.25884.5563467694087003989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7e9a49a2d94f41418a43a3e9cde11ba3d797477d27ef899233ef18b61ba526
Date: Tue, 16 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705443496
