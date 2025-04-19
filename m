Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E4E2905
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745035794; cv=none; b=JmGbHxccSIm24HuxIHO5SAx7dRkOQSEVWN/ygxpN7vSCraEkPYbY2pTMc16+BD6F8gpFE3BShqGVr7qLlH7WeXlkqQdbXmkxdZ9B+ISFzKZ5cwTtgsPibMIxnfLp/pL/z6XpxOp0IFlFopvPrXu7ojl8C8w6SX829wJPQVJTZmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745035794; c=relaxed/simple;
	bh=dtxfOMwmb9MX0nc4Ti9lXr354FHJuAF4EGK+f0QMgcY=;
	h=To:Subject:From:Message-Id:Date; b=uhTf89DmhLuwZ0DMkJrZLeqiI7ukCe/v/xXscL+/OC0VlkB8e6hIxwXEkZmkj+jHcPAifkfXnnGZDohrbI+6kpyZfScxzDEnQ/Ht5drxFkaE7J69Ms1QtdEm6kLSiiYaOzRM/R+dz60mQzxIFZljjCglZ/wBzJbHoXgF+eeMFx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sVjNpicK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sVjNpicK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C809FC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745035793;
	bh=dtxfOMwmb9MX0nc4Ti9lXr354FHJuAF4EGK+f0QMgcY=;
	h=To:Subject:From:Date:From;
	b=sVjNpicK/CxKWnQLslWQim7i1mqq/Iewjn8MG/xZeV0CVbIc/adPHY5RxE9gQ872l
	 IIrB1fAAv7+VwIHzW3tHs4ile5R/BHzhynHLGIfpsHe8iXuqt8W9nSksh4lpQ5W1jS
	 WZShnPt71MDWEU040HMgE2hQ5KqA++MiGXW7X1B4tv4tucZg7uDaLaBteiq5GjyRYk
	 5iLp12tQIVQvr9/d4NPMq0YzkpF14mYrBW9O23TOBUVm+HIHqHaDzEpvw0yj2Kl/9b
	 4VwYfgAYCa1jkttVSzdYdM1KTPAUw39nhiVyLgMUQKwGb7uU+KIHzXxxvXnPkq8HDY
	 rNH+XQwMgzWhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B5EC369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174503579362.23101.2781885267423540215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ce87088bffa0e5a35955105ba54785518b0ea6813b83828d7cd2286d01dd3c
Date: Sat, 19 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745035793
