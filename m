Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7761D54D4
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728312954; cv=none; b=YY+apGzTpKdZHRdPoA6/R0cBHU4kB11t9CtV/tXdebxs8+vJlSxv3eXRU3YmCisp4j24gJZILzaNZFI4rQbyp3iN78F9+ZUOolyp4ORF6uZf8zJQvOdBmTS6+fbMnJLJXpUHqAzKRNJmovBiivvbpQmhdzS4IefgOHxaFg+dwjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728312954; c=relaxed/simple;
	bh=qvumNPHyg1mn4F7/+jplEKReA3njVEeVwb8glhlpoqM=;
	h=To:Subject:From:Message-Id:Date; b=ceH/Dc0ZIbAo+Q1rEjuLCHYgsLpkCvBjTChlJlxOHfgdSOQvWe8OgfgnFDm2vEyRryzo8lNkic8tAeKRB5EYScuFEuYhRG41lN5eAT9Lv1Vh2ADZnOQeP2blsesAI16HIyv2lwiqQypiTe4pFkCyWXKzh5KJukyxsgO/i74BfiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euAwVWrf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euAwVWrf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7A5C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728312953;
	bh=qvumNPHyg1mn4F7/+jplEKReA3njVEeVwb8glhlpoqM=;
	h=To:Subject:From:Date:From;
	b=euAwVWrfXfMdKvSGK5EUrpb+GW2PswNieySN5/b7s1uZOVimdYvdM5m9kFOLrZwd/
	 tUESPlEFMzNuxpCzKF+fctsLpOiZz1JWWvELtcHT6pXQLogw2o4LxXOpEJbByIlxWj
	 EnDI2Ttkt6my09f+MRIRdhs/oTpl/8T31lAXJDTmCR0JEdCFv1LXANSQgXwZWIC3OW
	 fZKLdVRgUK/CnCeEZ58ji89YNQwtvpbZOFpYjCgnbV3hqHHgsaYFISaQNc7UHJtYeP
	 4M+/pBbe+ix8r8DyaQ8JZups+p6yioM3phgeyKsF9Z7IO1IlLW4mK/V/Ox3ltL+y8k
	 0iRigBsuv04JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9154BCFB443
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172831295358.21746.14325372401701337909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38c02fdf5cbd654fe0522e55e029bee77fd48efbe073901c6339ae9230ce6727
Date: Mon, 07 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728312953
