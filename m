Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF5713C914
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758808794; cv=none; b=c/O51RyhiKuvxB4BTyzKxmZpiH6l5ljcTmim02JUBjB0jeX8xmQvJOlzuIpSwFdHozXPKLKgA3muhFiAQKhRoxy/XIXpnzfIgNw9gslvGNLZMPGBn3sTm2pDsPN+Ijw2cv9Ubv5FebtfTgmyLpFAwB9Y5Z9xTSOmp/21N5H0Xvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758808794; c=relaxed/simple;
	bh=syY62wAgEI/g3WDCj/0NoFr6cvflBSnW+wQ84olFFw8=;
	h=To:Subject:From:Message-Id:Date; b=bx7dl3tazDMeYSAIgqlaDooVquyy0tUtaNezTpYPtnfIBH/uV50k1wTM5cLZ5M0i5MtMZ+vewHw2hxtR1sdGB5fQL9+7yLPz6WlmKxAX65icShYlBm/xmjOd9v/x4JAcWrUjRiu4k8q09cKdf48RljhZo6AAyVqUDdXPvlSRtO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dOijmFL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dOijmFL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E025C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758808793;
	bh=syY62wAgEI/g3WDCj/0NoFr6cvflBSnW+wQ84olFFw8=;
	h=To:Subject:From:Date:From;
	b=dOijmFL80p1CA1evQnProx8JN7kCSo8lw09tXrrAAJpf1PbeLbd4XV85PeWdW4Imv
	 vWdHQHuU7YIXLqljspKMRKxaSIQq2l3OYl5ODlT8JD6ZYXZuKGmkFIAL96u/qjXi3d
	 thx+nJFOtMaunzLKhmRPoQZWKBjHg1l0ZdDG9KiY8KQF/7rixbwI8nkBISmKwmX0H7
	 XhKULEE3NpM3t/vbrMJqTMLuMJqzus/ZuCWlDvFcDxQg1nbKPbuLr83jKCjlBCNm/j
	 lzOW2Mgl/p7MWZvYFKtwx50VrqazTJaTeS3qWV/rEzUlF89XWT+iltDrRl9y8YjFVl
	 q7Vj+FkE7/Mxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F117CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880879357.14398.4998548283095851739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916feb7a43b5edba66406a5d91b378aa662589099bbba36e14a09d79fc2a400f
Date: Thu, 25 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758808793
