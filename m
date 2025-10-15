Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119E02FE57F
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760557794; cv=none; b=OThBPVcOym9aA2VBWecictlI9Yf+9fPsLWIGo/kOsgTH8yw0hl4HIOWum4tMkw64VylSR/xUN5+q+jOEv04zOTmsDh+voS+dPBC33QMdvtJOeP6wD55R7UPRnMmCnDraJFl0Np1CuBi4YNjub1v5R3r1mM5DDRBygUb9Y39/bko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760557794; c=relaxed/simple;
	bh=m9qxdHshg3gvn5u0rJh97HxEzvoQI4jB/jHtm8Ia4oU=;
	h=To:Subject:From:Message-Id:Date; b=Z746ItV9EdcuPjuTAJAi38pE7WS8khTJgjCQWdfhHeWqHz/Z4t8FBD4UEHKg4UlkHxeKWWnYqFiQayubaM9efyROIL1X98MZWuCc+G9TBE5WvLz4ufB29i9sGsw+VtvtHa5NGZO34D+DdGft/YGzSrHSq7W1mihFLbOCdjPR314=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3C0a6Yv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3C0a6Yv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A87C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760557793;
	bh=m9qxdHshg3gvn5u0rJh97HxEzvoQI4jB/jHtm8Ia4oU=;
	h=To:Subject:From:Date:From;
	b=k3C0a6Yvv4w/taLJtJ21fMGcXou9Qo13lgfrInn/XPNXn4CFGn0zgCVxjdeHQrRUO
	 NZzOYhhU7HvP1+5cxaB/R7Fxm9F9382UQjUb4dDddMNzZZFnI8L2cmMiIsFQpEOX8b
	 S+Uo4hR88m215N3yf/SEZM3v5LjqX5D+llk51UFltXLSMb4n+F6cG8RghKr/Fvnx75
	 z4jD6k3edUe8yjAy2PHAGKhqJ7G8fTBM+GW+dEWeJA4qHjlPmsqkBB0PIBq8kTofpW
	 HnySrARpwbCb3FAbnXcjxOkp6XmGmL39ZL42tLESylTT+U4oNA9NCx7gC027Hy3Cvw
	 fQwOZKL4S+rHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41ECCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176055779357.26728.4208110054161745752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc9261e3222b0dd2600f7c441939fd6ea422b04bc6470cd607b5aedb40e83b6c
Date: Wed, 15 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760557793
