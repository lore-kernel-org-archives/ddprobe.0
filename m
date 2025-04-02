Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41074233D72
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743583195; cv=none; b=TnYbTEy0BKkTH/y8W7MwoWVX+tVtJnw6nOjHvsF3FUjmcC0qxhbPe2yGtwvGVKj+CQTls1pUSMDZP9a87BIluR4dZftFpqyPvoU0MDR5yMBRbnjdcJ7jYbXcOQI4DBPW0DpJv8jHSYvG0hsLAeVlb1rEWVa9xHYmBx6XXIrlmig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743583195; c=relaxed/simple;
	bh=rlqaO6FHN9Uy+6AQk+MmXiPPX6rXhv7CIwBqiRxuKfY=;
	h=To:Subject:From:Message-Id:Date; b=gi12kYampRFnEh4ctRQyoCNe/XvqsU9JQhZi/IMAZoRcR53cp1g9sIACaLG/jGHDGgRyNAdjZ9/48kpUduHZvJNKles8TjW/JuTHD1C7e2BgWTlpqOh/OhVV/qxeYm86+tRWcVdY7qf00P5uEWbqZtggKtwg4SERMFvtO90Afg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=alkiJxST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="alkiJxST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B405DC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743583193;
	bh=rlqaO6FHN9Uy+6AQk+MmXiPPX6rXhv7CIwBqiRxuKfY=;
	h=To:Subject:From:Date:From;
	b=alkiJxSTKTBOvD+MKztBR14KSoF+QOYVXUDG53a9XZuN3/h3fiX/tz3nQVIuPiEP9
	 g74ptlcve8SBJI5NOKuGhmzjAZDRfsEPIUooLAyYT7P+ooN108F6wCUmdzMNRX08BW
	 q4blWa+qHf6ZLU9N+Im/ECM12yc/aYFRW7ejEu3WC/IpjJK1Im4g5TxcRIETEH7n8x
	 OrQvVvBFaF07OuHHxnklfZLHAD8DhtIbm/wCn9NmhnwcYAEeLQY4avdgwbckfl/toy
	 4hCJPuBNJ7IHx0ciZ+12a7Mza+kxkNvnThfBQxFfTZDGODyCeA3w93ORE2GDsgNhtm
	 hrB/a88k95EUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE0CC36014
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358319362.3159.13286529983274217512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43bd009f549660623c6d10a2f712fb3baa3ba0dec0201aba705928c67f4bbb77
Date: Wed, 02 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743583193
