Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE8D3B7760
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776160054; cv=none; b=KQMA4Cq0UIvkAbol5CurDgM1aiGuWbeRtc6RVGrKb7IHovQKEmfvrlI+UN1tRi2IkQDwGoL9EdM9Ew6K7y1t5nPbI6Voja2NePtEgIOpqI3fRFX0hddjSwRl6qp1m0tChOFETY1PIl4Je0CEVjAsxMVhzvrmBwoKx58eTOfhEM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776160054; c=relaxed/simple;
	bh=fnYo+SVyeUjZSBsknoLscZthB41CWSPxxccBSmsEFO4=;
	h=To:Subject:From:Message-Id:Date; b=bqZFy3YA4N5nyLg6slBMMZZNmyLy2vZEOGZ+EyVaRuUMaas0MqzmaLxqKpw8drpMzNNQemoBUC0OgnfpeM0lnJRkyt9tKCkX4671swiYJEAJ8ZK8cQvGsss+klfAKMVcQ7X9X/jXOsBDeF9m42P+jukOe3xQP1ofiKG1UFvBNII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=om8qptzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="om8qptzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFD6C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776160053;
	bh=fnYo+SVyeUjZSBsknoLscZthB41CWSPxxccBSmsEFO4=;
	h=To:Subject:From:Date:From;
	b=om8qptzBAaJxGZN+fh8lgMp3uKDmejaCuNcLIfVSUKCaFDrRuSo+zU4opFut/QePI
	 iMryD0G3RgLjlr/2P6gk/AeHdyuspSjjdbVzICtut48HqnhdI0So2Ahiry9r9pLWwf
	 DOqgC06e/bpMtMTNJMoSeKJx5JHkTIbgk4cwPTMv4HMMo6jOPGgpRrxqPwAjZ/9Yg7
	 AHNuOQpUunQItZVErTTNgF/naOOUPSY1V4n0cs1zJWWTrajbRY8u0auDbgw7uf/a5R
	 T8yLu79hkxXXrRPTlQi4I0OzhOBM7QR9qG6djRudhmVjAdHPx+8EjjWxd3kZJLHSlM
	 Ck7ErXMQuYVqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF37ED7B95
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 09:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616005369.12994.16265751779630739611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0e6379795fdb25f790b0cce7b78465be5f47efd2e8e98a9f4f9576bdbb5ed14
Date: Tue, 14 Apr 2026 09:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776160053
