Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C89017555
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726763154; cv=none; b=ZpUvWkjISTApXsHTQ60mdLMCGAk+UFTOCPS+lAp32nfhNRFk9HQwC5Btnu4zxHGTeYLpd83GM/e1qA8sL01wnTAPN4Nex1Te3yEc/Ie/kQdRX1VJXZ09R9cq79nz8/BT9ZNfSQXayQ1kzkGF9oPWXD/96KdILmF1/PyBRmvTc7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726763154; c=relaxed/simple;
	bh=LS7uW/fx93DbNttgGAO7ntABeRmGMS3TEULTJ9FSqrU=;
	h=To:Subject:From:Message-Id:Date; b=CRWYWH7qHWpW7GCBHZBBn1OA699OTtTFVxSzwSKRUPV4nN5CBmr315nax6i1de/nElTWxx90zvoJuR3mCs7GKA5kcxZQYCqP9czxKBNkyeMliakFDziiMrU9ariaj1UWYC/6VZ0TDVTq2FEvrMbormWH1l8f3P9812493HzFW/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8aFh95/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8aFh95/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABBBC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726763153;
	bh=LS7uW/fx93DbNttgGAO7ntABeRmGMS3TEULTJ9FSqrU=;
	h=To:Subject:From:Date:From;
	b=Q8aFh95/pon2rOx3dtcwPXPBuQgoMWw9/RDQ4Vg3JptQm0QwgFZgWZoAkaIArIwr3
	 MuLghRC/MQgMAnERdIRjoDp006GBgZ4VL/mGXl2DWfCvbZ2Gye4TbfeVfRKJAZjlRx
	 SiRzMxpLOKo030VCNOZdGheo3xk2ykBRyI5lfckvpvEKfdm4ZKJFNa/jIztgu+VocE
	 G2PZoxyHZHqrd4Bzq80dEdFF3U3B/hq35bIHeDkEeZhOcsnVClrpuWRHtXL0JxyBg+
	 7NKdZyzDTk7IedfNxNITFWSQxSJr7WwdGjClZRRbLXxi46I/5LSeTyBZU3+QbiN6iZ
	 8CYK1BY0wnpDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C8CCF395D
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676315360.17721.7788740807257855778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b41046706161487e9004274216e5d90bae2c86f5a39fbd9c2bf497d0f3da9a8
Date: Thu, 19 Sep 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726763153
