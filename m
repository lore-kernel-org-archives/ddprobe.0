Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A30229A3EB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744729194; cv=none; b=eq0xd1R6/9/R9FkhIGux68FA1xlnqu91KdHun1IaTaB1U2XDmFjcwsVNQYxqDXhwJhDMMkAovYjpL3rBNsZhujfi95QmIfXE0w7xjV9HNn1gYI2qx8FDXfUKGwhBnzOfWJebyBIBIiEQ4VZJEBfRtX5bKaOxBf/mY+hCnzYJjP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744729194; c=relaxed/simple;
	bh=BHZ+lTFphYYEwQrtOUC59elRKhoW3stT2mg2f+2+Eas=;
	h=To:Subject:From:Message-Id:Date; b=taf2VYPLCHKK+odILClH1OSRbTy6TzIYxdz+ssBlfeDdazFExsIhIeNCVV/WSqGG6n0lhcqNGE6EE2sAO3a13InhNUEhboVt3L5py0U4jP4FDzN53QehI6L7te36iGfl2cbFwBrTIgj3ns81yIkw/F3+5FlS1NrTGAleYB35kl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sT84SjkB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sT84SjkB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA332C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744729193;
	bh=BHZ+lTFphYYEwQrtOUC59elRKhoW3stT2mg2f+2+Eas=;
	h=To:Subject:From:Date:From;
	b=sT84SjkBz6eEyl7vZ6Kl5L9VC+E40xwp0wz/biu5UyR0dR9vTyjqv03WZ1sKheQ+x
	 ycO9ZS1B8TdtFT+/WfWanTBDEw78esZ4hdZy5xtLIy4KhT7+HTkvL30LSKIb6fIRBj
	 1n4gzXxPfx/TSvNquQYeQVLLMGwmffz8gMskIfIOxaoL1fk9VGHZojqR5ZipkKXFdj
	 OKm1SED500CJiu2MxylV0Z3JAymEubl67iUwyWENrBWlmbNlCeSWj+2NcnauxQbc9p
	 T5hwfN8H/BDioV8iX8LV5fVvsc0CjaoVJaKlkckJRvbhlYAjygk1BcLaFScx4LX1tX
	 HWe9R6DxsYhKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955D2C369C2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472919360.32477.5125283920740456960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d25dae60c0e9e22c1b41c70f4e6ce10be5fbf58872c7ace5dbd985a5dd3e06e
Date: Tue, 15 Apr 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744729193
