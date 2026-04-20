Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13A0385523
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776672454; cv=none; b=KDavljwrVXoUpMkB2vN/VfntkrsPK34W7gxuKSwxpgN8QY9xBMUF4L2jOcNe63B5B3CjgryvBl6MUvCj3THLo+MunQZQ8MVUtIeTSVYgZqyLdmYdwEDos4/E9+ex8Thk5PbuC8DqJbAD7TGAW5tpgW6/G44nQv/9swm62zPdSz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776672454; c=relaxed/simple;
	bh=/B/rAYzn+0fMmX0pXoI/BYvADH8rw3XNf3qLKBcvNGE=;
	h=To:Subject:From:Message-Id:Date; b=a4z9yG+YQRWvATJr/FYUAZsl4AgWppkat77Zi45zPYp/IFhzT0pasKYo+e2QsqkzbVnjwPVySaz+krpsQpgLWXmZzuiVcDYurFErWIjN41QtK0iwUbxLx0AjAqJgfYxitNRSnxrxgu1CYIfwKOgr3pcDI+IHUE+p9MSYlt9Ia+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RE21hA32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RE21hA32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D6DC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776672453;
	bh=/B/rAYzn+0fMmX0pXoI/BYvADH8rw3XNf3qLKBcvNGE=;
	h=To:Subject:From:Date:From;
	b=RE21hA32cjCuiWL6zJQ8X8ZdpLv7wdo1EKTRL+GGIdOWObXch4F21IiEygsnDFtsC
	 VdZLIM9n5tY6wuS2EjSKvSQbqkqx71DjLJuV/7KaOFlD9QUesv0ERTYY2G69iklyY4
	 ie2BR2QDhfKfcHYTBEUXHWUaWGBdbzeUThGfaSV9tBKna5qECqeiuQJB6FgPZqogU8
	 pirfE8dX7j+BAsy1cA3WCx75JZjet1G6XOfEvDTXX1BlS88yr8F0laDx/6q8SCOJHv
	 D7+cQZGcX8r7/tCcSEOcV4V9nLhNBzZLhYv/JDbPTBbc+gImHfuI/omLG6zeTAauWj
	 MjN9EruyxKlNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD98DF36C51
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667245368.2059.478552744549654047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dda99514e7233a61daf9fe43639ed59dc0803b4dd2ffaad34c7098491fc5fbf
Date: Mon, 20 Apr 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776672453
