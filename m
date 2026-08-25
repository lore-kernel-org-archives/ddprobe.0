Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0C817BB21
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787647234; cv=none; b=deRAekXfgetbaYI1/M6H2NPpYiba+p18ZiGIlW5xFDoXBtnMKI49TJ7Ig/GqaW2XcDosp6VlwZdzd/mkL1WgbCeHoZlvXo73sYPiZSLiRgsCr282RvJkDmpokVLzHWnA7JYdWtTU1twhNbQF2zV3eQgBpgH5G7fVjFDjTspW9tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787647234; c=relaxed/simple;
	bh=9NiSeFdODlqs8ZXES/HyNuwwqwaoT26QiXtP+IB62es=;
	h=To:Subject:From:Message-Id:Date; b=rGYxiY6u8w0r8XKOoYMdya0JWiVmHofR30iedrKLTUw+nBWSUvdYTkJNHw7nw+MExvGhlVy556agMpudMceO+OOv2GbusnagQeyN0i4w22GcVq2ALw0gybuaBh5uvtj4uHgyW3L5sAnp6ApeVkfxuZVp8J0r74D6+dqCqtmJGPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HscEAq4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HscEAq4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE75C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787647233;
	bh=9NiSeFdODlqs8ZXES/HyNuwwqwaoT26QiXtP+IB62es=;
	h=To:Subject:From:Date:From;
	b=HscEAq4BbOwL4VuLYu1TumHNmAbuaOcXgGbHGfOmKCqWn+JCKrwpiehhU+oDPFA0l
	 mY2k98/oNdb3D59G/4/q5mbSSIrgLKp8YNdPMCyrtTzlFA8+/mnfhl4uXf26HFFfs0
	 KDj+RNNLNLOSy21DTr1ASqszoTfsOb1AzOg+X+1FlCilGxwoodZ0bd2gALDfkNXA+l
	 ofb11lQVDHIeJgvyiywSc5xrdsCqvAWrV6f4nN+98yVL8TRmSgfaqhmccU6xVXZaRQ
	 qD+jK58Vb5BP4ay/9RVWX1vFY2QZJwjdqHPlGUO6jnuCu0QS0rmfXwLjHmGgQiqBiL
	 tptv+RXAXqSJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD92C61DB6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764723368.21064.12686754420267175854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed20a183cea6c339d9e78bfdc0d4e898af153108eee23c53cc42e5ccea7b198
Date: Tue, 25 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787647233
