Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3036230ACE3
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768193034; cv=none; b=q+J/kaxklZelsCl7xquGXxVNR1W0UTekBVoV6X/Q/OtkFq+FqidYFY6q8tVbEAKnYU/DWobV3ogmhQAlQ2pa7RtIZaDkd4P60jfCmQgzIs9q38oE3HK3pprb6zPRGZ6lF9v8WTtcWP7WrHorC5dORXpqTE6EHMINRCHbs8hjOVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768193034; c=relaxed/simple;
	bh=7Z0sl3c9CQSWX8tn+loOsaCyNP1YsDZSg9C5ikLQ/+A=;
	h=To:Subject:From:Message-Id:Date; b=sYjp+7D191HYqeYAvvBGeetaOnLjEbF5I5k89p4KSvRuZACR5ol0CU9sj+KTBIJfUgLjAB4aqECo2//gl/IoYbPfYzuudwPzI6oyhw78Lv0trGsAHZ25AS7Xoxp8ro61OEH5Mng+3LZYGbl4L2p8x2/T01hBER5vQ6ib9hD3jps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZYUC4NV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZYUC4NV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD74DC116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768193033;
	bh=7Z0sl3c9CQSWX8tn+loOsaCyNP1YsDZSg9C5ikLQ/+A=;
	h=To:Subject:From:Date:From;
	b=ZYUC4NV/+Qw7iy/OWVJqoqEHKNY83SWt4E1QPYf30Pb+s5fzX1qVs+Md283vy2V0g
	 Bwc/TJGmprL2F8ju7DkCSk5Eotfz+JdIlMyoNtxnKLFvPVYirrMC02bp84V8HPbxI0
	 LujDjBVYVmzJe7vvCmn5n7hCW1kZa3BPE5yn7WxZzCqq45fQe8HFR2pvmXvCbJ59tw
	 bbAf4YNs8w7C2xGV4PoRJ719hmclLxQIN0cvMQG7ZTjbIKQ5j3q/PxVm24OVZ90nrP
	 hf1QRA0Bg+IfXagfa64au7yXRmBhf1zlRXB9+yEVGugz9JRAOoyJgLEV9GxlTGf7FS
	 zBgGkzG2xF0bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3B3D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819303360.29621.2699259812473600460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04731f47a0fca120c2bd6d3d43b5acd5dd9d577d945adef13a4bcfd2ea78126
Date: Mon, 12 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768193033
