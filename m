Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33785ECF
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728758754; cv=none; b=Gi5N7b4bgLjrbK6WyevQQUByMrtPF9jCWQRWiG/iSN+zHQQ1iYKix/dfVyb0Wj9YExrEVt1RYZ5sQ+4am7np673cXJOnJnOKb93ZSlYWjVMIuL3VbTO235lXRTIZSNFnjphnFPSUPFMaxbB3OjoT8UZhnPUfQksZa3H81pI8OX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728758754; c=relaxed/simple;
	bh=sz3BaWFQPgobkiBmamZPJUVbPvfF5iJRFEBn8p4OiUQ=;
	h=To:Subject:From:Message-Id:Date; b=SKYck5DcfnoerA035n9dKxShhwDnhTTWYh0ljqUUP/hNm2ow3CQlMnNRl7dvSfDqGIBkTM8PK6tXMmglS1/dnh1pdIbL2EvzkbD1VxJW750FijeGcvZkH45HqwMPP7m9EWMA/z0rZshueEIukxUc0fPPpki4AFhVrUHEwpQoINM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbNy8veN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbNy8veN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28FEC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728758753;
	bh=sz3BaWFQPgobkiBmamZPJUVbPvfF5iJRFEBn8p4OiUQ=;
	h=To:Subject:From:Date:From;
	b=CbNy8veNcsgWyLceZxmMFoE/il7YS+2kMS4QHeD0KdeBzUcdDHRIsfQ20f5XjJhiW
	 uIGYg+P9T9og7uAn6VgKXzHDWfIzS8F3Aike7MFWH29rPI7XWTVw/jPzFSvgVl2Lbg
	 1nK0Pp7Ea76bWZanEMEBMDmVXg09iPlSE/+eKp9xMyNlkom/ax2yB39LQ2HArERpSO
	 evES2nflzExZ0xgDJJbn2W9IsZxIVwH765sPQacHCfj4WAvaKYHrdsQuLykAigimdy
	 /CgK3+QVHzFharToymwoscx7JZyAtz/fD5U39BUhMPQ7fr6P/Ke7V/ouISEfRuZvQB
	 WK+P+J47fpHww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAF0CF2567
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875875359.23245.5245942149229735231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d3ea1c2c95025ba80b77d02f6bfd4c9362e85a2b0f9983128f7b96b2c298c4
Date: Sat, 12 Oct 2024 18:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728758753
