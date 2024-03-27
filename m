Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12A0F14F13F
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711571897; cv=none; b=rSp4YFNPY7HukOTRYgPfS050qUJQnPQVhYyUdVdmPkcWxYMcdTJ9iJlAXENe0HZ+FCZT6qMl/V0ryWZ+QTvsJBifupcyewf2riCi2JLMzewmSgFAnLu9GjKrZg1Sw21JYj9UgNSOfhWquHXvcFenybg4v+Z1DeYI91hhJQBk/o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711571897; c=relaxed/simple;
	bh=0jk7v1YMdKdCNZdOWuxhW9QEpnyjCn9NmFRmpZ4+zs0=;
	h=To:Subject:From:Message-Id:Date; b=t7FNBGONFrecoIRW5XzHhdWTC/cZecbTEijiprGrOrmQZjjuZnlPPKUB/Zg8CYNmgT58Q+z3i1X1ghq1bKbx35BjXSg/SzwhfWMz8xbQ022ltADq5q84dU8+ce54a/LuOWkpWfUOv9hoAA6h5ysNV7RDHpYWXv5BSjXNPbUFeI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H65zGBES; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H65zGBES"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7362EC433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711571896;
	bh=0jk7v1YMdKdCNZdOWuxhW9QEpnyjCn9NmFRmpZ4+zs0=;
	h=To:Subject:From:Date:From;
	b=H65zGBESeSZFG8ypfH/HKiuneMDZCifdbzabg4CBGkBdNiWyGKdNk5OfaNtHOkYre
	 7aZDBhEaben0T7I4gQP1GkpO3+EnAlq8kCBfZXtl93xhBmyw9Kr/ZQSDoDds0WzSmz
	 lp2moYOMrRu8ggiO/wbbkcgngcAe/QJ4w+6TePWV4w30XgIaBOdDYk2yFNN447alaM
	 k1Ag1sz7kcGv/9Kawt7Ta7WhNsMozvB9UaY5GMzUeDBNNdDR940+npvRRTOgRVh0x1
	 Pr2r2lLubh+F3VQ7q0gazhBbMrj6wHKsiD019xSVuSs6/g65jAz4wwUgiP11F+8u3w
	 g9gfjPYWwNC+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63539C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171157189639.22146.3025009030433584403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c390db4eb94b73e08762fff9610951871a9a96f527ea1a5048d6437ec990cd3
Date: Wed, 27 Mar 2024 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711571896
