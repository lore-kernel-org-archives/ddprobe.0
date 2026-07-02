Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312FA34D4C9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783035514; cv=none; b=VSwtiCfzODXsLBd5JElvj0umH83dUF42lPL8oqzlQlaz7Hy9rGzhflCb/tY0dXSnb4Lbxbt64iLzjaPGAbPPOo9ebmD2kmTXq6y0auoRKWzEEjY8b/zNV/h+VXM4JiH6+MewsW34aVTlemn3qoKap7st+rhdbxMUtNRuv/XC1JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783035514; c=relaxed/simple;
	bh=xoSgLjF2HnOw/qovmbf5JSLm6b2s5G695Xdi9/2E64k=;
	h=To:Subject:From:Message-Id:Date; b=NZWaRlGbcrrMM2m9bZ2ABOaTvLfREKsO7jOKOm8OiSEB4p5vduoYhnx+n6vMYx5u7sEKWyaY3HWnG6OTCvLHFRlNxkkGRViMebMfze0MmX9z4v/RvYaukrqktR4dJtSRsbVZ0jU40ZXz1fO85ko0ljKs8FQnuZ5Q0W9L2+lbEmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKBsGC3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKBsGC3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D55A5C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783035513;
	bh=xoSgLjF2HnOw/qovmbf5JSLm6b2s5G695Xdi9/2E64k=;
	h=To:Subject:From:Date:From;
	b=WKBsGC3WOa1fLvjNiYbNKi9SQVKgLvPm1ehnzVuFkRgJToqUHwIAlSXnW6V+83f0r
	 OiTtMHhqfxh6B4toDe5AYMMLFgWabc79QfEcZXX7aACnbpsGHPKJFI4ZtfsPjKFCag
	 yBOuRYLh1lSS2wXnj03KR8OI/AEdCYdTMqgjcd31B4URn7ITOLWu4GAAb2OvoHTirA
	 YGMtTRZvpjkWWbBYy+e54vG7siAj8Bu/w7Qda7el46ueTc6h0yGJtpzwClvYpMhJxA
	 3nZZdo63UwhHRYjDaQYWMNc8Rd2QFrK/WuHy4lkdhP0E/Gcmim0IMC9SwKRvFO1Cxk
	 J5kE0N8L0ntoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3EBC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178303551368.7942.6685175892036222763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f3bc5e6be057d19ad8d2c4465e55f9e396d61799fa9555976859178ab62d9b6
Date: Thu, 02 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783035513
