Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEBFE552
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760195994; cv=none; b=Uf28bN5TRoACEEHOHI+svvT125qdTLuJeYJyDzSJ5Hb7pt2JrDj3KOskK1U9gaMIePo1HG4vauSf/gVneXwjKQZAJK4XWJxifd8xMPGl0gYRi4fFon+XnQh/eEf1RU1hVrTUgCWhIK2q+LXYjKVkaX/tM7sknWrLG+Es0BHbbCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760195994; c=relaxed/simple;
	bh=jBnzJl6CQgJiAqY5M+ZOUF9RL9EroeYAUn1F2ipiXyY=;
	h=To:Subject:From:Message-Id:Date; b=uhOOwiheOCifBR/jN95e7O0oUwBLFc4mQjNO27rD9PZolgc/h8uNTAF16xzosKvaDdoXuMTdYk6ciWJVJoIP+ZAaV+wJc/1wgmvlQ0/4sLz2oLGS+FEOxVDP8gW/5vcVbuhHQvlxx1RqV2WMHhPVKmr8/1qdhvWzVsvDtm24eMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fVj0M9ja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fVj0M9ja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A596BC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760195993;
	bh=jBnzJl6CQgJiAqY5M+ZOUF9RL9EroeYAUn1F2ipiXyY=;
	h=To:Subject:From:Date:From;
	b=fVj0M9jaY2kCvpLK3GE0X7m8AWjBUuuJ0yGOY/yWai0UHsmW1s7lnYcuFiyVNq08e
	 JpPQBd4F6GhmpG7eZ/EPXmUGRJmSyN606Jan0lyii2pJWEzB7GktkG2WugI9YgFlBK
	 2ZDCww8dzB8I58hmHIm/ChMqR7QpuarmTFB5wMjiKHJ44mrX8e9c8BzjJr+mM7Uz0Z
	 V3BaKJqx69+ijO3bMkKL2mf4zZVQf86cbF5zsxJlyRf0toHrRd9PqIQRToDGzcjZWP
	 IokrjYzUI4SBiCJZBk741rbU0o2sIMY700d6OZ60pwSckQAf8JrKxH0Rp6fgRyytmY
	 K2y+MtKbPUfWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF8CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019599357.8010.12704946398036764355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b041b3d11cf18682902a9d3a8d6d23f6f23cdcba57af63e95df0634955d91ba
Date: Sat, 11 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760195993
