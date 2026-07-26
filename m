Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5075EBE63
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785038434; cv=none; b=dtxMcEWYAxYGcZXhuFv5RPgtD7lZ3ikevk9WKpcKNQKq4Ni0osi/zPVr2O1MK81m7eMTjt69ohmtY8pdq+c3WWRolYZVLMZJKy8LmbexFwfJK1+HlD2PWKOaFXoF/Rny2wm9e2TUqQThsiPc33Ryk1+tX6Xn3CINFOkf7vXJQaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785038434; c=relaxed/simple;
	bh=pONBBpLJskOSPyQHw+VwdFkhnbj2dRcuwAJhOLP2Xz0=;
	h=To:Subject:From:Message-Id:Date; b=TNZU+qEDYw/1bC6JqGpRSz+h4l8fq/S+kDDXj2gWeVgyI43TPeJMZ/seof6Scuy0NSEBb3R8q6fJ+g8aZoX33Tj4zARG5fpGG/JFci9FDdKgjeEqXobzQavnNeHQz5UrePeMPY/sltB0us8CFwswgaDm9r2bR7e3eXmMkw0zZZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX7+Iyei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX7+Iyei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F68C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785038433;
	bh=pONBBpLJskOSPyQHw+VwdFkhnbj2dRcuwAJhOLP2Xz0=;
	h=To:Subject:From:Date:From;
	b=nX7+Iyeij9K9bG1Mhy3n825SprfIqYelWr6J20RWreTz0GeX473biW6A96qb8ehoV
	 sXrjpGgeqdW4HL2h4tjBhl8o26VUSdysfOY5gbm7DgPn4zOPoZYDMxts2wjdQMVFh6
	 X8nyobxKq5o8SpmFoldk14oer05kknswFKNff9i0AI8OrO4ooQOQc1Dhj/AG7vO1rf
	 Ci7xcdhiioIas7Lnzl7GDZb1A46EoHTtVn4yV1cf4lt3vgNIgLMXqtIAJlrriTfRYQ
	 yds0A+dbZeeFw7T9gu9gjLpXEKVeYC6940RzZceW0zJxSNfjCzcZTFk3TAxzYrlpVX
	 qMhss1B9sWyRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE79FC531FA
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503843368.22675.17007187916851221011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986bbf42b4a801fed48dd5031453df9629746ae147a54436e8837bf4e477ad55
Date: Sun, 26 Jul 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785038433
