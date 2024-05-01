Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE534F898
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714578743; cv=none; b=HxmngsDarcQZUz0iT7T5r2CqqFW1rXA/MiLVTyvvLezuM74e7jNQvV2U8k1+Ml9dIgufojSrkKUkGEeSDjWQkIbjGCFhQUMmOwnUzyDZFlCXB+4Od9LACgSK5kKIr99VYKj/rwvUMxUHRgudBgHDNKQ8AxfroGsZso3g9VT73jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714578743; c=relaxed/simple;
	bh=6Kx/jTJpidOT97lDW9XqK/eLvbRr0nM65LY4Wt0hsYg=;
	h=To:Subject:From:Message-Id:Date; b=PW8TMJUknh0PtIiWM5Z/C+Z7ZrrFdtE/00lJjxDnZjAS5pUpaG+s8dkt/KBpo4OEGur4ZVIYEJvHNg00AygWODHwPOX6BKtC0vCxAwIBv/ljnn4alHebNUs0zHjrx1ybPN7ZuQMm5g01jZVxqNUguqf23xT5qA91wUh9UkjDPPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8ibN5JO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8ibN5JO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D052EC072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714578742;
	bh=6Kx/jTJpidOT97lDW9XqK/eLvbRr0nM65LY4Wt0hsYg=;
	h=To:Subject:From:Date:From;
	b=B8ibN5JOALQVefqP2Mynt5vG5DernVmWidERIH8xc9VK9QbB/nhJDcKG9gG9huv13
	 /Y3jKckQA6b1kP085AWDHombUJQI8YX/sY6298zObmdfgA+eqaG/AjoCruphVlnE+8
	 A8KZY3UV3JJfU54U2CefPk469NJWz+WnFjNK5nbA/9Tr8TtNyNgRVpWd3hUBTgcgZb
	 Xyn8gn7gjrgV1wEqH3xxe1AlyznKp07sgceIsgBsWlqK04H1R36ACAFp9i3rVrL3Gi
	 9h8DQ+2S05GVN3l8VLeungVykN5IS7hgeIxwYQMfHhkOdeJl3ja/i50iDz74+MGRxd
	 /zPSJvaKgpFqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC61CC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 15:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171457874276.4658.1909414985437109490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3980cccaaa026a79bdcc8ecff2d42c2363d15a797e09ea12fa66a5ac61597172
Date: Wed, 01 May 2024 15:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714578742
