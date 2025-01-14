Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF9122961D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736851554; cv=none; b=i5MhmSL2foFAbI/QnDFltV3xAqR4o+YzzRaH2QMo+LSwaTKvtOYmiJJokVuCGbyq9GRI8BPZ14YnUi4iu6UYoZrvW9qXmkplGH970YIkUpLCEB+D+VkJ6O1g7TRC+fQsixQyPmatzIt7NIBhLsbq4cUC8e1tE0PXZcHT77fF+Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736851554; c=relaxed/simple;
	bh=Mxvq/l9nyuv4TAWORmcpEA5AVn5XfWb7bKNMniLQ4yg=;
	h=To:Subject:From:Message-Id:Date; b=GOYpPSGGlq0ACxIdnVR3GEM7AZnYdT++VUbEDQ8UA6esERLfxvcjl9O4xxbIaSx78yImk5K65NV6j5gqtPfPyxWYhFIsgeEktgIdf4jr34xosnBLR9bLSVC1dJMmfJR09i6P7yjRyRntNTAEH2VEd0fmxQrpxyJQen1xQw4Ro4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJg/Kg99; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJg/Kg99"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF0C4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736851553;
	bh=Mxvq/l9nyuv4TAWORmcpEA5AVn5XfWb7bKNMniLQ4yg=;
	h=To:Subject:From:Date:From;
	b=GJg/Kg99OPgvjJd8RHycnaRr3zfwc85gLikGEg/JCSlS8+3aHAYxUfgFuloRksEOb
	 dvQTv2MGi2zeEp3r2PE/kLv9fe/ZIR8rRheCLL+IM6T0GiIYfFomXPh0i2HC77kdVu
	 WoEVhcVd5sufFGiHYcqlKgJ+k62vrOR84vrfKzfkrcZ91DCx4bGh1nJf+Ldo50mn1r
	 s4LWanrkPv7ek4NRTR8+nOkEnfUlZDKYAe+jb4lkzh8xMbjiUR2aCtFqEvgiGhRKUK
	 Q9v/dv06HHhhwt597NUVCMzvr16l/3MxIHE5ig7nkpthTL6I3FDaDJZ3RNmQgl8pBM
	 vHbaS5YDrvd9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C0EE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685155358.15747.4216377128790046253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16964d98818bee95efb6cf0c62914e8a751037c548f6c77defe8142286a6e4ad
Date: Tue, 14 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736851553
