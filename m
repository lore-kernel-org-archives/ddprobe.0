Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475A8379960
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787933434; cv=none; b=Gzha3I1/vbjlZXKedIeZ127IyzvD30lCbzSkA4ot1FZJDXbtY8GD2P5n/ZUk1OPlwdGGqPoUvnfqnZLridZS3ZvVATK1fEQVICRk+BXDqutWRSilLa5Jln+jfFFddy/oif4qLQ9L9mVHiIsiYs853QRnSBIBy6ieK0z/lSXoHM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787933434; c=relaxed/simple;
	bh=9rSLKZvXL5pnGl0t1JsvOIAUjoLVTRX01+8g5s+k4jQ=;
	h=To:Subject:From:Message-Id:Date; b=VMB75yruNWpnLssJ0eIxQVDnRLl09WDxCPbbVwUiL4zlmBR+XHfKSsMH+Gk/8XFOwwbGZkKFw7vzKy8YKhkSJkUJkrMN42PXmhyVVnP7cGcwoTMDJeYghXayjTuxr/uES2VBob5BgzxoQa+oyY4suf4y9E1otGFdUG0/uYKmWhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rms8t86n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rms8t86n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF642C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787933433;
	bh=9rSLKZvXL5pnGl0t1JsvOIAUjoLVTRX01+8g5s+k4jQ=;
	h=To:Subject:From:Date:From;
	b=Rms8t86nNDuaMwaZh31xgbuJqCSs7LQm78NWsvq4fTR5+PJnZkod5epB2wX+TMJPd
	 EWipEmumwF6j6mKBu1Zyl/NZOu219skyvAsINGF/NgLIeBPfJI2Dt+cVlyXhqyrVk7
	 nI50dnAHjWs57eNVrTOVhbyOYEdvYYR2XUCZhMGFRMYFWMeiyLzZr63sry8WYQGHom
	 MkG20j49t3AmbdLxlwEH+fM8xHowGIg0bMICXK7dulN0+DjtkT7vbJExRn8B3nZCZG
	 K/7A2osOKPRF2nBXIjS9rYf5jCNqSGuNxStH61iwojHsGerOgZXSC2KPkmOq+Uc/PR
	 xvO0EQ8a1Y4tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB5C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793343368.20011.16837194825153008491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c0e1434fc63ef6f8e3f5fca18310c446d3df5caa099f21c2bc5ed05ccba8c7a
Date: Fri, 28 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787933433
