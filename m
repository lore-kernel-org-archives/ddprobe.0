Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA28823B8
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718798963; cv=none; b=k2LkgQtAqdvztexhZF6CwkI4eCkWdQorR2mdemY0F4cTcR6JdsNCvXK4OJjUjbXc5cbXQyGGlLCHSLiBvIdIhla+fU5IVTIYJ29+QpJvKeFJ5A2z5Ty44fMkTzkblmazN1Rtc65rPnpqENTvS6fPZmKe447MH7JFOZHQbP9ezD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718798963; c=relaxed/simple;
	bh=S2Zx+7aQ1PjpZx5QjqnbkP5KslgSPvnysbe68c13y2o=;
	h=To:Subject:From:Message-Id:Date; b=sTUyCkMvmDO9kI3fhWlXYZy73x1To9mGSba5/VYBSW+pskEf1CO5M8k9b6HabbvSxOvI540I5w2wm/THkd6yJ8nXjEvNA7tNq7P6+vIPa9P18SYrQtV+wexhyXaSNn7edixY6UUEKYKCkQ72JVCvfNaxriGgvoQlWPpPL4lpbOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0/K4/Hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0/K4/Hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1401C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718798962;
	bh=S2Zx+7aQ1PjpZx5QjqnbkP5KslgSPvnysbe68c13y2o=;
	h=To:Subject:From:Date:From;
	b=T0/K4/Hcd13cig5ywC6kgPQNq4DI+/3j3sSYuCM3XbTa+Ce3XxTnHdAhbzWBE/ows
	 toHVRvN+hVP2wJ3yIQIABva93Iu8QQlqJqOxFI4Ov/UUjFxVYqQPl620HxXaTENR1i
	 B4p7ypVA3MT9gTPecwr/YCsXs9Qhk8Y2zU0o72krNlMcwZA8I/8eaZMQuleIs5hC5/
	 6RleOUwcG+X95cQAjA/VgORNeFP0+Tdjp9ih3w70qu+Y7N0w6R3hI0A5UMypAf4QoF
	 odJp8qnDKWmGO746gyVxlHlRZtOdQZBTf8wBBo3Ea9j3CAxyNiROnnoZZHls7oIFcF
	 hpbPHH9MUEMyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B9DC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171879896277.2901.11275221087598984682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b655c66c08e3b53668d46fe695fdaa7c2a2d41f0b4d22c36d04e66557af24d5
Date: Wed, 19 Jun 2024 12:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718798962
