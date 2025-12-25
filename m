Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B058210F59
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766642034; cv=none; b=exGqAO11WSCFPwY4/7ugMyg+r+AvHzz50itV7NCVjYcQP4WhCvVaEdo+TPKtak6W/WA9OqeOrAem/Cci+5jEkTGxekxD0QGQz6dhHm00oPfE6KkL5T/mItdU7ruijrJhtU/IOphQcHLrEm6fpRveGqpmIEm2LpUTUMR7rGTZr24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766642034; c=relaxed/simple;
	bh=M9f7xegM6HV8FTf/feEpF1mUaJSBfwJtizQvdE5lPPo=;
	h=To:Subject:From:Message-Id:Date; b=pS7G3ItS4RHW9mBdUJCqKP2RSGPU9Os+0FJNZE2ZSNMtrvt2t62KHG551PVWjjsbi7Q107WRcYuKq7xuTg9ZfbD8D/jgny9uPHyzBjmU5olkzvf3bXqBY3FXbMH3aWqxDjkKAsI/yELsVSEDF8/Wwk4p0IOPe3jHR5RXTS9j3Wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvrLpvrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvrLpvrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50C8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766642033;
	bh=M9f7xegM6HV8FTf/feEpF1mUaJSBfwJtizQvdE5lPPo=;
	h=To:Subject:From:Date:From;
	b=dvrLpvrdOTfGQlQiDHIie5bizIgd4pdZh1Pp+tq/51jjNrzVcXdb8V7IYHDOIV7L9
	 xBesqGnqXPXu9OfPGV1Umru6OXFXBePYJzt2NDVt2blgoZCuw5rTjKSdaViS3W9FtI
	 Dk5bJ0ClkEQkxbCvdtsxd5bkW2BNjRgestBjiDclqc+gM4YVuGePaZNyeE/IgoZkd8
	 prMdqAIt6l/yjFKZj0Te3dAn8l7f9wSQGIby667GXCVWk+4MrorlTZo61dixeIAEuT
	 aVa9lU1qMLhginYcvYuFLj7T1kiM9nJckz5IQ+34osEAwtNWRswm8B6TzhBl+5JRjq
	 1igpp9Jo1w20Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94132E784A4
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176664203357.4805.1987073690980801612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ed61d6a4b71e3b3cf5b813e8d063fa380dc7c9e47b9ec47f8a4c197184b605
Date: Thu, 25 Dec 2025 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766642033
