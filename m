Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432021AF0BB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745051395; cv=none; b=gYrh/bRFU3JkdAHFeLIlPipfChXOq6jbbmsPQM/8kxhg6WiLc5zgikKgH9ndA4xynLoDzTK1cXFtXN4f8ig/QPdrOAxP/4cwLkf7wlIQNrvNagQT+Ebj9720YL+ETS4gkV2Jhct4l6SFtaTrFH405eflOrrrOnKbPYXLmXx/6gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745051395; c=relaxed/simple;
	bh=hmij4Po57sTSRbKsYKDoULSrtItuBGz7rr+0eQllqNc=;
	h=To:Subject:From:Message-Id:Date; b=fOvj7xmbyqTyRVmjGG5gLpXB4De9LL4DfqmW8hKbU4kJawi4jeSBOphhj1zFS2X0IST4tU1sbjqr0JpmKAGnG7K1XPGrLP5+sXvBOHe7XMDlAIhnNiwYVQiZxk1rSrhmk+qm/RIa/4dV65PRiCaaon+dtHm4u+0oLCP47e/aSlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmrPpyoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SmrPpyoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0353C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745051393;
	bh=hmij4Po57sTSRbKsYKDoULSrtItuBGz7rr+0eQllqNc=;
	h=To:Subject:From:Date:From;
	b=SmrPpyoP0j/x40OIm/YAQn3BKAHhM7rZm9mv1kcKQad+KyG/4NEB0KBIa4et443Mp
	 h/yIqmm78GSvKlxhxF+pX5f/p52k6sntdeEPV8EYcxauEKw//fVdtsfEFxyx8rMu4y
	 Ua5HxzGYCgkH+AAPSvnVDa27LNPbI6byty2PERA6mIJ3HXqlPWx3XjYrXc/ZKBrngR
	 xdHuQTyPbvdJHvBAxUGiXjNuJQ/kowRcSWMWBdieKny29bxVdg7kbFXhGDlqN/Gi+z
	 HHf2+sDfaR4Eu5BCbS1B0BH+j3S3QZ9/ytj2HEEKtO8JNHevQ41kkhDdV77yu/N69D
	 4/B0WkLclmtJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B585C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505139360.6494.12864440652217709164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e92e1d6232de5b1c1c49790ba4594dc699e966822513d54f242ced58833ebbf6
Date: Sat, 19 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745051393
