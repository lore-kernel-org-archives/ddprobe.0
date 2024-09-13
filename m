Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5831C14
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726248954; cv=none; b=AMuTbndW2QMy2T1fE2PpeFqzubHkg6iBQB459uvAxtXqbmXR2v/AcRbo6CK3yTzpNw+fyktnmkWs4abvNRrNND+ahqTwEpFqra/i5gzXVDH1wSzyUGxa+RIjqAQ9NHri4440g+hTw4crL1ARNhC77/x2LQzFDIOXAt4HrLk2ufc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726248954; c=relaxed/simple;
	bh=8tsxb6rWJ7Jdz5cCh1l1/T7YF/fWy1gczBfSAc2NyJg=;
	h=To:Subject:From:Message-Id:Date; b=Gstdg5KhjdgaVUALvdI9R7o7QfRUV9yJN/CrQoxcZp+/6PIqcmaKdaP8tchTiNXfbiIlQVpQzN6ob13e11DNBDBt/UVUuACW0OMIbqqhmbtIWgK2QuzlCrxcUS7P1Cp19at0wxZHoVmaoB0Tn/xlzq3A6x71LenUYEepvI1SI0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKg+CJdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKg+CJdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD8C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726248953;
	bh=8tsxb6rWJ7Jdz5cCh1l1/T7YF/fWy1gczBfSAc2NyJg=;
	h=To:Subject:From:Date:From;
	b=DKg+CJddEeNCnwufub/JIv6MBZHgH6pKnqTF0vM65aHhj/NNY5evtE4p0oDqUiupi
	 NGDr5NFDVOHCHezbfd0Nb6TdXQa0L4+/Gq8BAQlKiIp1XdEOQ/g46Xy1X3Lj2WiKFE
	 716rKDanmBrNkezy5o81+0nDjv3q2TJn7NiqS1JaD+jRhtaeZMV1Mwzw74s92UW6jp
	 k0qD5zltLyOLr/Ufu1mQPbW9gDQLUHcpNRKDycq7QT1dirqexpIqpQ3UPgDi/Wb443
	 y/6I5LHmLlTd5xvaG52Q4WtXrPwXCE6m1K75l80lRa4RdutY7pvky8e1xq4WB+W9+t
	 0ebFIhqkfttOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93450FC616A
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172624895359.1706.14073825107540777352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09d46a8c9d421ffb8d89468cae63620c04be48d88fa5b2b20d18b349482cda3
Date: Fri, 13 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726248953
