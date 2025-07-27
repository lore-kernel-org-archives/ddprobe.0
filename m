Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E621DED49
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753618194; cv=none; b=F80zAOQqs1KhNl8TSvSLmk75b5j4Z9jhGlOzwHxv+/HLrKB3YWoYQNAQX6lIbLBETUGFamkQUWop+9FthXWtVwTHa6doMl1YJ9zx0rZmekc4+jLgjCIIBsm22mH467MI9L0MBfKSndIWFFfsQVyovs9XEt5Pf+qUrochzrh7rv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753618194; c=relaxed/simple;
	bh=TUtgSKoMAK91ngTkz3oh+CRRFZDYylwwXQBlzI9BXWg=;
	h=To:Subject:From:Message-Id:Date; b=jJ00KFaW5EtTO5AG85N8Ypeo+tBvD/OnSu+1b/qtU3l/tFkPsFxlgZCSmw6eosK4SxyLxsHwBW8uJzoNXDDD4+L3GaZPhVp4O+SrHeI/qLNUdrS/ISk/JXIzaCVS/KS4cszcWtLEGsdVP24zH6abgGhwkY7/6HaBfjA+eUNyAN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TV4p7q5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TV4p7q5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FD0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753618193;
	bh=TUtgSKoMAK91ngTkz3oh+CRRFZDYylwwXQBlzI9BXWg=;
	h=To:Subject:From:Date:From;
	b=TV4p7q5i19bBJFZkgx5GiSx51DgyPs7fjaoTMKTZBVGZmci48A6+jvDY9WpLkCuLh
	 cfSfrIwdx1fpZJLh2LVHYfZwUvbc8fcEtdL5VRHk0wALSeB9FC9eacW1b2eCxsDMg7
	 R5xFY7QMagUahkjD5elBFzcO27Xd+YTQ451KCRDeuIokhRfQdFnA5WzXstHY2rDkiy
	 RHkogWHSuLfMo/gvHiorGw7V1EEjsAVou9/GA+wvynn817jctq861xJB9GbZbu+V3H
	 KyUVFzdZgrDT0f1YoW7NredR/7Hku2sFfnI25eFzH/mlzPLzpabHjKSpFphT06TsTY
	 HrUzHpLhknsnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5FCC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361819357.7147.1496265723855281495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fdb3cac21ee6f63bea828e9100ae750db93833a7924c373d50c2cdfff3fb077
Date: Sun, 27 Jul 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753618193
