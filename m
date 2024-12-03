Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C473173
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733207754; cv=none; b=m/gyPNBWRJozr8lsH1AGnvFWZy5SWflihM7UedAs3UgQRvjgwufnKMCHnjNNpFG0v73ecdXfKVTZ1vh70miMlmOKZHDyEbnGJMwLZuBGa+pCW6nv/pFZIVm8v3RWeYmxK5bAwl0RyjvQpEaEi3iqTq4wIHkijS8OgTpJje1D+6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733207754; c=relaxed/simple;
	bh=0204lCTRs/AQ7I7j850EmvMX9Pk7QygctrVqZ6Yw7vo=;
	h=To:Subject:From:Message-Id:Date; b=mb5kijHvlmGcyP3lm+EZOJMZOeYX0t7Cxl0tFJABLpv3bPBrkhnh/kbL5uNxGm59mcICsFod45RqTVFkJ2BZJXwwOh84kNfsiHTlWT5TtuIToDZ7L5+sXJLZRBjokEJe2IyeuSSh6q9MhakfA0QAS9h/rqzfnlzS6ctmjJQOfCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPghc9nH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPghc9nH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCD1C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733207753;
	bh=0204lCTRs/AQ7I7j850EmvMX9Pk7QygctrVqZ6Yw7vo=;
	h=To:Subject:From:Date:From;
	b=DPghc9nHSWegGyMMm3RdxuMuSsRXP2YfiaB+oUoeHNVIVYqRBibfioa25FrTggEEV
	 7BoI0EwfSZjvxFUxKmGwjiiWNABXngWOydMWRCkqr3SVj4cw5Bca2zJcm4eUCeidDl
	 A64p8RgMhhOn8w+082uHG2o/IfNOqNrqMLLyf7XLam0nGTpNvBDIR4swuHu4gUwX/5
	 qOTo8YNRfaLf3D6MQ1U8m9uR/clFzC9mEYbaSBB2rr1Emfwp7Tx3cGX7+iLdgGlH+L
	 ZGHI/qYBePU4cucX5xbNYw5W712ewTdrW06lBHkNR5Rt/t75JwV6l7w+C2QMtTmyPN
	 uUjD+hM8HEbeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DDFE6C60C
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173320775361.25342.6381935250165863113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce8c3caaf8efca1fecd95ea7cc0db9afc95801aa50d9a0b6104b018c5c7a86d1
Date: Tue, 03 Dec 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733207753
