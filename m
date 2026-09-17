Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E0443D566F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789629634; cv=none; b=uZgiw+XaciG92N8MN55KmtrAhEn/8G/fmzo9jn3kdFDA8soUYLrt2UHFMoNpl/hlFnCkG+NgBXe2hncPiNhNmIX1RiuWxPA9Ejksr2vEZIQzoefSdF0gLQTcK+FecvW8L0b1s5zf10kyJArapILNBGWBwvHEBWFVUVpftgLCtqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789629634; c=relaxed/simple;
	bh=jb2DwEhiIevWH7HtWR11Q4rsGXZ8wR/C9wSfSkP6AQA=;
	h=To:Subject:From:Message-Id:Date; b=iEUMKZ4057DtsW940h2BDi/m52ZL6KfLMOBH0P0ugaDxrMEjx/m+9UC/ElyYLj5CaRsD77h7SbjlSFAgLjgmpGgmo9bflDzkH1dBJRqioBwOECbi9bsYYX6KhF0q1d3WMRxqzJG/wTeZ4xYW81DLPSlRhgLs0iSyK3ezVHBJ9Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btvcBLKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btvcBLKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7C2C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789629633;
	bh=jb2DwEhiIevWH7HtWR11Q4rsGXZ8wR/C9wSfSkP6AQA=;
	h=To:Subject:From:Date:From;
	b=btvcBLKKBl560If8slkNCU6KiyaatWwA72kLXTkZCilz4T+fj9ln3CaaKsWaw9srn
	 jdQLdhQaJa8R5DPMGTKiWfCbMiyEWZezo6N+X0CVdaAg8v+zXrYT9c6eEdTEs6M0CS
	 tl4y84P8flUMQCp+zY8p/MsesxUOY/DbmmVd19ZWy0eT2YMLQ8f4OmsYUjf+DwxR6b
	 Gf+PHWm9f4z/9uXxsiNaC5H1ZA4Tt1yRiNNKaeqZq77V4kHeDvmPcenE5kAdJqPtRP
	 QH+JgziCF5XdWDK+SbQWQT6AoYoye5S0L1iBI/BPgvbigVvrkglUZa63/leWBCJ5oG
	 h9bEzvhqD5i3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78EAC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962963374.4553.9595008593413077087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b234ffbc050761e0c446e727248528cf21111eb1546f607d08ebba7f6a2d46
Date: Thu, 17 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789629633
