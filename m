Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D2303624C1
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777262254; cv=none; b=OLNITZj7k1TMrpwM6luJtOptGUhrJj902gA/mpBNVHq/STGxYO8wcDOQFCtDMsZZ9AkxRUsEwm8WAeEPNHrMZCH0Bt1CRv1pLbBmvqB0fJL0h7hOnfkPzYL0Sh1bjQMFlIq2qAJ3G/11PrMYe2OYz6tdDR+cRBk77MKiCIDbgfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777262254; c=relaxed/simple;
	bh=6+k59WFpECddGpfF0QmZ49+1dnu7o2x4Ee93O3B5C9k=;
	h=To:Subject:From:Message-Id:Date; b=BCERELVVQULlA5sqL8kgM4F7AxzK7Em8ESWkuJOn/XAXyIae3YIgab74ww/eh0hhB3x204RAJvt1Co1oUy+lPYSfKGLo10UumbbutxtYwLPej+Z5imY6HYUavioWx0xZf7EIPdwuJ3sds003oz4pBuKPn2eO1n6WNuUU3J6n/5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR3Zxf2q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR3Zxf2q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC683C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777262253;
	bh=6+k59WFpECddGpfF0QmZ49+1dnu7o2x4Ee93O3B5C9k=;
	h=To:Subject:From:Date:From;
	b=bR3Zxf2quP3fkoHO6f5EFKqRDxFZTtb3WLKuBPBCnPioeab/pgM0lFjgPLRnBnqtj
	 FDUPmElFZhaDqdC8yTzPKvqJS/uB/F1HHfuj/Hbfld563E+Vjisv2ZhMdnhKw9A1zA
	 zlhdKbj3qbpAtUZ4undHxIciwJMaflt0zVS3EBQlzi3+S2ileMBISGU2LYEGaLdGaW
	 PnMwzqLk6AkeA9QPrVi8K09PKfNhg4boqVXf/+Yt3u3jqGhZWReB5hKFpd6ea5hDFV
	 FfQ73XHIahxky1P/Pl+xJnr6zGc92Ae2vJmZ/SVmXaQ7RxiMwUc2YndldiMLGdj2oB
	 aJCrmXq7tfw1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B94FF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177726225368.2106.2040258210462391218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2364221b4ba69d7ba0ae71f261c8da6b6d806f5b3bd03ebc1b5e8bb8eff3b3fc
Date: Mon, 27 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777262253
