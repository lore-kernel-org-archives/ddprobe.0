Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 710A1394496
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781874394; cv=none; b=fBoCZSvOi6JEp3JSc0rr3Gg68WsVFDnyulCWUNHZnslUeFefLKDi5Z3EiPOHmQMeR4/Ec6khS6NBkX+ZCBmO3PhHmfcEkLnLGPVpO3qDfNQHengbTb8fXxKva2OBpdrdXO8WmY0KMdoTASpit5hOZNY4SohHEZPxBfDgLT+dmYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781874394; c=relaxed/simple;
	bh=tHSDu0/nSWYPkyYqr+vcCLjuvyr3rIMQUhzq0N6HGSA=;
	h=To:Subject:From:Message-Id:Date; b=qEq1BsG38JEpr/rLc4xHL/OmUP6ElvDHFZO7/IPoZ5P5z7LkeN9jFE+n8g1sOnKh5jrctC5q7KIUF8boqgZ3Kko9m7ozz26upXywX+GLRCkA/p6cRS9iF2YfAbeGDnHNq8g6u25vrjT8NybV2vrB9KQB+JXlRYL4nmsM90EJFQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkviSDm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkviSDm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D975CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781874393;
	bh=tHSDu0/nSWYPkyYqr+vcCLjuvyr3rIMQUhzq0N6HGSA=;
	h=To:Subject:From:Date:From;
	b=kkviSDm0rJBBD33gUUPLG5+1GVkbn6sAMUjzg5B66FS9Z+vGfeO14ti74PTPzh0T7
	 TAXqHrpoPWiOLCbf97oi998og525Wqr5pfHKG9wbkb4FeCfpTb0Q+HcCdigxDypKnR
	 Tc5CtrLrVFfGSbqbOJ1MG2ba93IkELaCwI8a7I2lyIJIa4xLn0HZkDS/LcEOLx52Tm
	 YbY+R9//PC6ksk8cQrFd9aXlD1j1lMh/HcafYYV2ExwAiyhlf3/PBYXgPu7BpfGwJp
	 2x9x+DTrstmTyBfo57xQpNdgna9jaK1/9Jv3lqVvZXqDeq/xsXfnRHgP8ehBl8llUP
	 fes69aPOmp5tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D10CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187439374.24899.13815538546602572362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a516c5099ca9919a1e61d629cd3542faa2fe378e4958d10e1522ca95e631cb19
Date: Fri, 19 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781874393
