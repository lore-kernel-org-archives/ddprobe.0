Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14D2381AF
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 09:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709978297; cv=none; b=kY3zgr9EGmtMyKDZM+ARcV+DBM2xHO5T0agxhfwL++IvLcfnfQF8OmCqe4vhhXpvfTBZ1eiv89dWaecGLUp65NOxVx3TsOCOf/OKOYyV5Dy9j1MOxzJ4KYSkC5QvFGO/KxvhVv/r07JNfsQJ/vwAU/AUUTwtwGg6BBbp6wgzwy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709978297; c=relaxed/simple;
	bh=vxAp+DFJjZPzj+ax0Qpnl824Dwj4HQZ1jZC3psSTzWM=;
	h=To:Subject:From:Message-Id:Date; b=Py41Y88ZuoXAVTf26TxGn/Jx3ySCDc1O5YQomcNgbdEbTfSgAfFaF1z3qTlP96PdLgWo1+LCFNoTNbKc0+tKjwIRmtrVOb12c9ZH6DY85PXiPiIsq8GgK6g+3Y5tZvwHpPxxWQtsadG5u+NoiweoGP6lVyDjRIiKO3xLLyXW7uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+0mGgtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+0mGgtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75C61C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 09:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709978296;
	bh=vxAp+DFJjZPzj+ax0Qpnl824Dwj4HQZ1jZC3psSTzWM=;
	h=To:Subject:From:Date:From;
	b=C+0mGgtuLhR3VRZlJ4JJbF3m1gC46M/dq9tHTUGHK2R5QgRdUVSD0uRZT5FYzryi+
	 2bj5OA/SBAPh5+21nl+vh29eJ7hu4qrsCaxmPcl0nIchHrfDGM3KriPHAjZNhYmzua
	 +CwqARZX+Y2GdpbScgUC76Xu+lRNzcZYUiAEFZJ4QRaeSGCl27tf7PoAWBiFyThSzG
	 VDoDv9iKv16xEl1YNVVFuKL+APd1DaRIk+lW3n8l+dgSI2hj+USp2piN2Vt7bAf9QV
	 KV8/Iar6rj6qTa5BzwlIqYBmO2GNBafWTz8/6UGzPHtQh0RrZHM1lvKTo5zWtVkHqS
	 lnDdwCgxZO5+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E42AC54E41
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 09:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170997829637.17099.14130102826274476873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68dc23d76d2589f3a2f2f8b3d6933de313e234e1c6850fc3882e49d54f8b5282
Date: Sat, 09 Mar 2024 09:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709978296
