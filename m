Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDD425783C
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783999114; cv=none; b=VQI3KSyNtInKmxt/DYg/xF8UpS/PwwDtQuRHj/VQP9kqEInfbFWkMskp2Z2hg0KL15Fc8COkX7Rwe87cxV+Fn0o012uSRvhM0bDyOuBeg9bL7tWfYDnur3jVJa+6fNJpG54XOHfORpk+dbnyJjh7S+mPi6dCxz/IQhVGpHtZGoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783999114; c=relaxed/simple;
	bh=I4aLT89P7VAGXHkPpXfm4FPXxyOXvtFFOmBcU+q8iTQ=;
	h=To:Subject:From:Message-Id:Date; b=TFQEZp7J1DLWEMvSPeIraWd7bYcGytchMUxrSy68TxF75EB//LO6viTKFQvDYyqRd4p467il+TCnA9GmCuEX5cYc6lSm2g98MwTBs9L0hohtgD/dyjcL23NYSCUq2tyguNi+GwVfk09G6hfAOWW1NEyhPLjHkQwExOZ2vocGaow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKZoNNt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKZoNNt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D072FC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783999113;
	bh=I4aLT89P7VAGXHkPpXfm4FPXxyOXvtFFOmBcU+q8iTQ=;
	h=To:Subject:From:Date:From;
	b=cKZoNNt/NFa26YYC6fz+Vs5aEto3mte5zDy7MpGVefLKRmxw6UpKMSgSvGpuADzVh
	 lJ4v+3iktjY+WMDU0TwD92M0pxeSv5AVfKux24GxeBZaV9O9rA5h2tGTUcq1wnPVea
	 cuz+HKx0V2dB3R4dRzRL5koWMPcEAGPE6DfU+9dgRwG7/Dmez52s6zFcOC2Ic9w3dl
	 /Hll2SlAEGudKh2tSSyeBtsqZHWdyjmil7lT9zy5nOYUa+lUUA/n37vH2LuFP9QFNp
	 bCWv0jl1sdMwOF+4M2jAE3nNKwiYa8XravFSl0AkEY1eMBXBc1bYB2wKeXQ8//9fxC
	 CC08ZSFvPMKyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCDCC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178399911368.10609.6126942903042816607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6933968ff34ad6c500fad380eca16c52202010d3a92f1b16e2f91e4c0aaa36c7
Date: Tue, 14 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783999113
