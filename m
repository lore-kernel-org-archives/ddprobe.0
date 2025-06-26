Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D9D211484
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750960194; cv=none; b=OB5+zF87rGkd6AMOj1vK8DoYMuJ8IjDH1KagE/wESmmJqH/PpFD1Es5i1IZLw2zl52j6zrfJ1Nhm/rrmeTXhl2Dp7SmA307bMhn+qElz1BrDAYyJXW/d9Eexx75RUzaaDczi2Uk8ytlwptInZmhXJFB7olu26Ao6K0PQdStidww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750960194; c=relaxed/simple;
	bh=zBSrDPqnitnIcIeJK5rl5srsxMHpgVE/gUuPfHd9Ick=;
	h=To:Subject:From:Message-Id:Date; b=pS1X56DBNKQZnPWmN/kzKbsEHy0VKcuBiHDZSMeOVtAaJkNDfApmpEVbiHpy/IGQagF8j0zM6GEAbhGIY8gaa4YCDmVJJvhGYehdvSad8KRlWIde4ATdDHh6BqTx4MKwGCGdFeqsG531tcOfq0pbih8zbjaJrOh7nrmrxhGYmDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b66Y3vcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b66Y3vcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EDEC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750960193;
	bh=zBSrDPqnitnIcIeJK5rl5srsxMHpgVE/gUuPfHd9Ick=;
	h=To:Subject:From:Date:From;
	b=b66Y3vcZWQwbXQHJ5PNM9JatfHsyz8U4ix/+1+AwmqbPFuPFJQfevnafNMtJEhSdR
	 zThtCkYzFcn1WtURgsvPf8pFdyi9uXfKVgdKf0KvviDr6koblB7fdmPKrumyKS6kLn
	 4zPqyEB7PNGt5uXtmuRbraYe+OF7WRQcZG2vCxqKoZSI/D70SmTl+U7dmt/vUWqbFv
	 ZLsbhI+PBDeKhz/MkdBwkI/vPQQaLXHAOksPb6QYQt+8vDwfLIjeYaNGM/eioF4SIE
	 90cBTMN73quKVW/Z9yZ1UTTQrkJ68yRtoxI5MPcEOx2pDyKd4MEbeKPEJGTZNqgk75
	 nJIchnp75BpPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95962C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096019360.1189.16783232268326146117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe415f26b94fbb1d510b055bba84d2107aed4a61919a60b6f08ffb8a34666798
Date: Thu, 26 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750960193
