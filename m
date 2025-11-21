Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2819A17D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763683314; cv=none; b=h/6QxXSk3QEMrEwWeKycztWREcf52MwHTRIpCm5tLr2niiGyKtr0MxbKjvWNkwD4HCd0iCNfKvURF+hKC3bPGPMqUFkqnopmZYKJNTH+uHJnIBtvyHbHcJ1AkehSK1M/6q7/U3OMH4zEhThWHjL2rifBJ1ECnk+hOQ6mdgzUlNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763683314; c=relaxed/simple;
	bh=RbU45cAZ/1KU9YzQJyEmLTl/wOqFs+WYV6dTCRHIDDo=;
	h=To:Subject:From:Message-Id:Date; b=W9frFk4tNsAfP7BP3Drzi9d+K7rl2SjSOFZucf8QxQyakyYsVHjWqF4YIjs/B24VyMNkEuQrZLLJaCvR92W1wLzJCBzneEiFN3Ihr6xy9ciAv/rZbBirpYN3x4jyyBLoj1h9Vy2uUSHxsk6crRMP5befu2uAiLuZoFgAoDRpXGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OreIMQY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OreIMQY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2C8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763683313;
	bh=RbU45cAZ/1KU9YzQJyEmLTl/wOqFs+WYV6dTCRHIDDo=;
	h=To:Subject:From:Date:From;
	b=OreIMQY/PHeYqZ0VkqJX9IoucMvrkH1gXpgNEoKh4C3ii5wKuYi18AbgB9o+wgjji
	 Zrttmltu20Kpvr9SJbEqDpyCZpBWYrDYPNgKvmzXQIDjabQUnfxwOy9elp/ebDW1B+
	 I0IfUCATEHBEQ1GF208dchSLdPtDLdckRMG6JuD6bbrsAgTDVKcHO74WEBnZqiQT6/
	 sd9Ehgt/qobv1yOWlvjI+EVv8ythlltTmXRAg9oSlKo9A2USpHOMeDavLWy8KsSwfe
	 JMNqlGXzpVljz5Opw1Zzck+vLpbUxNXlw6yNPwzXfohsW1zwgpHy1PFFZT2a4ELwPP
	 qKU4Ub8RbPKNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994ECCFA459
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 00:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368331359.1885.13211619597731666466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 362ee2a7074272dc958749610858707c6bb604196b81c425a0d9e31dce4aa689
Date: Fri, 21 Nov 2025 00:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763683313
