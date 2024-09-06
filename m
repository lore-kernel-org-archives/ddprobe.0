Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225A61BCA0C
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725645954; cv=none; b=N8tGGTKxvPMkN3NPJoojA+y2/bFP3K06oeZXOyMx+1DgiMZ5ZSC3kWJ1MQEo1cpzSVciGrE1lW29bdnu6U340Ssc3nXvFxOOq/PrXn8pIgeId9Mlv27ttuL21xZPHKdk2uzZOUyK3+J+VZfqUmAE8SvYUIbQlorJVVGxVTZk484=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725645954; c=relaxed/simple;
	bh=91VLk+f4dfGIpwtOLLB1F7Ovlo6yh4mTNy6ZNX8wcCk=;
	h=To:Subject:From:Message-Id:Date; b=J816UmbYGkdIOzxUcwkqcX5gHb/fudfIKIsbholk95UXB+5eCBPjMOpK5qR8WtvqhUGysYV9m05d1+8GW+HwmT3IDouqNy9hHTUROAus4BqMgBT6BuSxHcFLwaflQdsh+wqyZ0QU2014k4bf/3q/ayY6BZ6GCuinzLq4+uvON1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skGfwsAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skGfwsAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B3EC4CEC4
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725645953;
	bh=91VLk+f4dfGIpwtOLLB1F7Ovlo6yh4mTNy6ZNX8wcCk=;
	h=To:Subject:From:Date:From;
	b=skGfwsAMTpBBL94BGi09g8XVTPfPTu/ry9bwdIEQOxEE9ltVgHVCfvX58+qtYcQtV
	 9C99YaBz0e5zPo8wvZ04bblhjfdJyW4MeTm6nT6jurpqE74XTog/VmmtCXCXEWsCBj
	 NSgcPh5YYqpxajXCW+TBKVjXK2fVjJ3dhcsUHgJmd5yloSSV6pOmA3wDZNKDcyeM2K
	 tVGvyGc6YF7c8GoJ/DSS4R52iKlmSOjrzjYvEIkv/ZgETFBBMP5mlgVSVUpwaeMNc3
	 sPMG5tLfeYLQdJ8s+p/rzgWP7u/M3TEELzX18h0rRZszF6iFT7GDyixsTJ/zhKjmSp
	 +DqhoeIJ9aP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9475DE6FE41
	for <ddprobe@lists.linux.dev>; Fri,  6 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172564595359.31079.783667789179367546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d131fca8765ac6a36a4717cef2b010fab5a4d8ed18f89b3daec9c850118d94dd
Date: Fri, 06 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725645953
