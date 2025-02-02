Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5905A1F542A
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738508754; cv=none; b=TtweNVchgJK2x1T34LvPI00R+2OgTX4Fobj2NTXmoHkw/ME/lSyxh64pZvZEWY+P+CjOtgXTJmWGq1J0fq9BNR0aDsVii2vAjxBUQFjYLsnP6YYBwI9kgS2u+XtjeuSLIgIHwSfu/zqbdZHh8Yx5U7WdN99+NHBgcCsmkvQUaxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738508754; c=relaxed/simple;
	bh=4yiDgcSbX3IS9hV6sbX9fmC0kzCB5Yv2LOV1/371fSw=;
	h=To:Subject:From:Message-Id:Date; b=hPNX/NRsLYaBfpY7Iuz1YIPnQ4DOG4C/Bz7SS8oMXCSUvHXTbM+vZHdQ2Am6xuE9ArzjA0hzRDX5ZCLNt6II3RZ1DUC366ptu14cdOtcOP1S5SuiNus5jkVH8gNjzmG722VNQzSP/IN5Lx6l1VY4jK8XUIJd7kha9hRHX+qgpJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXepXTxL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXepXTxL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B77C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738508753;
	bh=4yiDgcSbX3IS9hV6sbX9fmC0kzCB5Yv2LOV1/371fSw=;
	h=To:Subject:From:Date:From;
	b=BXepXTxL2B3KKrBjGh5YK+XbwZWULGJ0kEEPFaib0690JpHq6+JYNNqQkb6HVr9XY
	 OhCT60ZMW1B+CHQxThbxe3OYbKVZn6I+PFC8zeV/Gp+6lLi7JAhcoyZF+ZydG207JF
	 7TADJfko2mm3TRTTtGdNMm08f7TII1+TLimbxTrjXaVok/4wEA3bNZh4Bjv5d99Yrk
	 nsFnP4j2pNxp9dfxSyLq5IOlpqNcFG33HfTwO3sh1Sp0A2iluj9Qx/2Q3DaoNgLcqa
	 y60MwV9DZ+XRzIXRll1amVZYdZbyB92PFbBUL3QEK4bZReTth/WA3uJIUm1n7+lfiB
	 9erpb9StBrDaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABD9C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173850875362.17013.12743656625168730265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f682d3128c7cdaa8c23ab62e470544d30353861f3ed058f64bb39b8401062d
Date: Sun, 02 Feb 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738508753
