Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412003FCC
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781319994; cv=none; b=Q8wYjre2+pm5OY4UTj0W3RoGZEYlkamNa/CmG35El/QM1e/mW45Mll9+ISP6490mPUdEtCyzvF3CuWbUbY9sBd840DAZPWpxNElWflyqqYN9Jd9GH7YDP2DXh4DQfPEEmhcCmXb6f8e2+don4hAp000NWAya8fYIXqs0u7TAUWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781319994; c=relaxed/simple;
	bh=s3EERMWYHScYMRzbTHEO8zAEniP3sY8mAr8bER9tDnw=;
	h=To:Subject:From:Message-Id:Date; b=p633E9EG5Vn69SFvMDlIeZiAMykUKafJROEvkgvubdXHED+jJjarAaDsjLui6CBl2qepNP26EzZ2+aZiEc+G3NYzTneEHQHfKNPM0zHKuvcO2UiDAwDMs7LKWqUGh8aa9FcD7tfyyXUun+C8hed/x2zxtysnLoFBCZKFa93mMbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIjp2kn+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIjp2kn+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C535EC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781319993;
	bh=s3EERMWYHScYMRzbTHEO8zAEniP3sY8mAr8bER9tDnw=;
	h=To:Subject:From:Date:From;
	b=NIjp2kn+b2ENwEZjXS6G6qBAL6Ta7onVO5Gye6QG3XTH/uGXK0amk5Z4qTl9D3u5z
	 fWSBXchHG427s4Mt6AE0Vf8PnaQsndchbo/ClYs4rsy2mR+3pbqzmSBaus79a8v2hJ
	 5yjM0l27Xro243n4BitIBWUbFzfnwNGjkr+iw7VDIRovdhjgg+sMm17wX2qaqrkGMR
	 jnsksAHxohfDgkk+lgvF3YVPLaQVYJHyhlf3DD31mJfBpvnPuHq6aPJVv7qgXoYRDH
	 k80p7DT2wcE6dQgIhOcXrSEZgjM+V/zYx3VIR2Hst6w1zQuFblD1jXunJflIrNdSC2
	 6wYPFFaaVSjtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA503CD98CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 03:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131999367.19159.185671974288469483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53f1368fd76f49e3f076f731190e3653ac553c79d6204bf77a2c7614dd2e4b3b
Date: Sat, 13 Jun 2026 03:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781319993
