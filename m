Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E92146D74
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720466183; cv=none; b=fnezmjlX8CuWMdgHeRO09mCcqNglXSNwmAd7oeiVzIxnsbAaRKE3C9oVAXJco6pL2iID/+8Ax+yZ0dC8gD0P3RAKHI7qYf9cbfNTc+kzdu8TdDCNNBLhWWspjPQ4DfZNETviS/fUkYIm2ffm0BP4Qf0H2VyVds7aq/vxsyvIXsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720466183; c=relaxed/simple;
	bh=JuY4ipMUMfGoCYWdxyNk2N6N+aVkp23wgTkNXKagK24=;
	h=To:Subject:From:Message-Id:Date; b=TW/JVPiCOhsdvHH5ZK8U0Lg85D06i/Mcr4M1w48ShktMEJgXVEG8OW1CY8+65+gQDxaRP+nlaZSH5Tlxbz+o+HoxgLKemfXtZ8355u9SjQ3y2OOSHKyFnUph5cphLe+Zu3znTV18CDc2hPoxknMm0ojnOwUaVFVd+uWNZID53HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJRmJAkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJRmJAkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D24C4C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720466182;
	bh=JuY4ipMUMfGoCYWdxyNk2N6N+aVkp23wgTkNXKagK24=;
	h=To:Subject:From:Date:From;
	b=IJRmJAklZeqxfaV9S0AvbOZr2SVHdpqPMikN1/kOUCz9pt2jeYEbsE0oMTDS157A8
	 N8eaTCjDZdZ3HsDkk4FpckFO1U+yKZuJJ6DWq3QiXcrcAbqsviTuNP7Kcz0V9mkZHy
	 VaBQsYD/hHUvWiZFlT65xFO3uwAPu+Ehb/BL2ITkG8WM0s++RSvEy3n9GlLSf2/WlD
	 QDqwKYX9iJiAL2OioH0gpfF/8pes+WNdWY4leSOQ7HXwdlCyMBmIYLk6WFP6HBL6PQ
	 mKwa7VJpn3Ih4onKK/rWsmZte9fT3GaiFnX11dcPBXwQ+cnSKU5kX/2UTgjO6ECQEU
	 /iZknP9qMMc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE230C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046618277.31400.1377166207221591581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d943faad66fd5bd1b1eefb1de37b70cb21f4afc1e0efc262da3b13337f6f7301
Date: Mon, 08 Jul 2024 19:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720466182
