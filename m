Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B771BDA97
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737451554; cv=none; b=l5nfZFm99RQvTU1LHaKEjMixD3E0SEo+7HW2yG43N/S6q4hsVWQTS0SmFiwpFKimhceMzZvg87vaSdeY8gEP4RM2XIQ+n85q4p/JSOk14XmNCjadHEInUBLb1jyu+UaEuGEm8MderzhBvzLL51F8qAs9/1ARscS/njhmFAOGDxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737451554; c=relaxed/simple;
	bh=ffmkyYEDo84FfWcfmHUHkg1QDhVixCbDMjfZzNbRWd4=;
	h=To:Subject:From:Message-Id:Date; b=Cj+EWbhbnn0B4ckjBKp1mkMiRCWgBiTINFlj1bl0xOTCTHmfoqdHMPWc5UnxsfGuu2JmzbDSQCbQeEiNxCfLzwT9TNqq0DTuUfdzcJwQrFtUbIQsbNQaRzGIdFdtkYtXq8gJhfKXtccTQc2OfpiVzXJuyGHaQVk5SyYR4UR6/pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFmwck9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFmwck9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5363C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737451553;
	bh=ffmkyYEDo84FfWcfmHUHkg1QDhVixCbDMjfZzNbRWd4=;
	h=To:Subject:From:Date:From;
	b=dFmwck9hXbmmIhWlJ6zpv3MrucX3qyEmQXA028LA5RVcHTKeE+FI5tCPZjYJdVdGF
	 FAO2U5jU/+psadM1IdOLE1+6rxWxyKuqs+HO1j4Y95shvZKc5gEkEfFbMacGscfeao
	 KrrQ6AZjkHlQyXmlAQov/5cP6e2F89YWtl20ppjFNmI9+jNb5H9JN8Ir+3G8rXeNqM
	 Cp6H/axJ/A4M0GjWYCwQ1dH0Q9nsbJRvIkNmNCnwetoPF+NLNmWhdN1XURyBwuCYEj
	 TmAcVrC/3q4oTJwpw5B04+ayQnUPL9IH03Ok8+WkDpkw9qToKvzNvaTl1wEyzPP9wu
	 Uy+e6i153YuQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91895C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745155358.1102.1240851866240764905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09fc4eb85968609c2239315a0fc163379d2a90e0801fe4519f3ccf703cf9c4b7
Date: Tue, 21 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737451553
