Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C38A5823DD
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774415093; cv=none; b=ggFgCjGRUSo+b9cpiqE28u1BHFFOw46gD+bcB/iG4ltP5F77fOcuaQMgOKkmUXpGizV5ZWoRitCrRQHh7NopSZG5Jj1L9JmhRUT78/L8IUp2fUzFUeODmn5t27MIXuRdEF6C68iMK0+5OGimXKd62sTT5eTDzXdwDxP6IOu+6x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774415093; c=relaxed/simple;
	bh=EN86yIPfcdClJ2an/dOwxYOwtzmifOrnlkSNy/9YuYU=;
	h=To:Subject:From:Message-Id:Date; b=GiQ8nGMheRt54+HToHzMLz/AZShINY0T+tmepPJxOit6rbAoIwD93/DfpTto1K2D9FDOSvJ/2ggtLg0l1DzMWTfGzxgJxQS7zgpPt/ycuvh2J37u8o87qniynJE+m8C0yMvLCJ8yiTdM1IBSmq97tZWJUxTc5V1HO7OWoVzIjZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ham1R+bP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ham1R+bP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4064C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774415093;
	bh=EN86yIPfcdClJ2an/dOwxYOwtzmifOrnlkSNy/9YuYU=;
	h=To:Subject:From:Date:From;
	b=Ham1R+bPccTFa25P9hquh7DdyQyZMHBXaovv+kVWAq8/UkVUTgMXDtIrbDk43QkNG
	 3B8AQUMRRZFBI0T7jf4j1AHua0rT4NW0+uEYYoLDoQPk6qPJ9vxW/AFyeZIQvn6Bwn
	 mQl9tdx+3VRIcLKzsTqiAgON+1hX+W08W7GgDF4h3KJeO0H8iue5+g8kG5Wkbx2YO+
	 04gjIZ0a5okpygH2Z2wJULAvbh8BItkkotEBJjmMc8+sPGt/ntvv/6QIqVANKTiCL6
	 AGxzb0lS7Lllmj8848Lyrt8sZwlKSe1SphrB66tcd6NnX4LiuzAn0z/w9xL3rGI+sO
	 nI1dDycm2IAEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC2FEA803
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441509359.15354.7814072163755600504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017b1c2c0f5a2da492172256e7820383db9ece21608e9609bdc4d97af21188e6
Date: Wed, 25 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774415093
