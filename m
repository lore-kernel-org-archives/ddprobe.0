Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FEB15748B
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718822963; cv=none; b=WhBt4ZjiedJZwEMAEIHgQNPF+UBpxwjATkEs9w+PwkI+76uK0LISaZNImOeF+7TZ6NKfQQNLaTIeqnshhyxU0GcrVyq2DZWMabgKf7E3nAHQM4FAp02DCzxZQL8r2lXaFu+Xw8DXnrF5SYqNea3ZXouCHkp42XcELm1nXls+JDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718822963; c=relaxed/simple;
	bh=MCX6z3mFMUA9aM6kTuoMCN5kuFOQ3MgvTy8aNveLJJ4=;
	h=To:Subject:From:Message-Id:Date; b=Zqv+UPf+aIFmxAiO/fyDbn8YmsWYSztYHuj/QRoMu4ApDSqGQwK4a/72K0mzMed3RTSuddi3XgvAR2WBbgg9ppkimQxZKzYq3j/RfTNiYDws6S4HByuTut53CWycidMOwn0FXgzSB3AqKx0SW5gy+JcD7EHDZHCnnxEIyCf6t30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2kFymSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2kFymSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD940C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718822962;
	bh=MCX6z3mFMUA9aM6kTuoMCN5kuFOQ3MgvTy8aNveLJJ4=;
	h=To:Subject:From:Date:From;
	b=T2kFymSW7iGXYs3ZAPHKPnwY0vt1nf8onDVNx/ZvaiwvmoDu3tWyvkjxft1B9DyiN
	 oM/15QGq0o6OWFq7yLfrx11vzpKkOzvmNyFUueqw/TPxobLfYU3cpg6d7MX6h+Afd6
	 lw67olYjvbIQUUWhfawZBG/URgBKtJU7kZWHKaZRGDPjO45yOabz1LnchILua+JfW3
	 rVSr+pAcvB2mPqSPJ8QBPrcUv4mbaLVswoO7LuSQJoVj2PyLeUf17F3evnXqLwWbi+
	 cLiEscXfVPWhjSd8Hn+JDa9RoXrtECvzhLUyRQZ4VgDLMwgcCe94IF47bMpySUMAsU
	 UEoVsMvxc4pAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E68C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882296278.25259.4879818739674486487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6211aef01fa0862ae717aa2a5a086a22628dce44b1f8c41147c2acd600b1a4
Date: Wed, 19 Jun 2024 18:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718822962
