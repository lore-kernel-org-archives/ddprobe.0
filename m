Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C70122071
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739514534; cv=none; b=NUQOt3q55/MkdbG+x7QVjB8YJrcbWc2CW7K1vW1jcIc5P1jmW2Y4Oz8XcNjIhoT3Y9jE3tTJSkTB1lnZwVoIlIFOOq+NG/eN1EzO1MbHPPHFlSGrqvS6PYQacS2CnVF4oUT+DCNNtEOIAoAsgPHvdmiR8wsSNoYhjgiYtg+pH7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739514534; c=relaxed/simple;
	bh=PREPGfGZm+q6V0KGxYnVnPzWLFaM+GMrpekZhbMsQZ0=;
	h=To:Subject:From:Message-Id:Date; b=YMx3x3HRgXnSXAhIOE2UK8/PupUeVWdMm5P0yg4iuxQsKqPY88fTEsfL9MSuzWGVdrjLzrEl2RhT5KXLfzmsrkHUQYo18KNUfhVdQoS5/sQH42S+4yQfYYipYQfuObcZ++rE5BrTboMig6uvKTVcU6GMV5QFms5k8NFJhJqe9Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=borsnM+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="borsnM+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3DF6C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739514533;
	bh=PREPGfGZm+q6V0KGxYnVnPzWLFaM+GMrpekZhbMsQZ0=;
	h=To:Subject:From:Date:From;
	b=borsnM+qtR01QD1EXocMgSBGGlpnDOXDIC5ElmCr/OPOiBDzKbqL9L+nzipSE4HYI
	 SY0BCIDYXV+ziQ/NUrcmFcTXwN08uwyKSZjr6DVCEcM3/9KVSOH4gcCWPRoXozCQC+
	 ZUeEM1HiF6Xu2BUltY7olAzr8uukhpVv7/fQVGaP+6v/XsOgeaOLJ7ytW41AYBpF4T
	 jY1Kp+ike9mPiVUG0cWQiowhwDfpYulJESxYMBQp/sBGPp8/f5QgUIQnhRgZSG7/MX
	 S3ShBbGlo2G4RZFv2/Ljk9XkmbqNtfXd7xhdf4IFtOxlg8VG3FH29dCTWcifrWAZ0x
	 iduWhgl4gxc/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A372AC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173951453364.24417.6193447626324416262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ebfb5b8192b9fbc72f264b676d64b93da00328ef9ffbe0d8ff7449e7cd9e1a4
Date: Fri, 14 Feb 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739514533
