Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3915A2F3601
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767700434; cv=none; b=MKNNLdr69MYFxAO/RGG1Obbs9jTwKhZnERvKW98Mpc06bdKarJoeOcVbkv98eJya9+GAvZV/Nd5XYueVmf2+i5mpfGi7hCHmXTAGM4zlq9yZZrndA2w6fBTEVApkKkSba4+fesQxqitGkC1lBcbMAZE7/h2oSSE16NTKmhhtcps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767700434; c=relaxed/simple;
	bh=I+tFVfksJpIK0Zn0yk29r5PFXlfNk2ZMkRyoi5szs9E=;
	h=To:Subject:From:Message-Id:Date; b=d/DpByVgN66glClj1B8E2J7ZyVpooTPd6IxIHoLym7/ue9kTWS0+34052cZen4ykCKQDpGT6nlQQRLt9lYQqh/Eoo9b8EdU6CwwC73oaaNZV2+JfGV1UnsWcGNSo+XMyYW82Fyc3y8/YACYnCKP3rgdMgDh3IRc+ArW6b9hZZzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SVHZufGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SVHZufGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC01C16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767700433;
	bh=I+tFVfksJpIK0Zn0yk29r5PFXlfNk2ZMkRyoi5szs9E=;
	h=To:Subject:From:Date:From;
	b=SVHZufGDmRSN+GatGIVF2ceIDygFezXrf90wAiI+U7akfkxFJ0yStEUqzzjGkj/h0
	 XTp1kPB1Ps2X/5LPTyFAgt9ThxkoU8/yWm/ZZVKzhfaiUROmUJadl6MqYiytKcSO47
	 XrrdIRw/bRDeTjZYMc+FogxJd7CSDBSDB6GdV4BhNabJBp21hBk6+126gIrvHChJp5
	 aAhYcHoaY5IUDB54Zfhgixzaf9nQqCRzrA/mqvvnc4Pj2Onadl5bicd3QcHvF2sGqV
	 sqUsPJ1rjP9TMC8kLZxvRPj73ng6k3rWHhthCaDNmZVut1c1O5TAMIQB/VPwzaYxvU
	 365KY9NkYR9Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A6CDC165
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770043357.23933.4775568581679438452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8131aa38088c68ac314cc99ecded4549fcf4df65c05ff3421e3056e90d3caa
Date: Tue, 06 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767700433
