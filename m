Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A77F2BD0F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719654263; cv=none; b=EQBddZJRIxegHpdb+xI3zZyn2kPMQls4PdQJlcAHhauoLtqvXN0hjrLt0SpUM7ni/Og52zF9GjPNOjjOCyQBV7dAtPMdFoozrOKwThLzJENutBHxWfZr9BXxUWA+99RNCgC19Y8niRxWoaZ4y3dKJPsVkLrSEbzX5waRAgik3EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719654263; c=relaxed/simple;
	bh=rae65fLL3Y34B9Zw/rbq2lD2gP/+S0R440Bn944Yljc=;
	h=To:Subject:From:Message-Id:Date; b=pSqxkivVlr/XQN71qywbMVHx+38hKzmyX+QxszYBFe792FZR7/zt1INMpNNK/LUNhpFbEoNUzighbjVypkQqlb56lrf6/gET6HmeiodrVFZ7CmdzGWMlEC4dIvULT6/Bq4v8Y0CUbetmMHUw7hvteeOKLNvDPyHvMuZLv6Ci/J8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrBabsmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrBabsmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEC1C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719654262;
	bh=rae65fLL3Y34B9Zw/rbq2lD2gP/+S0R440Bn944Yljc=;
	h=To:Subject:From:Date:From;
	b=VrBabsmJPenb5EZKhOCFPp4rQtWGXcOZNgYHmNparhYjFi5zq+8XxiiQspGrjKDSZ
	 RD+1TOFhewxOSDLNB9TMt2OeZQbPDkZsXCetS9AmyPjv+Br/oYFHq0glxxs7yIQDuD
	 bvfNLvRU+Qz579F7+eH8c7B2+JNRCWSx48zCDVXJIfrl9c/cevp/eVetcR0IlvZj4S
	 ecrol6t+o/jBlhYHchojsuD9Xgi2qccq/6yl+0IZun8GQuMg/byLcp1tOvxSOdSghS
	 mVasacH3pjLcnUpQBWsPCWOuS1TmNdgD3FZVFY8wXGx5O9fRKCvgN88lczk4HYdm3r
	 0Vt9TkdSmOJvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC223C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171965426276.15255.17098728883046555198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd79b78bc9a408eee1b16e7670fb04cb7cb9579ba89e61db04912ec36f0adafb
Date: Sat, 29 Jun 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719654262
