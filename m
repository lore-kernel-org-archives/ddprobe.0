Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E7A1537C6
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743088194; cv=none; b=ZvEuUFrON7Fb/d9+edi6dX1Re4b6TJrQosPGrn3sZYtzAIJH1Ueywhjdrkb4u4sInDR5LTCyN3WbyQmrbAtS9hCXSDKgIi74zSsJbDZBbollG/E4vTPB3XTHS19dWtuP9E8GBOgOUcaciC3em8+8TrLuxu0NHYqE/Y/+EskOrjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743088194; c=relaxed/simple;
	bh=PkmGteCsNoyDAi8LTWKbuF7u5wTM3rt8MiKfvjTMC+g=;
	h=To:Subject:From:Message-Id:Date; b=OuePPJvzwWrtjyqiwt1CoPUQ1rhYHy6Yst94mKPFC3bKTyzHOKBYrb+W03nYNwgvM5OaYxFZddXl0WH/5hQtDeZ0CxtRSxyezqghBUzjamVkxtb7uWTQ8Cde33fDta8X5U9O7VUhvNOd0pBm20jutZd8e/hSdda0+NL3TvS26Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oz0cv1di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz0cv1di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B790EC4CEE8
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743088193;
	bh=PkmGteCsNoyDAi8LTWKbuF7u5wTM3rt8MiKfvjTMC+g=;
	h=To:Subject:From:Date:From;
	b=Oz0cv1di+xLSZFNsmlq3CanAaG9bKk7jinmcQNoGXx33RJIjGrVPKJ0XNNTWWd3Fh
	 byPEkDi2OoFJD6TiNDp+Eoslu+ffbm148ZYU7SgLvzJ28doZ3MmGBuXoRtyCf1H+a1
	 Cfsele5yXmI7xWCVnclM0DukAVIKMwMFf+6bqVABj6FI6PvGXLz2lJ0U/XsVhmMAEW
	 FFVbBeXMX28NHl1EiJNja+jDVx+tQuxtLGJ27RbCk9VPi4qP/ZVd2lAAf766/TzVus
	 nICSm9OftZ8n8oAXCAQUdcvL2a9smlVhE3YABwzgLAV/8/uXXLsctzGQ8vRnXkaFic
	 DSGPQZvkNW3tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1102C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308819363.25066.10222307555216448146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63dc9098aca40889ccd37d0936938268648d1ab3e2d5efdd52b068a36d2be2d0
Date: Thu, 27 Mar 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743088193
