Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA9D2FA0C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788031834; cv=none; b=FZTcgMaP/tOBSwpNgNZvRgJb3vVavJ9TnWQ3hKQs229xeJYeYDjYP1lbp7U0MY8gagQOz3pRJj7Da/g3JDPEcLEN7aDZhv1/UhH2IBSltSoqtIGhssl01c68l1GWEy/ilWueK2WTBZgayMXO3zlpQ/AuBuHSn4VanLg0SexazKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788031834; c=relaxed/simple;
	bh=qfaXwb07CKKF/ET6Hd6iI9/o6HHNLupJZV+zOYb7XmM=;
	h=To:Subject:From:Message-Id:Date; b=udGCit8xl3KskJqrNGbjIb9UfrpG3qrJKoZn9NercB5DAJdW8FcTnqa+3bkoMZGoy9t/Wnj6tsn0/UeqhR97yDFGNvloiylqp+jRssSWzPbKYSjVFT0fsQ8i+mHtZpljKRlzJK4jPyUu5AfQ1QqPOfoEKS0T58ZBgoZmjouzPCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pC1dxKlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pC1dxKlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B60C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788031833;
	bh=qfaXwb07CKKF/ET6Hd6iI9/o6HHNLupJZV+zOYb7XmM=;
	h=To:Subject:From:Date:From;
	b=pC1dxKlQUfyh5HWIHmZ6DMaV9EV1xkFl37/qyww4xmEOZ1/mW6xei/fnKN8Rur++7
	 gRiaz1auhe3Jj/Q9Ish7sJnNKzW2UB2xTtR0KIZuEWEINGO8G/QRDGIzT3DG6fd+YY
	 xWD2ZLWDMbZRYIrhwLxFZhAkJtXWRredlFYpPxJEOmWoRZ8gSdtVCJtCrp8JgSA/Cm
	 bAv5vM67QEt+YtWh0a3SSIBr7/SKYDPCQsnH/7rEOOMTSeiWvVMu4RCrYyDCUuXhzW
	 gNSaDBAvpSkES9+GnXz80lGn7sU8IvnpShPBhuyVUZKb3WAilM3q20NDLh/mHe6iu8
	 vrMptLvMh98Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EC5C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178803183368.13078.7992787803018485520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7059d958d0d91e3f0bb1a6016d735cbb9b6dd3508e5677ace3f824783de75ede
Date: Sat, 29 Aug 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788031833
