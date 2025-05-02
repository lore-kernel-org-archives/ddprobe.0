Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20EAE21C9F6
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746228594; cv=none; b=EibkkhWDMN8YTvuvGPZ8+3z0xw51gtnEl3IrUVWRoElmncWEG+re7CL2n5A31sN1D1E0aD1clV29ia+2wjdRRNpC3lqkCjyDBTN7rA7ncMN0qpnsbdT7PAgEzmzxMkwnhCu0TiLWNHL69MssaggqGCdHYuVFYaLQPuZ5rTvhR9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746228594; c=relaxed/simple;
	bh=8ClivfIX9768NgfiW2EgLV/s3sjx73xOKN/qPf1qlNs=;
	h=To:Subject:From:Message-Id:Date; b=d2SpfCvhiJxfUfgD7MzK5RwEgIrTinJZfo5U66ThJuEkrREgsRtiu7/4ZGdP0WZPrl9Zlk7VdY4tBi25MXXycgePdIXpTbLXiZvwQwWirPDk3S7a+aLISy7MBwWwMylG3y4yBLVxFq/CphTwdEQWnRV5fF6qi8k+Bl3osuaZkds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BhhcSw5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BhhcSw5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE08C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746228593;
	bh=8ClivfIX9768NgfiW2EgLV/s3sjx73xOKN/qPf1qlNs=;
	h=To:Subject:From:Date:From;
	b=BhhcSw5rdlrGcFlwatav6vWzKlNNGCmtIw1JTjL593rkQ0Pbsyp4hqFTcpU8SNmOc
	 9lOrOw1H5tV9CLNCogaWq5ND9iICuYEjk5BsGkhI+OvOzMuzUJfi0OE03/Qvh/+cFK
	 ZIOQTbYn6vUNWpAJsUsShKb9SpOapDI1S0p15VQkrR6d+nLz6xvhj6EmtYgEMkxAL2
	 12py2jx2NLa9c2DbSNta4ExbxSLOYR5bA/OzhD3MwrAR73mVRZiJY1yfNurMhg+oqc
	 3RmpUaQth13TdSGYoW2SPTpRQ4eZ1DkO7GHKBGvQYcTGDO81n0ZjU6yOlGm570IqSS
	 Rbg4u70bs+uUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E6C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622859357.24405.4786071451017781962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c170ef0d220ba813ddd783c094d1fe98125bdfab99eda05bacfe8d49d21f1b
Date: Fri, 02 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746228593
