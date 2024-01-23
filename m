Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05B0A6121
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705996697; cv=none; b=sK+HO+B8U8Y1QHexDJmkq+72fdv/ddDfi14ya/bS9cwUYa2RwGrMTQgj3CS+lncb7CygsDeWxu3pW5+wn+SLNYjUw4dTIlVu12g9BMpP73XBaxywu8xf1gbxrekWX09UNfuVXgJBGT0nV7noTiJ0GXvEYAfqd4VcPSORSRDKXPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705996697; c=relaxed/simple;
	bh=aG+xiIXQwh0FWwH9zPqTtP1r2GotFrzPe4aRynhOqFo=;
	h=To:Subject:From:Message-Id:Date; b=Gifwm3EcY3N1txYCYst0GaXhBVFxVaL4a6JxBEV9zV6SGCaqsf/+tYd5RVNGydBFTt4xnCpEAUDkk2W9gc1WbfxeZ/kXbMtsvfwWFosRWgBo0a3f23+FL+uk8qp9pB+0K/OMDOZmZNUPvTTu3A40MpDvkbh2gzs4V+vXB+nStfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnzA5e2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnzA5e2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D20C433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705996696;
	bh=aG+xiIXQwh0FWwH9zPqTtP1r2GotFrzPe4aRynhOqFo=;
	h=To:Subject:From:Date:From;
	b=WnzA5e2a8W8IS0LJ1UKeQKb4hkKtNhOvM7EplKMRL6yT8vyuWNtUXxY9UPuBd1mb5
	 7ssHj7+i+Xy6jDwGjFMlaT8HFn2qpnBv2NovjC8BicX9IV+a8+WKOFB/CRF/njXo9T
	 UE2N+Uw5pQDaU2t0W07c9aQpCbp4DLYZ1GQl1TmAQDC4zuBolwrXZqKSMfEaJ/Gv2R
	 LBJ7aNDdoROWBM6PFtrslesj4x7hh0sy0AprozILg7GxOSBNPnNEajVLA7HullCeRX
	 hSPQ2XUEM6KsGNC61g1dH1myUb66pqx+aVSaD/i2xFdKok+ECtyYrrCaa6i8VMsDcH
	 VqQUZddwSW4Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B822C47DDB
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170599669636.29613.5449973360976394477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59995235ce759ea236d5087e66b368a4e9b594e9b44540d560d46baac6b6052
Date: Tue, 23 Jan 2024 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705996696
