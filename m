Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D872676D9
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751020195; cv=none; b=LCyGwxcze/fVN3LVvBkPQECh7D+2vY8stFzfmMTSMh1r3PmJwzzENueO4JcYYOL86R6BrP51qzqRjhbo0dIreVtLGDRFv3OxGMamXlau1m9cJzu0Ol4y6wGgbRljyNrfR4WiKTHo9b7Jm+rQ66+5/sAbzJ1EewDUzbbvlIqLr5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751020195; c=relaxed/simple;
	bh=MK4lKPT+AkXiyGroN50eLXmalYTJ4citHL1E1YHgBx4=;
	h=To:Subject:From:Message-Id:Date; b=jrqJkvvp2E1FKVPU0YmZjMpTfgRxSHNf7bJor97TQUm3IBqbsMGB6eE4LHGWR5xeQ9fU+DM8aPYqqYbwI6fPIp0Vo8n/0tJAk40QTj42wmboghxGo4KQv4bMpTHY94ovp8mCYxYXC2C7ZBMRffAs7jkDSKs2VqKpJuhKo585CNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QFYpfgD2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QFYpfgD2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8910C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751020193;
	bh=MK4lKPT+AkXiyGroN50eLXmalYTJ4citHL1E1YHgBx4=;
	h=To:Subject:From:Date:From;
	b=QFYpfgD248X0jpjlULFfHviGe7qY/CD1F/EENgAQsSqiYoE8hh/XchjdMKKe0QaR8
	 FRZ/WuORARSoSHpTfO/vJj/wU5ZEhsLVHeUZd8eSVKDGnKIURitTI2W6L4Jw/RXIpu
	 w3YpxSsXeLcTIRdtlpIfgbaZsn5LBpIN/j8gA/EcnLWl2F+8HLPLN2YP3CkhRsiZFr
	 jb0JCjk/z5/oJRboDSXt58SK/fiI5V9PqH9BZW2niVYcQCcmhAb3sJ5ZdrwJq1ADpu
	 8HPFj9ZbCdsSuO+IBlQmapXc51YAckhprZvOZQfiMCEJ5wo1O69Eew6OKDJ2f81WvO
	 yI/EYnLQcVT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95754C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102019360.6923.6556747950970477735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1783db90ad8763798f838f551fa6dbf9625d63d475ec51ad62b7c918cf9cbe
Date: Fri, 27 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751020193
