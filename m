Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED03813E02A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775322934; cv=none; b=b2pTEcl+FFmrtBNrCS8206mdMny1le3zcynVniYmHp6DOmKAUeJ3VLDOoroTUkXSjp7YXv5t6DC6qoJeSj9ihzhNuuRvJatJ2TfgBwv1vnWsduQuu/7B35rn4Wge3l/H3JIjUT/7ccOm5jnF2+KAoKqv1wsl9vM0yWhfdjEHVDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775322934; c=relaxed/simple;
	bh=MpV1RfLQs/a9hDiwky7vKvjsGsvoFYUpbeYDRmCm00E=;
	h=To:Subject:From:Message-Id:Date; b=IBfSM/aViaLXhajkRDhZkWD383tJpJGl7bYdJJdj0D1zQn1RW1mUgh75sj0SsgmEm9bGJfge03TG2dToAKvw5W7ZifwGtIWWY8INDqOX28eMZrtyWrlmPyHB523H0ZGC/JC6+BqtMgSak2yEuMR2fLHiYRH/iJSac1djfFlZhm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ic6odQrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ic6odQrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5DCC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775322933;
	bh=MpV1RfLQs/a9hDiwky7vKvjsGsvoFYUpbeYDRmCm00E=;
	h=To:Subject:From:Date:From;
	b=ic6odQrMH9j1o74lD0xtq2plfw/YTHvNIroSiwb0cSAHQ+NWe+rkvZeOs9PjY1ml9
	 4u49K9yd9Yf+am6ZaM6pRCQolNZHsrB4lxhySq1dxp9ZsTIZeWwzO5Enb5ItKHVwMF
	 HVcVgd0iZ+s2Qr5GFv2lwNubrKb2K659dIYwZ4Jcd35Zci2DYxwd8TUhPUAoZkCbKO
	 vAFwcj+smHACuktQDT8CWE26ABNWTa8GEAAsW7oxYxlfEBq/sr0LtJ09drB2x3U9d2
	 ryhZcd1fO9NVcpuTZQiS65ovYEXlXY5dZFtGJde7XnFfesL9vicdBIZ0LsPfBCGUyn
	 Mt8NJMMecxeJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8ACE63FEA
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 17:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177532293369.1317.10028575160198301391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802cb601e744f32205fc06dfa1925c9e539d11854c8958b35432e4092009170b
Date: Sat, 04 Apr 2026 17:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775322933
