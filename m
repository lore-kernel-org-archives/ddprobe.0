Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DE53101BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777044454; cv=none; b=S5OY+CUjNUwuZJvquCdZkIppijHjDHhNlTkAmj9rM3ElOygKeUpygc9w6ZHuzDoAHWRfBSyC8ejq2yxyd/AzI8OcnzOg5EHq2Y2F9TIWi2gALp6k77o+1xH6LOw4wXiwN6irI1btrRiiE0wkE0y5MIoikgwkj5z0WmLSbAS5BDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777044454; c=relaxed/simple;
	bh=AgYApypapqCyr3p0tHdZDF5opw1zNIRMyM9/hWH3x+c=;
	h=To:Subject:From:Message-Id:Date; b=ipK9bzutVO4M0hJuPcO93mAREfF5CiiLdOjcESIjOXzsYysLHLlQ5++vnycMT8510KvFevuoss7R3dhRBc26ax2CKAz9c3OA323l/6949p3fdtG+u6S36rTN7athe2sCHhljxCbHbBVfWq0V+2TD5mtkIf3xPktNqPrVCz78/44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mP2l9/2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mP2l9/2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA96FC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777044453;
	bh=AgYApypapqCyr3p0tHdZDF5opw1zNIRMyM9/hWH3x+c=;
	h=To:Subject:From:Date:From;
	b=mP2l9/2+75QWUXYzXf+caLvdp8aef7lX0GAEbNZEyU4eltqqY/eOpldm1ZpNkn8vs
	 pqdIuQAN7vfAFF1vLdhkpLqmVbjiVTiR0yOj+GhH99FJ+UwpeMuJkoItvIw6+xWDCD
	 toeY04NuUckzQ/L5QLywPQx5wIRUCrHDBnuCtJTg7zSs7/jZAovIm2w2qoGWb9mYGd
	 HQxxjMX8eV9FGHVCZ09OXJwzl2e2dWMlwjx1d7y0sryP6tAZeoVS6kuwbJPoXhHnsh
	 w4TATXPYWrgKjJLi8mSgHWLMkY6slIQIhyLWQk/mx97Uv11ta7eXu2Fj/0NSeHfTIm
	 Yjj5MWr62FleQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A5FED3E3
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704445368.18921.9418465435675826437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63d7356ae7f4208521e58bd338b81272a91b1f149e375c9e49646adef385842
Date: Fri, 24 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777044453
