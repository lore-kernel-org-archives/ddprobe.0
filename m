Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300338F40
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732675554; cv=none; b=Ji8BHmTB2s4DkaXSiSSJNEmRS3aK07ZmggI/bKWYFGI/CzkMsnt5yWYR0hdJ6/SachLkPslnHIDSX275uIZY808TLrjEpM3opAvly9SJpTYyYUIqgr8pQXWV/NydcKpYA5Iu2g32G5tI1eff9LYGrFLO7rIZ2ClJ41KrQ8eV3T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732675554; c=relaxed/simple;
	bh=fH2Te2TNjPCBVuIB/GK8hMQG3DBLtxgITHcFZXZBDOs=;
	h=To:Subject:From:Message-Id:Date; b=qNs3RzsyLQDuwZiIJuMqktrJ3STTaJe2XTIkL3K55B9IL1V9VvojWMrVJcZTc+xv7SsuUu52JzfiTQGs0jd1Y+To+YlrWEjkzs0RAjtZMFLmtKBJJ6ZItMiOz1YncZbUwH7R4Ron33uwQVjXy6MOII1EYDh19w/LeS4iVStasUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKsV3dD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKsV3dD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2623C4CECF
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732675553;
	bh=fH2Te2TNjPCBVuIB/GK8hMQG3DBLtxgITHcFZXZBDOs=;
	h=To:Subject:From:Date:From;
	b=pKsV3dD/nK8XGIP0kOE6347jHNzgFpOzFqQrH3TH+2n85NotQQY+3HRZ5vIiSZNlo
	 yyJ4tEC+czivWCSbcVB4LjyGeblWGiNebszfabRzdw/pl9hPgilESY+LFjQ4sEro2W
	 Ki/cqBzTAWCrgMs8YXY02JhaQGwiDEz9SIzC7quZghyrzrfZ/itCjlPGstHxZlukxW
	 TA3a5AZmWsPWakHObFNy5yc5ICrjSraaYUb2iPzvAUW4WdqLcHOeZHRQVL+2PFtpjI
	 7wJuOZb72/yd1hX7XpNtiwG1mI383MclKb6guslgT1qiWS2QLJ2r6JoNjeviV+BwRg
	 P0vmoRHcdjfQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F7D66BAA
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267555358.2693.4000022873077452451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639867a42bd3c11f5714e5741543a0dae60b8e3accb9f2fd3fc040b580d7ecc4
Date: Wed, 27 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732675553
