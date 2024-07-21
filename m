Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D33615FA93
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721576154; cv=none; b=ciK22zarKw1XiOGC6JISajb1Idk/vvui8+sIWIawdU6Q8IyZlbeIWKsVJFyzNwbYMPe+R8fpMTszgxFzGWLU7OJFCG26MbvsSgKJTsSRtIsHggdNcNNk+8J+DGA61QDD9lR7JE1VTM2BOhq9VGW0koeNApi/Fp6Ejx5Rc3SWd5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721576154; c=relaxed/simple;
	bh=rhKZ80W/td2WMDg18v4KJ7BAy3ymADoAFAVHWnlOjFU=;
	h=To:Subject:From:Message-Id:Date; b=SvfiewJMa5n6DkYjnMl8uwVGRdlfK2pc9QknXCdzfo8scIgVJO7fqFes6YoVsOjJ2SK3AKyAMLz3Q1IzsrJ35Bw7Yb598yh2L/VjLrhc7gw+iBbZbCJYtU6bvEDR4dunoC0Ux9eKI+6hIWNtDib50UGzOWp1K8sfpRm7wjlwWwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPQoudzE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPQoudzE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3015C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721576153;
	bh=rhKZ80W/td2WMDg18v4KJ7BAy3ymADoAFAVHWnlOjFU=;
	h=To:Subject:From:Date:From;
	b=QPQoudzEOKg1dJ+abXL8C9hPSCjlaARJ3/7eGe5oiR26bvdfTAj2f4jXQv/9qUY3e
	 T+x3hjNC0haPJ0MPkEkdbEl09ogTSat7443eA44Pwzj3sH8zJcgoH10CACUjKxJQPp
	 Ik/rtMroJQ79/6A1uGpNsSqEzsQ0Jv60wCgovfsJj/4zfQghElKJJCth3P7xaQIcBM
	 hhkTvXmbzYssjWKfNBFwIwR5z7onSSuFoaDRVmRQXi6igFoLgFRKkhrEyx3Jzqr46v
	 MKbzyKe1o4Rd/Tni4but+HQc6WDtfCFvONwNj+3jeWxZWxGtkx+3GuMWsTLUQJKV1Y
	 CsAa/rNyp8zHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D7C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172157615359.12310.3316983519470482642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e6878d80c578505cf3a8e50ae6f14d0106e5d5f31ee9e8c7da45aafb751f417
Date: Sun, 21 Jul 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721576153
