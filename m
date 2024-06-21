Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E64139CF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718954543; cv=none; b=lJDOcEkUNf/RRLS2ZL5ZCcEKI47hA9Qc2n8PisqbbtouImKhQOXyINbXwUyxPPOQXXrwrZFb24BDyYtiFdYYVp9nrEbMEXs/5EtMTUgl2/XTq9UcGnrFF0T2S+3a2zdZQmUPhQ/a49feUBzfRw8X9P4U+ZbXyp3zhgGja8JUvA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718954543; c=relaxed/simple;
	bh=hdTIJbENZyww8ciof/57MgpfrZS1hPn/rOD0SfRuJus=;
	h=To:Subject:From:Message-Id:Date; b=CeMoUQXo6SCFqiyGMqpEOx8yoPNSGIea2DrNLQFlF3395ybvr8FhwLJxvAexBNEphyNemyQOvU1PayQgOU24Qk543eRXdFmVxyqesbBlADxgIrkkdJ46acN8uv6zlO6qIF0ifDXAYc+I8l0byyqoDEfhyNh9ttsb0J6kwXm7hZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dq9usxcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dq9usxcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB366C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718954542;
	bh=hdTIJbENZyww8ciof/57MgpfrZS1hPn/rOD0SfRuJus=;
	h=To:Subject:From:Date:From;
	b=Dq9usxcgz1/CCYCqIjCL2ijG/hxINXbEtGS+8PqpDOBbO+KD5EKIeQ9GW3Onyp4NA
	 kf4EqXBJ4AvQ89n0orZaHR9Ff35kcSSLD0SHGlBTvunfbJYwQ6bSppzgqmo+vTIyrH
	 okNBV9XLXGBCNovPCetXXZ52nUf0RosZ2xhc77iI2U6bIic7k6hz45TjKKqCJFaRzn
	 TJOyaShd/OXcX70+mO4cTVBNoK3yzxksrFfql6u2vNxwyhoCqBXIVU28nDW5MHVpdQ
	 o8iVelVCX60ztSwQJVeiSPuXJD3Wxg2s5/8cQLlnkKLmmtF/xpeL/HB3KE5d0d6PqG
	 acNF5BAsFWYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C54C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895454280.1322.13338825122666417655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396dc0c5eb1861eceb23536e31130464e8df3d2a010b28b18149299f66a24ef8
Date: Fri, 21 Jun 2024 07:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718954542
