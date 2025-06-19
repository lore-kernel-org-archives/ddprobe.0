Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31758633F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750355393; cv=none; b=eDp5jtCVThws1CJ1JERsj4mikv2TXaniC/kx74hUasBUyloyVu57oU8KSXA/vvkUFZHJXlKdoIgCxuGV4lCgua1X+U5k/lS5njbQ8JS5QXRp8Ne3HG7BU9p2ZgZfjSKYnDQuin486OIBEr0ACfRdacD+/XJ8lHAUKax5x3a5vRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750355393; c=relaxed/simple;
	bh=aRl12RUz4gbLDS8YV94+YV3TLFqWV25FyBow5Kw0pa4=;
	h=To:Subject:From:Message-Id:Date; b=daLFqjUrzy7bdd0874ERfBb4JsUmrZn31LDzALTvYCIJ0xeuBlkFG3cZxZT2cv8q393AJxSwqIyNS7cLjy139/ZIrK6MODBDxacPrN5TYacCqkX5E2d3W3IziMqcTyWWmS8Stu7Fh+T3aVR3xTuG+P1M7iPn7vJzs1/2IBEIttc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PRJvk9XN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PRJvk9XN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E2BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750355393;
	bh=aRl12RUz4gbLDS8YV94+YV3TLFqWV25FyBow5Kw0pa4=;
	h=To:Subject:From:Date:From;
	b=PRJvk9XNqGz/XQrleZXcfw+N0FJX6v7zJdxuZ6O3d7BHm6ousuhB/xEv28Rq1yksz
	 ZOics3hF7q/VPJb7BVkUpUdNmH26YE9p/g8WHorIqucCGnY8taOxTmAQKtPH/CI2kZ
	 RCgZzwxnpjPOf4x0EqRm27x4xqqdVMXN6KPA0f9wOk1sIjD2SPlljxOT20HKL7u05j
	 yuSq9zD2WoRugcDkW++PSsTWLuZiRNQcP6plCtbeJ6RTah1E5xFaH62D+g/RQRZq3e
	 lW4kqkabBoVEKHTpgeyj+hgf/KRuaAqa8z1YVykbqWOYzEMv1AK2PHLAuJAjCp6isX
	 v6PFAFvnw4oPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082FC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175035539358.29248.10999052915942303744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c74401fe9e406d34b51cda879c3f267979bf574ca80e80f1b74acf19115ad008
Date: Thu, 19 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750355393
