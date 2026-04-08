Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2418237268B
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775685334; cv=none; b=RtPL+XhetGotRXN1wF0HKQb1ix3xncYN5ZGv9omzXxxjKqslIiBjgTPdMZYzkgJE3hvUL6tFa0jNHrRLp3N2Qy+lNMd8mqWwLKUZkwyxAQ7b4zIL3AUIKfIX/6mfi8qlY8AKZ9hCCfNzJ71ZrqZbTug82nmMgFOo67qjf66OZg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775685334; c=relaxed/simple;
	bh=RixE+jTUG7JB6dLuuLWu+XwU+oJ1m/4bcyOxYMrvwQI=;
	h=To:Subject:From:Message-Id:Date; b=OsTv7hqcF+EOueDGJEnfk5p9zW2sGFa16tph6R9qi7gc4aVTLBQJkV9ntaZrH77sJhD5o36rTQeyo7/UWbPjCpQanUJ3QMLjWgxoYPZuugYr2WsOA85puST2Mg0shMZtLiGGPtkXL46iXAOyAG3mCZ53Qgc7dk6DlC+GCIO7Gb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqexrrBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqexrrBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC6AC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775685333;
	bh=RixE+jTUG7JB6dLuuLWu+XwU+oJ1m/4bcyOxYMrvwQI=;
	h=To:Subject:From:Date:From;
	b=eqexrrBX8cUcqYDQOBuVd4t6l8hBD2sT/fu4xobVTIEiZVJQNuxngPReKesbb91vJ
	 3Dk4xqb8M87IV4OhhPvcyTPAmktc/fLkBVXb8y8wUdl6KUHUfgUz06SaAJHiGLqmGl
	 oFukgDj9QPP2AaaFRVpfptPObyDLY0Yzkm3SKWm4FflWXSMIgyqar1OiB8IFOucNcB
	 1zvAFDuF8iUE7IioqFx1M4KzQUT9luinJx1xq3QVrNT/AIgXz8rqQ1HLyjnLkOjpI1
	 R+IOLtYA7sQmXcNE0jW6PiZ8bKtVHIBrbp+m6nPIO7xE13MpG2BugP057Mna70GfXR
	 t4ey/yGMwnW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA4D10FC450
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 21:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568533369.26698.14082182431802232961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec4c5b1cf552d6119721265937f21478522928ab4517cee50c091ce88d545aa3
Date: Wed, 08 Apr 2026 21:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775685333
