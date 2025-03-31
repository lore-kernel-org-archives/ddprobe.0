Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3492E1DDC07
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743438595; cv=none; b=t83uwJ8XC4gqxmQmCqaWMugHfmqbXMyJONFY2xVs+jV2OssKsRI8Ae+Hi0T4gVAfq6I5BqStvdvymNwJWD93ny9pkn/luf+oQnz/Jc0tIEGTP6UeCaZen+R3nYtjt9C65wvgGa7GxqXD+N2EnWKShLTys/IuAwP98h0FypoWgrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743438595; c=relaxed/simple;
	bh=xD8cXpro2RZMxW2at0lVvSeoQL+OJCTl4xeekSISPG0=;
	h=To:Subject:From:Message-Id:Date; b=NEZNiGIsgKUSaj63B6sebt6dGEN/he77t3RvkL0l7hS0DVSx3eqzIn1/I1ea46WQKQ+e/qlZzlAUxlXUCvL/KpSsX/C+P9SSC7Ud2qTWwANWo/zlN+I746CzyFHc5HppQdnpNSlt7Ghodndrrr5yoRKhjgI6lB/rESZHOMaCE2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGm0JEeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGm0JEeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F37C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743438593;
	bh=xD8cXpro2RZMxW2at0lVvSeoQL+OJCTl4xeekSISPG0=;
	h=To:Subject:From:Date:From;
	b=qGm0JEeHTdWaj33Di+qHIE2ocxbGmO0Yzh/UIBHoR/FaIDDp6ByqUn/hFjKHTXyQb
	 I1Qfz+FOWYqV1yLeVJYnNDSwa2MlVjeI9hg4TDR+xtYoPbywC0JeTSiU1uSFDM5OGO
	 7Ujzoh1ownAtnLCl1suCNkE/PerAoCx0LPjtUXd0gbFjlAzKrq57SBy4AHDdWqZt42
	 Yz5cjwXazUewlsntZBPj/g9kTm7WbVt0EMJrInfy4RVGG0qu7odqvQU6hvxPPwfpql
	 YhUsHezsm49nOraRRcXiP7gKMiAmsREHAUAjX1BC+ERf0VOi1XQXd+1qvusjxvAH3p
	 mAAH9lw9+tR2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF7CC36013
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343859362.29685.7558976391760842923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31e0e7d1f4b8230b512f495b8697fbc002ee428885bb595f8199cd3e9356e37
Date: Mon, 31 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743438593
