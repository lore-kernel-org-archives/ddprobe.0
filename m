Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4440632694F
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772848494; cv=none; b=DyFDJ0qMsIVJB++xPVRh9TUKEQ8clFRACeP3dTC+UohgcqDpYrpC4CR55RgPG0g0zxchR26EuCtxaXeQOQ8uhIRS5uTMWDqTpXgftqjRYqpZXtd6DWNiNGsegni8hD1LPhHCCXnSq1upii6YXLS+VEnR/wDbtGtlihEQMueE/IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772848494; c=relaxed/simple;
	bh=SSslf2bMP+8I8DA+3z+86i7KMCs5tNJ7a6GfC4kt/rc=;
	h=To:Subject:From:Message-Id:Date; b=Vh58mIctNx+J6CsHtWnEdXqkKLrawEZuwTsWl3/Kj6+z5s+RoT6V2zKNfC2U+ZTXZ+jwPRStqf0Bkrdm+/pEtThh8me/qhjKnjmNU3+3FJHFxDo9tp2vnv1LohlFsSLhoIzIcEkYOX7qpimD+z4L9jKeG8bKjjtLnTx59ihstV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGo++ZWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGo++ZWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C08C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772848493;
	bh=SSslf2bMP+8I8DA+3z+86i7KMCs5tNJ7a6GfC4kt/rc=;
	h=To:Subject:From:Date:From;
	b=dGo++ZWx9nWywNf187yNNLTvotXADXuJeHMcAsfYNa+duY05t1OgWwl2M0pCP2y3b
	 w0okRnmJwsWSqe1yY+063P6B3HDb4lOjnfg/LqdgJQgCZ0EyxrIJp4b7XQmIwKyO1G
	 TyP+fzM9cq9KUWsRafpMsP5MB1YfwuWQKyNk3n9BT7ulcYCw29o2sdmdh63udQcdKy
	 GCGYZkUW36HC/T5DLlFKEddqw+ogH4noMV3cn8Mkv7APSuKoNteUj6Bu32QqiUSr9G
	 GckcoYNAwR6j9lYKntO9K+CQs9GaHHabCIirZ0D9nQPukesf22UMYn1ePqfWMdBm6b
	 uU8hZKaD/5/KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F529FC9EC0
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177284849357.15980.6640336492435742960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b1c83746bd4eeaf49f833d526511719a2eff041ac305f024b1ad9b3338bd80
Date: Sat, 07 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772848493
