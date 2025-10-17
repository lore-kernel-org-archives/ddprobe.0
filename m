Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298F827FB1E
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760689194; cv=none; b=WYojGGKWjS2y5K3jnUAAlWfNmcOZME5weitWYxIgYP9ysAhXKJjbVAzDjFbnP2pPolwrovddLTD6YQBx7ouuJNfD9MDcxxAC/x1FzLaIPYsZZqZ3edmXofcCc0kW6DBK5LAe0mmva0BvGyp4qHzl5kdeXPbtNCW01gKoU4pCv48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760689194; c=relaxed/simple;
	bh=cRi8GaKan4tQd0yz8LxDzFPSmnIVNv0O9kgqO/0s9v4=;
	h=To:Subject:From:Message-Id:Date; b=GJ0OQFSk9yGKlIwtgVMumgl2z95oTydYltrrmHQhV6EN09LGySpiwrLbUYAJ7RxRd02XsH5Bck7w/1fvFjhkrPbAIPQ22ljTcYBIxfWqMcrbo4fCOXOIaEW41nrU0zWUMkXl2aCrah1VAWwJ0BlbzCAKTjK+FPC3bGPp/q3gnvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmZX+Kcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmZX+Kcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDCEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760689193;
	bh=cRi8GaKan4tQd0yz8LxDzFPSmnIVNv0O9kgqO/0s9v4=;
	h=To:Subject:From:Date:From;
	b=qmZX+Kcp4cH+RFr9QYBF/68zAu1RjPylnvmXjbdUxUAr/t45pQ4mArUYzbJK74D5Z
	 py5jW3NhW47UjM0ty+Niy0R1FTThWl9e3747NOOlC6TBvj/wDzl0YSLQXjhXT4aiCJ
	 HvZKcKqrMg99tC9+XsdZsdfLYrC/ZA/AHuJrjfFbfGhV+ciOavRbeSTT0FPUaQdZug
	 PIWEYPKd9Vm/JrJxG+9NzGA2AWMNtBsXaDySzH1qZDBiCdc8xwX5tK7gIMkdru0dzf
	 YnRDC/5gbaxK59gBkiV6w7g/MPCy5dBix0pixnhU31nj+n/c7Z8jqBx+BZlh+0DhhQ
	 j2e5GgwpgUunw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A105DCCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068919363.22885.10364195452536476143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04399d605daffe94f668de5c387f4c83cddbc45ab15159cda68f25775f5e92a8
Date: Fri, 17 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760689193
