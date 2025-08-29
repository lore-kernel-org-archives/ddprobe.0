Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC333148A2
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756469394; cv=none; b=Of1IzKaR51/P8QFxvAcgmf6D8MCtouP3Yjm/aoa8sX9cXWsKCRJl2E34rWq8tBRAsoIVuTgiBW2epRs9vrVfub9jmQg03DTw7KaEC/hbS7YC+/7sl/MWk9n0GTfRSVhvDwxTqlQyMynNhiIVJYI7+zPXL7Zl5QaZx4AyEXXnCFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756469394; c=relaxed/simple;
	bh=baSrUyltaYBtiOpLZ6ZxmgKCL1ysB1uXoXkI9TpgUVo=;
	h=To:Subject:From:Message-Id:Date; b=h41A0lxYR9cNHjm6dFKSjC9fGLrzYCJBhPDLjkOCgIrL9BR3cUCDemT+Yz+LyxmE6DpWLyGqhmWeL55VZxDwsKbnhvM17xps0Vcbw9hbnfTTqWyrGY8Wpf6Q+KoSQZ0N9r9Tc5qNH1F+Utr4mYArzGJUImAXl3l4jOOlvA6OrnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRoOxZPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRoOxZPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19E4C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756469393;
	bh=baSrUyltaYBtiOpLZ6ZxmgKCL1ysB1uXoXkI9TpgUVo=;
	h=To:Subject:From:Date:From;
	b=sRoOxZPWfEGHce0+Xe2cNshR1GVkIlmD3k7hyaJfhp74sNB/A6GT16b8ul1W/R2J8
	 U08+bVUiiyPz/w5HmLBTV/iKxFfuz2dpE0VNH/gBKBRMLK2hmYoJVpFLZR8g/7I1kT
	 prjgm6kwAcTBbH6Lw6N/GfZzgmcuexF7wbowUqNbYtZmEq8WFkLxtKdPqK4q8MVaq/
	 NimiaGUEOfBTlP7cGVkD4/1zzUdvz+fL41WTmMMDq03qPRaN+iuIBhUkcNF91FNC7d
	 nqnhbHWwYbSMhRz57FzG7Eos2HtgP6NX5TYh/htNoqAKI5Y4ebGh2IlBUGiwR9claF
	 7RMVmGNg6XRHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBFBCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646939358.6374.14214153432120947280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b459aab328f832aef2481d5129773a024e0cfca7bbf79bbd0c42a78f16e86d5
Date: Fri, 29 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756469393
