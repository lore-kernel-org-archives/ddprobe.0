Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E2014A8B
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736663754; cv=none; b=f1w/q0dlWYelRFZEKB013lVPk6Pp0bSN6eEfNkq21/Q9NbSAn6cuQ6Zc8cw0PM6y5KjUOfZOYSuE3oZbtD64p+RECkEFvsiqdAxRAgbO8okOzstCydFTqao7wA01ep46n+BAkPEAYqwwo2AOdM4BFdP2SHEhat1xJ17tT3mA5RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736663754; c=relaxed/simple;
	bh=nA6ozJChadCs8dmi8Px5NQDjwHMIfklnwLKhccMZsjo=;
	h=To:Subject:From:Message-Id:Date; b=nJA4aLiPCJVqKs26LicCUy03S+5rrdfUMoF9toPQd9oESoggX9lPMhqZwaVPR8XF/pVR7ByIMI500sGeL5G6dfGQ0bpk/XP1C21WTJjDICWvaM5cO/D1p3fgGAG2yJLsOddAupek+H8fDv1EWsxvy93z09kp/57cNbuUEhZlV1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2dABoTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2dABoTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E80C4CEE0
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736663753;
	bh=nA6ozJChadCs8dmi8Px5NQDjwHMIfklnwLKhccMZsjo=;
	h=To:Subject:From:Date:From;
	b=F2dABoTCOVfCCk8EMsgQ6+/e8YtNcn56aeLMemMN7VUAh6GwFbOwN5Zhnf3xBkG1X
	 nj2UwXR2JsaDSl9IiQv50K8mj5/e37dT7v/SvZ8kdo06W4eUP3B6kwVxjm7zfsaka1
	 5GxbZ+u0Iddihjn4erzBurboc9qNaWvL0x0n7Ca6F1beBJJsicooDfH3MaC63w3A8k
	 KDaofokC/VzQIL3tXW8lBnNJrwi947s56kF0T92meR1Z1Nem2QU40S34Tmmua8KvKM
	 46g4/2NY5FHj/zu4IGW+Hq0L2t5eBGqPrFmI7NxQS7X1zqkWGXnJ5wLAUBN8x84wmU
	 fx16lUJTNEpxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915B2E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173666375357.32664.7323560069244962158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba86f3c5129bd61a36417d6665104cc498add5e4888596aa99fc3ebd9ce4564
Date: Sun, 12 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736663753
