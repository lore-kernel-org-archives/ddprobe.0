Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 070822FF649
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755131394; cv=none; b=FpQVWiSowRJ2vJOrNH2C5gw3ywal1pJE+2iUaT3j2nDr+V+pVvjTSP0QXnr2r+snP8zcD1SCIT++niVNm9YBNsZRdaC9ac7RyHiAsaGZ8mKVZkV6Ac+de7zq4Z3DrrN5zUWWzo/21mEx9PBtLc8qUfBnnzDTyVPwfFADHRZ37qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755131394; c=relaxed/simple;
	bh=oTutTehiVABFs4Na4vKK8j3VORiATh+Yg/UidVpgCIM=;
	h=To:Subject:From:Message-Id:Date; b=YXh+DJtfN9wPpAP0qDJtwDy5JTewrvzvmnR1xSojV2y2Gx4P+QDX/MHjRyJk1FekHc59PtqDRIE62VoxIb0BOiSltEsD+ohW0k0Z3b+/R7C9Ml/KqOEnen6L1kJ2s5fLhok27FOo4dFH+kTBmsSDa1YTWda+ZBgSPy45IezFoUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GCl7ALpq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GCl7ALpq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E256C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755131393;
	bh=oTutTehiVABFs4Na4vKK8j3VORiATh+Yg/UidVpgCIM=;
	h=To:Subject:From:Date:From;
	b=GCl7ALpq+9J9BiTX1K1L9XGsOss6wuDLOQ521nAGEEAN2XjuF9A1RhT80Eb4N0dXZ
	 CP8FMDFo69n2X0/GkZdbqjrWk1+xnfUOylOamEQzhg1J1n4L+9t6jeIEWqknYyt1i0
	 JIcsH63btyZBvBbaRU76SYrShbQ/xNvr/ifXtBueK3kbiNkOEye8dr58qVCydj39FA
	 CsoMrSfXUzaJeDfBj42WCIY2U6HxfyNmXHCvAN9iL5xLqAucGqfV/y/oKfEQGkHdVN
	 IXzQ4WERi7vM5kZJZ4uMnkq3YLMKUcb68F5ZyWrpocpJhVFKRjhN1JXfqxcAtFVj7B
	 c3etJoZC2E92Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7BCA0EE0
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175513139357.18507.1778030024711094555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82271105ea92bc25085b7c3982626193d85af5c43c2d5a8061fecc5f6590c79b
Date: Thu, 14 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755131393
