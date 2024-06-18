Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483E812CDB5
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718722763; cv=none; b=TsBV0PbVXSRYsjdGgDd9/JZsSiZIPP4W6p+zeGNGWUWc0gvXIY757ApwMK2U4HGw+qDGrwOHKfj5MR98Il+Sz0+XwU3zm8KoQZaTn6kVx2TXoVirjnV0vByugG9h8eYTfqJij3Lxgky5I7xmpxIB/1g5JeVEbJmWemzYO9TQ72Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718722763; c=relaxed/simple;
	bh=8U1NK5wy5GtRZnd7XtXQdfC82YoymFdVip6AB5yOAEY=;
	h=To:Subject:From:Message-Id:Date; b=nc0klfDysvXks/ERaH60/8HID8PdH0H/suskCZqciYkYFon9ZvdYlVY7IYxhEvXZmZFeE+hVIOFEzQFPVTbmO23ncGODclul6cz7tVcl2zpozJOYvGy0GQtREIMhl83+oFKGnkdctJS+rg+hsnvMvkRlS0unOaPar+ghJqPWtgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9ZU/+LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9ZU/+LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D00F3C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718722762;
	bh=8U1NK5wy5GtRZnd7XtXQdfC82YoymFdVip6AB5yOAEY=;
	h=To:Subject:From:Date:From;
	b=d9ZU/+LGXEBTazR6f/tKaJknva6SVBr0dvVd6bDN/EHJrlXdXz0N2fzUhQtxakAV+
	 M62CBaWqFxN+AuKqhuD6JQB16alnqhpPKUqoPbbtU7DMg+jlRE1fnahjmMrfyLZ/+M
	 675yyc0UPUTTpxQRwXZ7280rcsB82PiPCBuUbyIPikBUpD82CQ6Pysl13XVhA/PUFM
	 LzAPdtp+E/G1Fr/zxzr2OteU34uPWPc8O/Zd9fhbzfvzJ0SEL7e3B9uYDeRXrHTED9
	 yYw5W0pyLjMHQ+XuVwCBuHg0sRrrO1yRY1ku/ku6oVobaCInUdz/uOoVJzS80CgMbM
	 1cbkXFIJu2UpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5A1C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872276276.16246.9808775207487527580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c553dba67596195c6c359a96557566deea262b1a5fa583982c77ddaa54db6fa
Date: Tue, 18 Jun 2024 14:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718722762
