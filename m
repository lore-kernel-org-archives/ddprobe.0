Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AD0313261
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767020034; cv=none; b=twkbKYhSDhfPPOT+9/ep9D7sAJQrV5K+Yh998aogLqd/7ngMYC5EZbzFyOkCBHCbPfQ6aZWll2gyTCqBZSL0PuH1c6wgiJeRwr4yZhyLfPAU4D1gAnNq0fKBNuTqX86uqhEPTMuit6NzzU2CjdxkQQBrTVpMUIHDcBvh+uwUJ+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767020034; c=relaxed/simple;
	bh=pZXtwDB4KCuE/35xqY9ESOT3U3gD3HpglAJcMReqlAM=;
	h=To:Subject:From:Message-Id:Date; b=sH1+/6SXKo4LkWTazkXm467fH+QTslNcdEDlvs71jaxzgB8CBkJPUwNz0N4S5+VLAMnpwTNVOZtbXnjLxEe1kZc50nGglKJefblQvXKu3u1tAI6YchfIG3tvA+57yrHWFsBx1dJllpdn3RyzzIaXUaA5NIiO6/1J6gpzCrC2IRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4tGJVuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4tGJVuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA10C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767020033;
	bh=pZXtwDB4KCuE/35xqY9ESOT3U3gD3HpglAJcMReqlAM=;
	h=To:Subject:From:Date:From;
	b=A4tGJVuXX80sM8YMfm7gEm23gRcQchLgVOaj+DAhbxnUzRkxMWS3poii5O8fsuw70
	 KmnPcpdf4zXbo0JBoSvhQzwzaqJCEC9HhbbUvzyh9NEDC+BwYeZXFd7wgbCtUU3u5a
	 b5yiFXTIEs+AYc6yWAZL4ZM8JFlY/53qeDY/PZqoOvwOkH2v54bFxxy42NxhpkYTJ7
	 JZwIs1VPJpjNktoxlc6xMX8SU0J+l9QOvj9KyrOFrHjJtgU6pUzYnMA9XyWplcuEmm
	 AmH6/PUDxLGTIinP6jd5qZBgbHs+TSkem1e0SmczKBH2Vl3Rpu+jwiCA3hWfw45jxz
	 5GwB5+jteTa6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BD2E92733
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702003360.3371.7243878152492371217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d104753824a680edd4d68d0d367f0c9843afb0fb97153e8fd84a5bfc86aa324b
Date: Mon, 29 Dec 2025 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767020033
