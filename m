Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B899D25F7A6
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751283593; cv=none; b=NZoF69Hp+HXQX7nhibdLv5n/Lk9/MHSIpUpBhaSOA7QGOBXC89QNzMO39rf78B1WmIPFtnZxImSkVfUHiHD4trbE4v0WWHzW75X7/piP1CayceKCYR3whLMs+gPTyB1xoYJC3D0AgqWdybcq6jeUcAvsyrJoWe8ScJu8uX9f6ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751283593; c=relaxed/simple;
	bh=FGRluldO3+KFh1RcUuo9IEqzT0M77t4zWDZX7n8Sgm0=;
	h=To:Subject:From:Message-Id:Date; b=GFbxWEqwzvxJja8ygjDfcwf0KjVSsfJl66+WgFm879yPkn/nWSrYk9HjxeJzMnW9+dQf3uKE/Q8ohdCW1xy/lVXgGgxjKIjACw6vZripZeZwyIambepTm+NwaHqaZMb0FBXw3rUu5etWVDCYWGAu3sMKIzVoEYm9JeJidM9xZcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AKj17Tta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AKj17Tta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98437C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751283593;
	bh=FGRluldO3+KFh1RcUuo9IEqzT0M77t4zWDZX7n8Sgm0=;
	h=To:Subject:From:Date:From;
	b=AKj17TtaLZTYFb2OVYNO5ZqmDid45eusE9cGAHvhIiBWDYcWkMrHExrzoPmsbYRZ3
	 bl2PgDbcB/DX0PlIZgSDNTCl4QgDZ5KeVFrNx+qv5hn2Y1pvz3KYAIXGjN4tEgv6SI
	 ru756umLDncrL4gs6ofSNKyGkt9Rbfn7IowHw7CGgPYDhMSXNjQlV/dKVzJzPfklKM
	 5Zw5ku5r+7OQAPM++vkSS3grDlmMerW+ipi3toWjvrRRNr1ddnX9z1+kL9wzaZBsFM
	 2aOxcdj6yNy6tKffOTYZOgiN4erJiycTRVct4RDAFjOmcAtWGU72SSCN3mHMzg6x8Q
	 O3HsW6oXe8q8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A31C8302D
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128359358.13304.15617624376460856976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e12c3652d6dde98657d2c96566959ea3060f3d621f3acd6ef204d0e47e6e30e
Date: Mon, 30 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751283593
