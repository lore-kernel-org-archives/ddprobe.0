Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C79322083
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783816114; cv=none; b=tW1BPV7WEPU1dw26uQ6p9dYCzxFHIUGRrQLwXh11IIPfhZnPfV0FqqV6gQ5OvImsA4vT7Yj3ESYyUZMpCFD+U59zUt7My/wW/xU8IXV+W43Nm9it6tzlboUC2wgDpvOOpfOeCXh5RwRrAUGXI5aaWbMqAZ+KW/m+KIiO6567Rjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783816114; c=relaxed/simple;
	bh=TiZ/iG2/HdGJnGfKuabkemOswte0ZUfQfrWI1uatYY8=;
	h=To:Subject:From:Message-Id:Date; b=DpQNgrJUU00B8y2+UOd5YU5qTdFC4Cxxz1Ms0e0IsMpMGXq7ADEb+us4jPpPW+yTi5L4KWaZ4oCl2qIax5ogSB7B8bNMGgrgKys6eSDILYPBGgLINgshLItYOVSv52o0YIbWCqJdP36ImtDgLt15eq2nWcVJw0+4WqGQ2Ebtzzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmD8GDUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmD8GDUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE77C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783816113;
	bh=TiZ/iG2/HdGJnGfKuabkemOswte0ZUfQfrWI1uatYY8=;
	h=To:Subject:From:Date:From;
	b=kmD8GDUZu6I+kU+ScJxqOcmmve8dlguRocTe7+3FXqXvbZs63xNAvKoZvELw/UDu4
	 n+PBlqmV+fI8iFeGYOAkuXtUtQiYvuoRuxNdU5choFvXvjLsQ3eurY7ZczGd1kB9Mj
	 IS+5uyyBtZw6Gc+LbfUJC39kX5AFij1bdb4zZV2rDEiRcOnkV29SkRBTrrOsqbdxSV
	 Zhfnsf6Y1qEFaQW9ix8o8D7Mc357WHDxMXFq+zydbw96VJFDsk/5kLzOpawla1WPEZ
	 hKeE6U6q73BLzHkSYVIUCu7jhsJxdZfgX/wwD45KCFXCaWWMK5r1t5i6TUWdH9gIK2
	 7n/MpNAn4KvsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA5AC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178381611368.12229.5506455261685638267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3660c34576c7518d269a35c1465e88e3d9fc399a62cf19ec567b47015ae6e2d4
Date: Sun, 12 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783816113
