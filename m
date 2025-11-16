Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE3F23372C
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763286654; cv=none; b=G6N2kT7smZXqLN/QTdrqcS1ZRdVJP8o/2MxOF8TFinoCPxGyfUqCfosNNYLo7E6rS2D1RW5uDAonDBQnlREa1WizrhaPfgSR7RKVZR2mfRRgRn4RsRLgdYIra5CIzM0CbJQXLS8ChhfBK3awjP0AICuoYLW5iwDv5K/TYRGf+Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763286654; c=relaxed/simple;
	bh=ohfPlZIJnFK86N38toY9aP7kEkTyggvRYib5lkHiXvQ=;
	h=To:Subject:From:Message-Id:Date; b=IiQgUwIdqT2BdrxQ80BzDn5XTZHtD3yvQJwpd1sjZ1psa1tiIHDCf/xiCr82w8uAVjDmTu+xU2HW/O6rLMBHhPkuUTdov5BSf7/H0YGialyMyqDMLPET3anR9+JP7aZEeSehA9kVusZEohvd5GtkaedRnQ78x8GYQ8alypPJfHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtBbquwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtBbquwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A149EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763286653;
	bh=ohfPlZIJnFK86N38toY9aP7kEkTyggvRYib5lkHiXvQ=;
	h=To:Subject:From:Date:From;
	b=EtBbquwL+9hdpBKzFo7lybzowmFJ+CjsxR2+aRaDD0rZGd0REal4XErFecKuntJCG
	 X9C4YHlTS7PcXaE5Cx0vaCBieRP+Z305j04EXKU+Ul8k4kn2NG0/lufxom3fE6TLlz
	 WjcUJfAjS4/gWiGvN5ippEyaBT87PpZ25qw//j/FZD981OXFy//OkMqsxRYi4uihY6
	 s2o7OkdOOYwe3BORCZVsueRwwyIqgMhB5JycKe4O0nTBz/fPDxd+PSY8RSTQL/dArI
	 vpJAjVO++zob/NLVqr98lr/WubXbxYMXPd4NTn5UEO4EWXNs/sWVfBiWxnXXqeN+yF
	 yeiH7+g0rbstA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233BCEBF8A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176328665359.10849.6618212488244400646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55dd68aad9e31621bf4e5f91f7275b3f04fdadf9d8aefc055d3992f7cc2d0de9
Date: Sun, 16 Nov 2025 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763286653
