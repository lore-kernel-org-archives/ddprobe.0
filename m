Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C711F95C
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762229394; cv=none; b=DW+Bo5ZVMWBNOd0jwxg20s9g6kj42u09sI6M9wuWBbr0h52YW06k10h/BXZPkSyHCEI6DdWXc85i9HOmRPy1GRfGNjXnD5xupOtwktVK7cXsXOKj/o9F9/Z09Pq6FDYwheXhTQN5dZfC8kyC/Vp96LViYbAc2rjA6gtVYO3V8bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762229394; c=relaxed/simple;
	bh=mhMGDd0T813d951fPvxou9v3gAS1H52WXbSftCzljuU=;
	h=To:Subject:From:Message-Id:Date; b=RHST+aIv/+Sm+sq1LN347QKo49llRPO18rkRKfmerw9pN69qTcRHFwceNB43VAABgtO+ghjYc7EvXhG4G5e9OcmfPIDJS9IPG3vLGg4COMSVIImfu94wFGXaFL6EkB6chMCBmjv/0i6vGMsk4wmrq85cZr82ZqMv1dqbNwUUaDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuUMp9cD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuUMp9cD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBEFC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762229393;
	bh=mhMGDd0T813d951fPvxou9v3gAS1H52WXbSftCzljuU=;
	h=To:Subject:From:Date:From;
	b=VuUMp9cDBOMh23KH7UnPi6V+og83NzNaX8FFqbBQ+y9+mvO9v/JBLGo+9ln/BXowb
	 iJXh3YxolY2ews5qpqpmwZK603Nvqy5/gvd6jelcRClWkeEZ/xIZslFLDDMofmjrix
	 qa0pr2en7hLs8kU/yvqB5nyzaIzIjNV0hqteTzsP/38295HC10aSSBP4UBrIzpNamb
	 J3ty/j/IHMVOO9FGy9e4Btxn0CSx1aZK2jbBTCVQER1UTYyqFqlhv4hLISwZSpFiAe
	 sNjpknLz3g2g3QTWmBNCmiuhkRPTyLqHCC+rua/9f6wADjZz6Cx0Yskg0kBXVCyEEI
	 pDiVgqvuMjAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F70CCFA00
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222939358.10491.1250256944475922645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec231ec371172c367435165e4f380c0c421f420ba483b84e38945c6675ed7611
Date: Tue, 04 Nov 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762229393
