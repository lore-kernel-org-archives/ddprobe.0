Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CD6266B6B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765548774; cv=none; b=eSzQDcTrxF4xI98zhx0902Bd1kH4Xm4IsbKWLn+PjmHpRQZE/H1Si6CQU0kPD4eYrb6REWDgO8of4ETmhfOLahB8FPft4u6UDpnsnEKbhcHmHnMgUM5OXJncypB4ikV7Z14CMgxaOAjNzZ8Lq7RtsxcKIQodML1zqkxoAVDj+g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765548774; c=relaxed/simple;
	bh=s/p08vz7bqzSxgz95iNnz8588eV0T0rTWt/KAhTLVaY=;
	h=To:Subject:From:Message-Id:Date; b=OTMPWQKszEq0IQYJGtVnOcLuPgBGFfx1F6dsZ/cos3T1tpkU2TTBQFqa04xySThYzhaPzMh7MDldWDW8s3bd9NfeRiGQUe2LKCdF1mqWNIexPBWk/IicWN2V6kYBqWVFMbVaLRl4UiWVCdRjdw8dd6ltKaVas5xt9gwQCL80ThE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DojoApZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DojoApZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F59C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765548773;
	bh=s/p08vz7bqzSxgz95iNnz8588eV0T0rTWt/KAhTLVaY=;
	h=To:Subject:From:Date:From;
	b=DojoApZUCVlvxFQL36iluBMK7LN6dV1IkW/sIPQr65vXWss4ol7BoWnZNRy77W1A7
	 QriW4QU9KJWpyOnO9QeYKO0LIyk0LinCJXmmTlmJXmLrv9o7OtP1xu2Xkg6ZVjmeCf
	 eqiKa8gyvqPbzweC4EZyGsJyibTDsEPVh5Xq8plT7WdcZTlalNtZ9zHOTjiZVGMtYp
	 PboCcDqvuCZZwG13PTgPdlUgsmQn0vZ10yxwtb21SonNfxSmrg6X1KSCE73Qj46BQf
	 iLXKJX73yxzO+9pr79dNFYNrOnbLogRi4XNxynjr427birGDjYbbKirMGjNJNDNJQU
	 yspiIdr4k4L3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968BDD4922D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 14:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554877358.29447.17091489017614876683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dded96eec9dbb3e2f28908e6e57921e494451c2659abe518edf22a12730c150
Date: Fri, 12 Dec 2025 14:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765548773
