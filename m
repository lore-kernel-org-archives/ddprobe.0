Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA1A23A9B0
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759868394; cv=none; b=D9bXIjX21G0bfAJnuQ35CWzXYFJ+oFVhPPMh+PZqFrgn9I0WKjj3vAB7iW0PdulLUO2Ox+GiUCeqOcddDSMbzNCM3a5QvmhXxpAuwzar4ZObaOTYgtWxEUbHk0McmbyZk+hYwaSeTJRjYGnttIUGTCXogfNp/JrDGPEEzL0C/0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759868394; c=relaxed/simple;
	bh=fq9Avjuu0lsDhJZAcpyjshXzQvGudp9e6+Kg8jTvl5I=;
	h=To:Subject:From:Message-Id:Date; b=e6afqu54aPMM0MZGsXyNLne/mUn4m0IptbnlIttoznpz1EUBOYKk96KalmsOZXLdByGcUl8q4DRELbYurPREgSjaf6mqZGIxWnEVIaqpJC8pQsoDWy7rKt/DfVi7UUwUyaqs5FMXKA4zsxKXm7m24KojSt+n89I5XEDHUo8Xaio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZD31ZbFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZD31ZbFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4127C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759868393;
	bh=fq9Avjuu0lsDhJZAcpyjshXzQvGudp9e6+Kg8jTvl5I=;
	h=To:Subject:From:Date:From;
	b=ZD31ZbFq0Rp4qm84WYmGrZw+pDNMIzMoerlYMmm8LHx61ZsHTmt0fd8yhXa6zP7NA
	 h9qMzPvBGvfjbbIjUn+X0vpyGEgymH+vPXiGHetcoY8rnVDUsL9OO6ccHLZBjEzDW+
	 zqxuJwKKKtdKmqXYCA3aocgLvQutby8rD0jgiYD+sbVof7AZPGYTcOmir9+P4tHLsC
	 kANhpa8WjOmHf21RIYM9+9FVSsO/tZfPlWhbu4acEC0llj8sy8G8r0NVR0y3MHgCe7
	 Av62DvY/IMWvRP+Fpp6ZCnxQyEb2ta1P0MVtlxPscnpBPDvQPu2lt+woVFv2PNx8Cj
	 5399CIp1+vBAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E0CCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986839358.12557.10768375733505343893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ef9ff2a1c7a4bea3a1be56abedbd428149459262724385bdb2101d28a0141e
Date: Tue, 07 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759868393
