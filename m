Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB581A3029
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769573634; cv=none; b=kqFiR1ny9PZgozGxOZwHXnbdWMaGfMsvEiS/louR2gjVRLoLrJSM0qyWpqfjqnZAswMT/3gwRutxz4j1eTD4HU2uR/zjlbCisGmz6OXDjBga44okKOywaLhRZCG6tgyx5BV/xBiUDxwsTYA/ntAffdhh2Lmy7G/EUbdzY665Xn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769573634; c=relaxed/simple;
	bh=wlTetJzPozacLJZ1VMevqrw4n6Oxr4vXx7D20VP8IbA=;
	h=To:Subject:From:Message-Id:Date; b=h/IztbK7eKQAQWke11xFxbt9nEH/HF9JRrj5+Gy99ooXbF7ed4ncYzhKVCXrVxsbgStcJniBnSG4khhzCbZwp7OL+L7D/4ne/ou3NB9ZlY+T4cB8MigYZoDDgyUMq8aewC6lxIFrpGm28Ue44Yn2kt5X8QZHmVe7NqqemuxQxZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9x7SOXj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9x7SOXj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F40C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769573633;
	bh=wlTetJzPozacLJZ1VMevqrw4n6Oxr4vXx7D20VP8IbA=;
	h=To:Subject:From:Date:From;
	b=g9x7SOXj1nGsfHHjLFukP+XeuXNrh/033JG5polxfIudcPbbeJl/W7ZM8UOV0A1O6
	 vdPXrBZ7CXIiaqjFq/97Gejd7bNc7qP8cim/+MOrkq2kCXXuyuQoKLOfU03o982Swo
	 VkAaj3062orgAhW43EkWJs10ShKn1LmKCiuOdKEg0Zv9lKswEBbaulqc/waoc7lZHK
	 TLr60JZxnD6e/QDfpfG1XSQ6Vek9F7/I8CE3uKI4HQ/f1TG6vtX7q9oFU+ICR+Laur
	 sODoMVxpyPdWb2C4qC4cSR1EL/rcFZx4Wo0KfnCGKy8vhWK3H0KnbFUQbG1viaAfjS
	 Kj/pTBCYaQQSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ECED35670
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176957363357.7496.2264428569028366559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e90c63f711ec7a2397b6cad88cfa966e916b29c28b05d8b3bbd843ba3bbc442
Date: Wed, 28 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769573633
