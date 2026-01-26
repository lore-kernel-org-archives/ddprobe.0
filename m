Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1229E219A8A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769418234; cv=none; b=Fo96oEabrdOm3H7S4VaUXhOvLUsRt3snDHX65ZGGEWsiW7qG6CaBrWtC9P5X1Syc6fxQX3h1nV3cSBJUu/gU0LDu/ZLhXJEL3kISeuqj55l55GeZwiK0UbPLDgw5MaJFwZ4ryNSB+H2dRHibpRjQAaMdtaPrrWjb8S/lAc3D64E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769418234; c=relaxed/simple;
	bh=QvIr3oEiQADaOF0TG2ahBjRIXsriDQnWy9eIJUAdUYI=;
	h=To:Subject:From:Message-Id:Date; b=Q3e/z6pgJvwe3kXkxnyCgYH5XdKnbOL4sQ/whJyXcXL7fjMF/YOY2G/kgAyipSnSJEZS0yz39bKT7F5vqXgMf4/PzF6trDH/yIwmrNov8krseEo/Wb4rp9whVjqlHGEtnxjN0D4GgLq3FNEOytN06n/KDK1/LRo4HahG5MH+CIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGGqSQ61; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGGqSQ61"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B94C19421
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769418233;
	bh=QvIr3oEiQADaOF0TG2ahBjRIXsriDQnWy9eIJUAdUYI=;
	h=To:Subject:From:Date:From;
	b=RGGqSQ61ZbBotQdrVMwjS9zcjqL0TTrQxh/wx6eG/UcwWsR8Ttvpe4m1/tL2dzGkZ
	 O1MI04EFDarRti2EnKPnehcqX+UgwW3uDaJ8eOUa224G2W0w/gB6OU0oUZ38yjBWhY
	 v0ECvJsOddr+0fuHM+a1jHIuMhQTyJ6ykQE0XEMstrBVfgtiVcyUzXq42J0B/e4X5h
	 Gi7SSVsS+ZY+Zg63J3i6pwMVtfDL1UyZa8JMDEvrheJtOBme51lvuRA56Fc36+z2fX
	 9VK1hVk0berZRNNLd87dBEAuZLk7rT4qRrNh4VM5S88xP8thji8ZcL3M5QrbYV5MMN
	 10oTjGNUySe7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26FC88E75
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941823357.19854.5323213596177788430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a5a8eda12dbd48b6c5f37b0a5c0ddc8c50adf7b3117e8099a7ca0adde0cd07b
Date: Mon, 26 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769418233
