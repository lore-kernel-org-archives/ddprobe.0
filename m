Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6883E4C69
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788604234; cv=none; b=c+jPXdgG8nfvyOnjCwAbXaioyDPbfLdfmgFYKRAu3m3exgY/b1pm+NzKjGEUUfGoGTYZ4c164EBdFUpmrQ4upUizrcHIVCngiiPqlYbXcQq7+eODGITBpPpdI1HQGQ2vITfZq1Rhfs77wTFFfNT7g4WTvcAgQ+I85gDFgmpsXU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788604234; c=relaxed/simple;
	bh=GwgdBNO2xMbKzepRYF7U0WOOpAvKYjy8LQO02epx8yY=;
	h=To:Subject:From:Message-Id:Date; b=fwPSkHK/Zmq2eTgFVDOgTjDfwnVpyclulEx9l/8CFoCzcq4zHCVcGRuWIvRrx8X2tOOVRkIbcM+UlnYvm2OrJHXBwTZ4gUQhOJuj8x5IZYBaSxgDP0UErLGLb7ux1xre3ivi8l3Ha0YXxcXqpMyzUZCgUntVAfOOsQ+vx7pXR2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7e+Gibs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7e+Gibs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25A6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788604233;
	bh=GwgdBNO2xMbKzepRYF7U0WOOpAvKYjy8LQO02epx8yY=;
	h=To:Subject:From:Date:From;
	b=H7e+GibssvM+5YaG3sO/EIA4Bvrp1U8T+FyiCXEMeWRzwmQn7Vs2ezkGTD07CvGf5
	 wSnq4EJw+0d1ZHl3nvOe6u2gITv9CtqBRnuWeKs0u/1PyXCynDsj0ylj7xCGvS+qSG
	 1mQfCKo3Jl/wYe2JSJIrMj6o41eIeTm6cnzD8zNNjInMyd8sNIkuq53Gy4i7viYbNV
	 LYWyciMxmdt3QyYpLK/Zv9OOH5/P0eegs7XLG7IAPXbeKOSymzAt3PqYIGGYwGzACr
	 GX1SDRFGYNNNsR8Xgp2oJ4vjXIEJyhppT0rRep1KG4oj+VYYxU+UzJdPlKT2+Sbq+3
	 w7bbFV8uWD93Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB23C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178860423369.2720.15923690612358206197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ae04410b195675f60a93872c559282cd23b48eaa15466566eba70c265d0ed8
Date: Sat, 05 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788604233
