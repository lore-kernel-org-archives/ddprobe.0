Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063D16FCA
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709344697; cv=none; b=dK2DJtzanTng1l8gYqRGAkuJLS64H4y8E2p0WmzcV0b2ADnvri3QHoxd8iR1/FvWF5kKlpNZVjICmJCjY83JAk5LounenD1D/ez8DzzIhbuxfjEBiE7blVwa3qxln1PNVAGAXrtGrqnoEYsaVTkDfajQMe98v5D3K4xBtb4TX4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709344697; c=relaxed/simple;
	bh=6ocQNsq5fTc58Huylp50GiSyZnPiZt8Dh9Hnqom5vEg=;
	h=To:Subject:From:Message-Id:Date; b=d2Qfb4G97PlyebWRwKpvGKl9iUJIGcduyo7+eKrzPfsTTubXaYOkkkN0kor7IK1oRV0Xvxt7WYfTN3msTzG/RZFlmxa0170NinbvB3NRLgaJwndqR2BTb6+Fo8/Tqgy8XXkwJqTTl4AAXziy1SPTyItkpyKK12jVjs91oE3hfds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oa/xy5ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oa/xy5ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D4AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709344696;
	bh=6ocQNsq5fTc58Huylp50GiSyZnPiZt8Dh9Hnqom5vEg=;
	h=To:Subject:From:Date:From;
	b=Oa/xy5eyaoS2exXwzSXwL5vFKkjX6fiwaadiW9z12zEpr5oZ2hOzo0paqKKd0nj45
	 PTybI6HDOU6/iUT7WcFxNiTE6PDHumIlasRXqbp6pBjcIJDRXl+4LuuOIz5jSZDQgx
	 Z/bNQyE/h7PJwdh1GCwis8elbiz2w4a8Nbj605zy3NkhF/nwb43oivG+c7BJ3s9tFX
	 YqKcwylmvvHAfAwPY26cQJY4CzZwvD7W8LdbRH9SHToxEh7hY/NzXEx5Owq6jc4KJt
	 ow2uYoMvmM5TF/xGPmiSB4rGAvycfWYT71K11CFvJMQdsBfdrY2oc1mPbgrx0aXqi+
	 1bnC2HiCXTFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65AE8C5475B
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170934469641.2229.11926269341694283185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4ca1b1254ab9715e6a698ff1deabbc0122a915e753baa510ad490421ffc109
Date: Sat, 02 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709344696
