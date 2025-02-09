Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443DA1E284C
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739136354; cv=none; b=nl2D+O6UvmLPPVfn4a4NNYnat8OMiphvuzrcA/tTRwA6VQxvjcwr48nra14Af6Op+G8/8TMF6T1iliQIm6dV0tl6mf3ovI4xUmn9QDtc8JyheA4mEkx4C5t1tXJjiUNG5OaEIwBcH17xTjo9laDwYa9uB4d4wVacHDKT1eQNho4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739136354; c=relaxed/simple;
	bh=0nvetYE3LbPv9Rx/2J96avxfdfVDttv49O1DF5hUHR4=;
	h=To:Subject:From:Message-Id:Date; b=IPoBVZn3cAdNVbD8cZ99pmWSZuZcweryrvvv608OUla9SSBfLkYyvNT0cBieJ+ZIGnDa7V5Ob5jgWhf8EfXbVmzYquzph3lAPe6HcG6/snVo7ZSdTG7JhFOYBq/L7uNaWv67jMLmWxKWW1aSllTZovvyAeTc/Z4cg/4a3G8S824=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttWkB4Rg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttWkB4Rg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A3FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739136353;
	bh=0nvetYE3LbPv9Rx/2J96avxfdfVDttv49O1DF5hUHR4=;
	h=To:Subject:From:Date:From;
	b=ttWkB4Rg7gOmzxDAaC8L563IOpSjyw8lpx93YEIkqkE6/II6htuF6wdQ19w5YULya
	 gw+lnFOTP3oO+BxXBLjys4Rp6cpBVsBip8baUrRdtZCzzqgNIUI5L0dA5lMYGty2RY
	 ojK9rveff42DBJ1JLN8vwaJT259LkjQntUOGtAji5o72zHocQ3Bmw/QYUo0cPU5GqR
	 LLe2Aro52vUqAYFzIQkr21FhgH1pprqGOZSTS2AKpvOKNZKJrycG6g6uIcVL50rzvg
	 2XSx8RHBjqOLCon83tfc7CEYVfKV1kseGQREku54Wxmw4crrz+6W5GV1Q3EAZlRwYO
	 LEx2Z1mqsxr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7AAC0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173913635363.5352.3521911061801822895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c5e3cdd6509854b5abccdc1049059353f7acba7afd56e720289836bd1280faa
Date: Sun, 09 Feb 2025 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739136353
