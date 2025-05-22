Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431DB3010C
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747921194; cv=none; b=krIMwRv3UaW+TsHp/8vj2ZX0rBimEMYmQkjHI63CB8RvcfxHZBjHjixR1P7+5JpGohTOqQ2v0mT67CcSTQ0dtHjN3wAEBFF2UZgQp+JWWwK0780AHqWL1vlrEUi4loQpOWivnmhdkGAhfCiGSCvzMj3YIVQ+zH5lKoF124+uLDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747921194; c=relaxed/simple;
	bh=NQ/NftHURIyuJ65CM7RJXPTBqDdd52W3aKEvQVZxFlI=;
	h=To:Subject:From:Message-Id:Date; b=jjFfac1Em+R26YUNSnqYsb3qpIdXDD842oMHMHs+X6NzUx4ZuZxtD4i0ClUjbaTajxoS0w9wHjnnp+55NhpeTYbJTa/d7rTHwL3R9x2oP+DqK0Y+gM13FMcKHAjQ6+vx4s6VixCg+yiRrgqxzOxlXo+bMYldXiWrJiGs3o+OlI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4k/G11w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4k/G11w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08F0C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747921193;
	bh=NQ/NftHURIyuJ65CM7RJXPTBqDdd52W3aKEvQVZxFlI=;
	h=To:Subject:From:Date:From;
	b=q4k/G11wBH3anIp0vcjn1pRmWW24IyFEx90L5faw9D0wKV5dOX1ejZEqCXua1HlPA
	 9rBMqece0B2l0oaoS/cI0ZlBT78riNCW4cDXweOSJBykgB8iQTBdiC7l69fDTNQrcd
	 QfXOCB89+fpAewoZ9VrDbqE03s7OSlzOKKi9UspwQYtWBlTIKmGGwA/aEzlN3SwJY+
	 mP2uSZwlozsk9JrX0ausSMtaTjrCYUixIxGdj6u0i85TWct1qdshMQhl8GO0TriPOx
	 P4re8VUao+Cw4XfbRgwQskuHrwzTg0zE/zuHGNxt877X65zr/5L7gmeQ7xTVkIkwU8
	 Ziej45WmoID6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F549C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792119357.23033.7328610336717483945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04c7120eaa2d2ac4e1908097e20775d01388c3e1ae549089bb8886e6f9d098bd
Date: Thu, 22 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747921193
