Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D5F3CD8C6
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776854854; cv=none; b=VFYw9XsP+1QI/89E6Yuv4bTQ6o8hodcRS4MkJ3LIMw3E/8N8LtRaeT2/I4lB/A0GPl2gESvCRIEN6k7E4dEP5XgglPdAgOcXKZdnY+TNZXgzM9R7vfskr5rXbaQx7uV0GKPBjUd8tGxo5wztINc0/H7by6jifHWqFguirKB+tjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776854854; c=relaxed/simple;
	bh=9w8KutVZqaIWbo0426t35vNVzAQ4hyrWkiZ8aWV7suE=;
	h=To:Subject:From:Message-Id:Date; b=FD+hAKgmJjillsXNKz1Kp39qLoz2HTERMrJOhJn0yWs3jipKKfCGghzfTIjWht8ywlsRRmkfM45Hzx3dQ60/wLVYvShDZu8/P2bsM4nKXGqz9rmxEwJkQ71629IoMhrUiavEYwEk6maS05MIlmxZEIA6yNBv042MU6G0qhHL5RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSu//bur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSu//bur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA344C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776854853;
	bh=9w8KutVZqaIWbo0426t35vNVzAQ4hyrWkiZ8aWV7suE=;
	h=To:Subject:From:Date:From;
	b=bSu//bur2Jr9/SFjCuO/cj0S24NdUol0CDeKtTuGlzt151yxNnKjFHi5theNzCF7s
	 tz20vLIBOsqKYVl+jMwfPlXN8eqyDMlGhfKqGMG441jComLLLLHB1jaoqFhUbBie/6
	 REHtbGAoKGcQJ4tc/9tMsfJfPGLovALDlqLqg54V0MkiGZAa/BGOI7xwaK1WDaif3c
	 w52I8vAoYikhdI8xnHGsx7/Lok6WxPNaKGvyiefg36nghh+yItffi/Rg9jfshdEA5o
	 ZCqPFmI63kPZaAxhe2TgG8z+k6OSryljk5aMgqToJiHWbzlQKG/rU/b0vY6pq4sug5
	 rNfaxGZPfchVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A5BF9B615
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177685485368.10061.11067533987606189252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01d77c2328a864bc08d0ae51b56fe83a32241371aeb05c991617e59268fad89
Date: Wed, 22 Apr 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776854853
