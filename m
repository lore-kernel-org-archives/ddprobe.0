Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A89E1C5D59
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740815934; cv=none; b=H7EacJmZpLzUyIXbQVTMW08wAxXkA4n2W1ilzm4fvH6knSVu9zeNhgTlY5ss0DPdDVwYqvPOTkfQy5IB4qBT8UO5hMXTrr+9vTJIT0QWNS3HqbtbrfbbibAK4iudL+rmsUGj5hS481TW7r7TwlKqFPvSJzQ9z6F0jdEfFtDIPTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740815934; c=relaxed/simple;
	bh=GfndnM1aiopvvSNjms55g9xjhelbbGsPwrR/UcStktc=;
	h=To:Subject:From:Message-Id:Date; b=C6Wbs6z9wsqmXGt/HAKxdmVo4HGgfNLXSIy1Jni2q43O+sOhjP8rm8SM79HqPTEA00mUzgPN1m/4co/t7Sg/hr+zMSSmoOghfv0ztLPVZwcFDO1LxLqxS9IyiZrKVjVeBJOPiOn1FSxwLMzhAyoTPp6EijGIkvnL19Fs4ULrHJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RHlV9a2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RHlV9a2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF061C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740815933;
	bh=GfndnM1aiopvvSNjms55g9xjhelbbGsPwrR/UcStktc=;
	h=To:Subject:From:Date:From;
	b=RHlV9a2Gk9rkWL8z4CvjtvFXoTG7DpSjmwuzcA9jnBy/rf87Od5G19Huw0gY+2lXX
	 DEb3k9scZ0ISmfLs6JaJgN80kcwcCy+zsdv6UH0Y24uCEbDOXOc7MovoBY9kQoRqf2
	 7HGwHAhUHt59l+eJIto6xSMs8JAZ7pq3VmLLUN8K4wtXMTWyEicKokQz4RKhYNbMYh
	 a17+K8V69UTSCpmQ1qN56iHdo99Bo+of7CKw4/mCE85zDxjzYoA42AbIkGg+pnVRf4
	 3Upfs/ak6CvwtAz59BA0M1fkHbf9JtpGGP6akjds/TXMrj2yzP9vhFw6M7DfwqjaiV
	 b79FYC+eh8P2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EF8C282CD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174081593358.1112.16565874087594306664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 923a761f4f77d9056ef2cd2b9abec109206ac56c4ae74b9b7c3b42c5b3fe169c
Date: Sat, 01 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740815933
