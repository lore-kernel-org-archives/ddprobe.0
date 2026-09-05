Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63ABE3218BA
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788603034; cv=none; b=Flb1OhK1LimgVhWU5Cg6tp2I5rZ018rPgY6NxBDRlNG04LwYKXQqpL0p7BT8JjSOxCDgrb8oL+7mBkX3fB+xFZoAG+/j6bxKRkC4eKjUsyfhF16F3Es9zMvpVPeymjbA1N160RzAo+AHSwlKUvgYczD8BXKYvNdP6uvaZFC74eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788603034; c=relaxed/simple;
	bh=AXT3XB2g+2vPpOXD1XrqSFMgMwvGkVE7NEmy/ZPta18=;
	h=To:Subject:From:Message-Id:Date; b=NXDtZreb+bpG/0FasAJBpP9kKXMnZdl+tr1kOabmaIft5cTqECBq0DON5wtQYpferhC0XDkD4DK2tJqqQrvuLeGgQtX887gAhxi9pLxbRIWIvQbBxjMbrdUbLGaG5XCgwkGkR39yL8MzGYnyqWlEMPkSaeyRnJaDGPKPu1vGKuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFWRBrqN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFWRBrqN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A35C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788603033;
	bh=AXT3XB2g+2vPpOXD1XrqSFMgMwvGkVE7NEmy/ZPta18=;
	h=To:Subject:From:Date:From;
	b=IFWRBrqNqJTrPrwEfOt8am1jCORArjCtOOvuWqGlj0CKV+s96l8HNi16ZBtnFk8sI
	 JRA0n1KsJ20gSLgt03tOmdwm8vhs+UWs7SMeKE4zsa34etmWBEZz1SyvZds7aqxLLe
	 pqucJNdx3G2TOhmt5mTEFPHs716QvDPEuwBVkKz8c+zvAqtC22sRgaMeW+XmBIH3Ea
	 t45qg+2k301MgQeWziS22mxX9tuTVw/FHdfYR2+RSpTGirsDJMct+G5OumT8p/N0b+
	 h/epFQXSEzH9OO448ZUgapOMRs3rNotaMBroG8o0McSLuELWWudeh4z9KUZ0i31D5o
	 KJQbMBk2EbtwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF9BC624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860303369.20509.15294774581824304885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1e20f2c60bf11d05267333feb991af0ad16df0a010db363341730a6a1e84f8
Date: Sat, 05 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788603033
