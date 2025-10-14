Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1422FFDE3
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760453994; cv=none; b=pkSYfar2sWWC5sQTq9GkOMiZo1ontk8kks/OPZk4owRZWb9ZWb+YVwYWCtop8I4WtQSeVXc4+MGTrDgWdBD3TqUeIjZtL5hWc8BPEqksfQOqx7jDxDgRTqMl5Uh1sdVJ7R71CSyxSzoULZY/UhvWw7E9BbuVfxcmiL6NdSqZaAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760453994; c=relaxed/simple;
	bh=l5Pops/N/VWT6dp15ZfI1OSIu+dvA1Yu5XnkNZpiDlI=;
	h=To:Subject:From:Message-Id:Date; b=d8scUWElcyLn5CgBK0YIaJtERlY65Np/5TqbfaV6zXJMz2hq8gSj1TF/he21KWfjVerAJhOtUkicQPK4BHQYj0/HlJSo27MOcrnjDmNdurWMC14grWTVESDz4ZByx09zSxYiRSxfQ+jna+eMsW/qK8O+sUhBuqOYllvkdJTxX4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWLZdXaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWLZdXaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C46C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760453993;
	bh=l5Pops/N/VWT6dp15ZfI1OSIu+dvA1Yu5XnkNZpiDlI=;
	h=To:Subject:From:Date:From;
	b=RWLZdXaf0D6PBw1RhSF/XtYs6Zn+BQJl+NW08l786ddsfV1pS/P5fB+H4x0rZRSlK
	 OFfnbozWHDh5R1Q8tVwzZgbmvE/2pg12d7MK0l9J1jMQYO1n/Xw0kFTMZ21SxNZb/l
	 5iblM1wEQ6mBvIB8ti64ZzWCjjxWBLo96ff/NTU4mIjWtGm9Koe8GuRWRSnilpUM70
	 Nfzq9zELLOqv0xrL3kmjrsdYH9Z7pw5rgS2DMGkbsETsGzdSO3VsdtmU5Bc2vszw8B
	 SrlJTdUAd9UGUlrEwCxdv9kCzsOPDAKasF5CT86isUwTlJCGGgBB1CzyX8R2mL6/3U
	 nEArPuSFvtYzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFECCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045399358.25954.15683961523270523890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 788d0a21a4cb79383e4ef38d58cd59081312056eab5a1132bf9bf14ddb421e3c
Date: Tue, 14 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760453993
