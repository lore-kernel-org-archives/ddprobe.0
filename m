Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAF772612
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755008394; cv=none; b=e7BZIK1M5UqgK6M1IjGiY1HFYl/Zh1PpdTCaEvJKlPL4IR7NmCU7ODWUymfCNsfRiA+diU9u/xzxe8tKAFDEoRTXWoTO6xdgX1Pog208bd/W76kh/antxplh8vUANPGkVTDvJNWemCoxhvCQgPT03+tJ711kNBHSo7V3tYHdW24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755008394; c=relaxed/simple;
	bh=WoygrP7BfTybqXP6cZu/v7IGhW2YWoR7dgcZdWpeWpA=;
	h=To:Subject:From:Message-Id:Date; b=FdJIux/RuPUDb1DsrGvqODiSZu45kW+87z68TMXQrI093QNTE0ULQpU1oY2Y6vgWhEm0pvdUb+CaHYRmiT1tiNC3JkHpFQulbVf9tlCPQU7VVj6vSt/EvwuflBPXxbuOsIAUTwdFyEjjucmzAxgYeHkH6mJnb8nwcMfVTf2Mll0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Exhx2WCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Exhx2WCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A9BC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755008393;
	bh=WoygrP7BfTybqXP6cZu/v7IGhW2YWoR7dgcZdWpeWpA=;
	h=To:Subject:From:Date:From;
	b=Exhx2WCAd86IMi3srlCFyTmPyBfRCPHSAjTk4T7Y19n2UjK122L0H7iSh/aVe/yhb
	 4VP/kZmPSTOvIK4DMfnIT53FHe71dnKAkk6+biMHkkLx7YyF40MCm/OU1/4+qjzLo/
	 BjQ52pxtunzqV/ONBF4m2oPbM+LxIJ89FRNX2URZCk1xIIWotl8EPJ+/svHt49bB6E
	 gBJx5UUTCQRpv2FugIlmZQpUYJWJ+mnWMWHV3GRW/xffuBEcvsZnsoxZ8nCIQc2lNN
	 Qidzffhty8w5bntlN2joZUtqImzmwOtC/cmD/FJc/eqBIRp5qeyBXKbsPgIBLKlqku
	 2XEUB3y/MmJiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945B2CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500839358.29553.2502908111639182994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51dc896f3948bdfd59b77943b450b488c869d47d6fdeb11b161d541bfe63912f
Date: Tue, 12 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755008393
