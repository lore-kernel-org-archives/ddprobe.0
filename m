Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360EF84D29
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731264954; cv=none; b=tOtScBz0CXKdbWjgxVdoAETXS8kluhkVujuocOJD+QsqyHhCXGk2EOEoBaS7f5U4zhwfRfwdyA6eYQmumGpZSfRCCzvwcHCJ5kMOgosLGAF4TFurnV2YqBIXdq86RdMQduZlmxsDb6+Csq+LZXpUDzWO9y03aNNlXEQN8a/awQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731264954; c=relaxed/simple;
	bh=ViSGIQ9oPRwylvUltlAs/qfL2kzAQUfGGL0oZ86lVko=;
	h=To:Subject:From:Message-Id:Date; b=nLzk//4jpmuqmOABwKmIG1VyrREB4qoLb9jy303R0zVwbkzqaceKD5ibsZI8cLdO6S+e12ugRcVPiBVHDOXu8/TypnjTb9L75e2AWuQ20eAWblgOvLY949lWF79C8uHG/MuaGrtOunbrYOsfnjHSzHEfTa/VjhvpfiKHmt/ftkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti4OQHZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti4OQHZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A962AC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731264953;
	bh=ViSGIQ9oPRwylvUltlAs/qfL2kzAQUfGGL0oZ86lVko=;
	h=To:Subject:From:Date:From;
	b=Ti4OQHZEhAIz4dboTmnXp3kjRfCDrFs85k+x19wwqVp1EYWdDMsmpIjdYmAA9lGp5
	 RSWufwWkdn6MyfuyY9Ea8wOPp9JYlSbba7qZOFbWe7xanDbwdBClOYKJERTOfHR/1o
	 rdHqshVbiCB2fVaApwOSUyN9c8w9/jliCQJnYAc5CnYLOF541KPNuEinbi/wFH80nS
	 ZGjAwlveaOEiNKb6qb/CezCsI2WK7Ngr8Uy+XbQXNkMBMtXvrKQN4mat7MCNvDpbVL
	 BfHdmS4x57E5Fz+apwQrWfPVDYjSrTxCVOLV+SQkeRzY2MvBaix7+bQkNUMIjNW9j8
	 FljtxYGq3K9Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9888AD12D4B
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173126495358.13573.12582184928676109403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f48b3191126649043488fbbe973ae33ae22f340184db4230b5d614756764e61
Date: Sun, 10 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731264953
