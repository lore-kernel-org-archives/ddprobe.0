Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3405333A9EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770851694; cv=none; b=XsPfTbQTlV7F0Wzxk8V+hXqco3fSjRA5t+VR38TaviVaD1i7JrndvCL6pk/kSbzJPjdW/n8OVoRPfi4hbfUaAp6fGVyDBO7V1k0mBIwvPkICP1vkgXQssVqstVdNSbkkEuQ/rO4iUR9pdsETAfl6aM2ppQvcGqbX5gykcdkYLiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770851694; c=relaxed/simple;
	bh=Z2RHGnoMjmM4zZaiiSA2/HNGUXxPu5nrmAP7/bANN4M=;
	h=To:Subject:From:Message-Id:Date; b=AAbKXY8V9P09Hd7eY2FnQqQARGCpVWTI3Kb2h20txier2J/FwbKc0oy4RKFLELxvVy0G7vkBqRgduNvusyiTZNCzswZ1xLzwXNtSh8P+6OOYZeYUum0KYJwYT/a8hx9p8vJJxaDcgn+icI1TLpulD8oUJSHoFA+ZvUgaoJrPidw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdOrO9b8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdOrO9b8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD583C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770851693;
	bh=Z2RHGnoMjmM4zZaiiSA2/HNGUXxPu5nrmAP7/bANN4M=;
	h=To:Subject:From:Date:From;
	b=jdOrO9b8GPmP7Re5eYuS4nRwUC0wnTFEeg9WDQmfMUr9chJOcPv2KRgI5uKeH1D63
	 RiBTBMMcc8vMDJ/aiXm1/Rb7nkIUFGeiNTm0rD0RzUZAESLBmSQ00P81gTX1i6ctp1
	 et5KeZ1Rg1J6EOyK3MyLOnQnqW6+j7CbdFkyIr8R6aq7GX2NA2KXdDQvpgkUjtMe+R
	 oZf/DyFDPtNRKXD6dFaXrLSyeQy7z8GLs6at72sHF1kz7IdBmQYBF3fUyx2N/iIqnd
	 NM2rN0Jio6HdBuSmS9ySHKiGbkFlSamhdRY1wMXGt9ncucx29IrtH6llswLEM3+yvk
	 SOMCkEv3eHyvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9419CECD6D6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085169359.14397.8773195606302632785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5dadd4f45d4c9b8b306862fa29f39f1e02f02c2a9c9006c3f6f025479c0be01
Date: Wed, 11 Feb 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770851693
