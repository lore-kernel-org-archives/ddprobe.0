Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093DD38E5D6
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777451254; cv=none; b=smMjG77B+G2+Mq71b8co++ZcN1dztJ5VZgADFHv7BZPzHHTeyviWPC/hNe1j63yFWjLc2acOUxebYnY5kxW4+OeLQvzXMtWwXJ4dduCi6ky0w4W5XL2TxUvgWvpZzFAIxI7VWy0Ht1hpELtuNLHcjgzi1FIG716Eq6+0Votl1PU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777451254; c=relaxed/simple;
	bh=f9HzuQa72PWJFxNRMVjXhmUcwvwcPry90ww5vLqnjFo=;
	h=To:Subject:From:Message-Id:Date; b=AqQyWq7WB00YYiMvz+z/2t/AXuBTBElsyjnbhKAl4i77P9W19bz+el5w0ATy+wAGw6/bBwWdab/jHD9thhViC1rjQjsH7zD+p8I2Ojlk3N5DC4G7XLsGsUcbdMKanu94GdYCi/3BHJkMaER/Zo1kdx4ADCTtLhxF5gPAAfWZ3do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KeDKw2QX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KeDKw2QX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B814AC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777451253;
	bh=f9HzuQa72PWJFxNRMVjXhmUcwvwcPry90ww5vLqnjFo=;
	h=To:Subject:From:Date:From;
	b=KeDKw2QXkEu8jVUtQuhj2ZFL5TL4/7iJq720epleDiRS/pqYRo1YEVjtPIrAKXwRh
	 T8T1HUcqq76efY0tMJk90MTWiNb8fQeijKg07TsT+IhuVFq4ZItRrsHwX77H1qh7W2
	 ThRa2ayIV6eYj4a8PdmhiF2lriStrdivREb3NvICWfAGVc12DiOsHaNVHzgfVgS6rk
	 urF+FNZ1zNIq1k/TpF/WA/1XpIbuiIShNJyj37mlQyDv4AX7RzItnR5fW0Ep/UtS/a
	 r3z4ZFeu5TkHfQ902ii01OgR1mw8MYiKs3jn66ou9npKkl9bMLb7tA3KfYJZkUTyxV
	 Ln84t9pga6liA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9932FF8864
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177745125368.32025.7553541032899650777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55043ba751fb5626b6e50405d460a17cd65e6d1ca4499140b25284890d0e6bd9
Date: Wed, 29 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777451253
