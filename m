Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1510E1FF7C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750980596; cv=none; b=GjRYx4GxU+wClwzVsRhWOl3IgqGArffpoDeP+HSCVoSqF86qRHo0N/NkRQ7FtW8c0osN8SdW17RiQV5B0BOno4+sX7In8HBs089ZMHNgXfqf35cH1SkaQcDBV69HePQmz0RD0//55mibKeWR0vKeHNsEAy+ju2PglO1rEEdgEkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750980596; c=relaxed/simple;
	bh=NsEUklaZPZTL0FEDZQZjoFPUt939f7u25tMAq75QPB8=;
	h=To:Subject:From:Message-Id:Date; b=ETMCViXRqPraiu+t6ArFaltBtXg2TsCzHs/9yTwZx6bQw1domIO/jhCI/8hOiB+TVDkt9GNcy+s3weryWWEb7Vj3fyRovBH/OytdS0UuN8NLzvA1Tb5ArviRhDgyUj0+c6nppZURjmwdOWCisWt4AD8W1/ScnJmUvPo8M6p9IJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7WlNtu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7WlNtu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AE4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750980593;
	bh=NsEUklaZPZTL0FEDZQZjoFPUt939f7u25tMAq75QPB8=;
	h=To:Subject:From:Date:From;
	b=K7WlNtu5GwymIimxzeor5LeJCC3+K9Ux3Dm+sO1xIvuPw+Wz4cHbbWdStyE5jhP3g
	 mP26eBh1RT4l18r7vahLEmD8/DdM5KqEHSOXXZReSdt9Vnlf+rNCNGGgVJUfdWthe2
	 JZ0zowOoQgwyyNEAJTJM1UaM7CQeXptu5jmsVS4TJ7+VF9TbbEM1yr7Slgn7Hz9Zem
	 cD+0A/lLMncghEeP/+xJLbL4deCD7rbgrWHDx1sCjoJklT9l34kHJ9SPyrQbOQHygD
	 PTSTC9uI5qN4TKsz5GnI5gqmXsjU0Y2LzTeJvObPRxCj9Ad0FL0aUOXlfkyFtfzlas
	 /+/+vigrfu+ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908FCC7EE32
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098059358.11724.8744804670825582880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e12372565469e9d1158ed3819c3cf65a03a42da614c89d6068ce21b3c55c91e
Date: Thu, 26 Jun 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750980593
