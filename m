Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BA8156F45
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788734434; cv=none; b=LjVqU19U+f7ZuMqcl1WjQUU1oyD3vmQydN09qrGCzylHsGq4r2wy+6OqPfYXGIsLzVFHiU5pR5zeCU6qF8U11kOFioaICB+5d6pqecaOM4pL3ljDhtCyaAA5SYkzNz5fU2x4NTTZEfPoc1zVYFXnncvoYGpTRBGLkCbBfuU/Adg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788734434; c=relaxed/simple;
	bh=IDZqmkftG0OsDD8SCSPzbtLNqiHumhIIOiuzHM6OZsE=;
	h=To:Subject:From:Message-Id:Date; b=VYnHhuWF4ztvne7gGHxNxCX/gv9fzob+fg/2mNojjLl3c8NfFReSl+dNyUNADyLhNcPUXzSHNBN9MH3DkulEVODTcCcBcXJkCB4/Y7tywbktwXAQtdFVXCylCh/8bpngzBTbbOkAyT1KyhMZzbAq9rA/cvmK1pa56Q2ORp4Qf1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uGY8CIaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uGY8CIaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF4AAC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788734433;
	bh=IDZqmkftG0OsDD8SCSPzbtLNqiHumhIIOiuzHM6OZsE=;
	h=To:Subject:From:Date:From;
	b=uGY8CIaHPyLyBjOStUwyyq5z8ogwGYcJKbYqYRa5XyC4kk8wBuHuKQLR/tM/UTzvr
	 z4tA1LH3JlmIR78CzPDD5M32obut6+IzJ0m4qJ70I4TFQCJkxzEj5xYEGq5UxETweR
	 k/15lMAhhsVIPcemMz0B84A0t9CcTeD/rLXze4ac9b5yDuZqcsItcWKJ0FCPJBk3Y3
	 O+Y1sUog9Vo3hgbDMBcpvno2ehcjDFWXW+WtwZYGfG3ygQYF/UsIch/zysyfbr2iuB
	 PLmfmDzqECWlO7mDSRqtkkyjPzFpWySH9OV8C+FKeAm4H+vOZ7+ovGZC1M76bgN3fQ
	 OtXJ0u3j4ziKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8044C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873443372.5029.13620645415735131905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af39bda87c0bd3cac96659ea7bac9453f00cf02eb6d397a74cf85e6c7b69972
Date: Sun, 06 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788734433
