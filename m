Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D78385D78
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783351114; cv=none; b=FziBlliB4hWAdOrwuC3jcBbBrpUdl9LHxbivl5+lWkC29GHT5WWsY3mtIyFb5BrjgLhSrLS/ajFwf0vgnc2dbKFT9fQMwaMLWvy6gFBCrMy5r81n6uU407tfSQNii+cs/V9IhCbTkaXUX7msYY9ZyQQlHHVmeTks9YENtEqzwDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783351114; c=relaxed/simple;
	bh=8PR/dPbFWwl8Y+3dlxePZ9H0Tp1ine4EObYaIurx9YU=;
	h=To:Subject:From:Message-Id:Date; b=RLQzVvQhkOcCND9OSBQ/NFCR4CvTLwUpNABM8OqcezePNnlf0OnrYMO9JYRAi1RiGV/Q/G5IcztvUw477YgN8L9S1SrXucfceYp7HIt7P8Kln/0L3mdw6t5N2Z18jYgmQxDMUeqtFWr2yuhDqar3HXA65f984q9MkJfdxBLtfmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxgtf4BI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxgtf4BI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C957DC2BCF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783351113;
	bh=8PR/dPbFWwl8Y+3dlxePZ9H0Tp1ine4EObYaIurx9YU=;
	h=To:Subject:From:Date:From;
	b=lxgtf4BIXbmxFvyX5RI3LJ3ISJH/FIhPIeuGYi4C29FWOOZEMaDO8cujn2ggWFtLr
	 LFjhzcrAdO9p9cH+4RgiV32IXsdaQO0i8i4Vz+aaOu9C2jUp0SCKKi2Wm0K+2g1kj1
	 LEOhkVkYfguYyNY9y808S+/TutRtbHkrrdZ2X7+qp1d+88+fVAr5FGH4kAoI+dp+R2
	 MuMV/d3PTZAPNM1VIOGNzVrHEZPdnZXjYEdRLQqYtqyuZ/bDNCnueaOrhvJLc/Kxxm
	 +4imMKdNO/guOTt6lTOuE5ikFb9+xHe4xnQ3hBHfEuFBWcPg+jtVf7Jf4dNuUoTGfS
	 uAH+wwDobhmEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A80C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335111368.30642.4969635650672048202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8771692bb4322757db78b8f64cbdc504c252b66c3ddca332e4d4d974555692a6
Date: Mon, 06 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783351113
