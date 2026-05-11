Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4A61E9B3D
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778463634; cv=none; b=HlSbx8RIFhX9HHzYPh/HWiRx6HIb4OIrVd5HQung8y+Vbqipz8jxcDJl21RlaXO9H4+JIdz4dROHOAM0XDw00RFJHBCv8r3fztTcwydDMwJO5tvV7p4wTfAGa4J3LIDkL9kVc7yBR6KDXt3RsyeuwQNTgeZ+sDwTWbLq5zSU6qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778463634; c=relaxed/simple;
	bh=bhVEw9wHRD+1mKrkZ2DXZiDeUtYpagzpjyZpnpU6hnI=;
	h=To:Subject:From:Message-Id:Date; b=RZnHoDGbtQhm5IdahHbD8P3OiWSxdHu9z3fz6RAsKFyzOaongzrQYtITOHGN3OxaPg0LzM0i7rR/ItB+5DeJe09f09Fl1+xuhcJFubi9uG1suMQUJRvjEwmeTlFCc2R3ZoW0Y7F4utD3gBmPPI9MkloE30I4VlQ2zB8I3+4tKJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7ZMF1xV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7ZMF1xV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1891C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778463633;
	bh=bhVEw9wHRD+1mKrkZ2DXZiDeUtYpagzpjyZpnpU6hnI=;
	h=To:Subject:From:Date:From;
	b=H7ZMF1xV6wC05hrEh+x4I4EGRezEZCnPUbSHeY+iE2yH5pXlN/M8KOHDsIvfioIys
	 m2ZG1RAyXT0gf9dN6CyxKd9KXRz6PWWcFALR6v5qBh2GSuzdqLdGgwVs8bUdqzj9DN
	 OcvqfVocnp+2tivgfEimJloFdHUFoJdN49RMPvGsiO3bOZsYrI20GF4tWdeUXl7dvK
	 9N1jyEjmwBDmd9x6yJLEHN1lmUDBitxcrD0+y+COu97kv7e1QReFQNe/kJ1hUrU/Eq
	 L+dbKPKRUvRL2BReMLS3bQou/iv+RHtFZH90A8sYBzjL/0okjmz/+eI8NL/dubatQq
	 RinFv1Lq5whBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCD6CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846363368.12217.14571660160915555849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f955f23984f4609630ade70cc52b27a6b9e5e7a46fca219217dc326ce30edcc9
Date: Mon, 11 May 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778463633
