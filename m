Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3663C1DC9B3
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743487794; cv=none; b=Fspbs+NLNAIxjSJBhUlOFueZy8itVl3JgH5PGZ3z1Its5EvOK8YtW0C+B/OUxHW/cOtC/ONIf02Cr+2W7Je+NcZEHZeX5dyaI/s3NrKzbrlEgXCOlxJY/hLcKs0by8Dm2U88p6FhhqndeNpAs2zZtLrJ/xC4x8BsPd6whwaBfN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743487794; c=relaxed/simple;
	bh=DonLHgsx6TFqomq/8macFphFvBTV5WRi0HXoUUabc6g=;
	h=To:Subject:From:Message-Id:Date; b=tCxzcmGVBy6TCN7sZWrKyxuJhUP51WNBcUOwiCjhcQGejYYR7EuQGQ53P0GJhslwahlAvJpAfxaao9Vc+NsGE9w80NdLRW1GaSjl2L46WzZZidNrjDrrK4TSoVwwGrI1/q2GbnZ/vJLDMnoeA5RPVd0QPo4z8kzkixDVW/3nN+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbbMsrD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbbMsrD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2EC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743487793;
	bh=DonLHgsx6TFqomq/8macFphFvBTV5WRi0HXoUUabc6g=;
	h=To:Subject:From:Date:From;
	b=cbbMsrD5G29HbWubAs89U0gTvA5CNsj4OebIezCJk0TRCVS5S15BfS+zot3bZ4WNc
	 +zPPVC4ZZF4ZdTocvsMcWcC9jovwf81ouv37ml+RYKEwwDmqb7N3cNKtwmOzXJXRWM
	 pbZzEJxjTplfj3OPNk3/rfQvA7oj5X2uNLzBJHz85W9sNW4K0jqnlKlhN4pVH6meJa
	 PI8tH26nAQmWwPmNdxiQW+snO9qJZlVuRGQERa0EQnOr2Tj2te/QO2AboMtwwTXDKR
	 1DniKCpJiVkKNRB8lgWXZiqT9lRFJcTUGBUFQH7C85gexitmRw7bK82ivU93icEhko
	 dF6xkk+z50l8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C2AC36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348779359.12449.16275018744033558435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9360ee24cdac819dbcdc79b48e7affec08bec6538302492b0437e1f7ba6eadda
Date: Tue, 01 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743487793
