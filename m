Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B443BA24F
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772736294; cv=none; b=IkNy0Auqo8vfxAm8Xz+lWVlOeAHzB4je+uE/ja8gnWBIs+G6NcuDSyllgABo/zs35g9jGF5W+9XFbpbXWsm2xJde6smm5LgpSv2zr8SxBWh6dICEZH6w+8DuI1BoGq+ikkgxp8c5Q+auGIknDUd36p1eOecJzJI+evdQ5rBotiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772736294; c=relaxed/simple;
	bh=BFgBdiXO/e8WPl+qVUYwKMQqJ7R925ljxVeFNkseuJs=;
	h=To:Subject:From:Message-Id:Date; b=CLd3YhzXKl2NjmPOKL0wOsBnHd7rFeHWv4hTZNZ3L5dQhzGwiOtuUkhYWEi3VcnvE+O9Q//sugWIqjPEUpoasAfkRyKW9lGaoA8h8llPC6vWioNhPrPmk5rc5ekdl9UNRlTFUSieCVfImntiiazFdnGEix54/Tf12tsagzgGHdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jSmpaNoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jSmpaNoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DE7C116C6
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772736293;
	bh=BFgBdiXO/e8WPl+qVUYwKMQqJ7R925ljxVeFNkseuJs=;
	h=To:Subject:From:Date:From;
	b=jSmpaNoc3dDnTVgE8i1Cvl7I7QYgu7eh9a6D9g6E7l6uZKTv+cygs/HKzc0Q5GJMj
	 KlmPQHiIFMlcG2bPVjs/aDTsUSoLgEJMnnhbA6solIJxGgVMCAv3VXg6Luwj7ZTvHT
	 AuhsMOKIoXZQkITc+Z3pM03LEkDhJqL6aVhMmwCm4KGNqyXODGipsQxCd8wEHz7EVy
	 k2xOrqowZLCyggQOt7iyDcpvC/tUYdBeooNgTzhFZi32lppgrSW9Kn187tguQ0Z7ko
	 jbU+SysLokeSIbDKEcPMsiZNKlfLOXmfe5NLdwNcY/khwubj6XnP05ZJmpeNbNE44e
	 gH+NBg0PZC9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84B3F47CB0
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177273629367.9760.12073701400250183075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f224dac7613a927734022fed5ecbb73e2072cd1bfe7def0fcbd50b5dc9163f8
Date: Thu, 05 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772736293
