Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA0218E1F
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 20:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735244754; cv=none; b=NaWZbUM2DCMHCORyq7t8m7gHxC0sxnxMSxSDcTqlNawQ0D1ayoF49v/fD5ZC/1ziQ+2nPYWXyWGRqxEvGjsHRTJEn5hhhtt6RmG0CVyDWDLhZrW7XuhaHyU588RJKqybpH7sRAc18kbm1XkuiTEwEJlhPBpV+mkZ9fKzTb0Uj1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735244754; c=relaxed/simple;
	bh=hl9BSACZufr5XAOuJGYOB4AwKRh0YDPzhFt4Q3UmW50=;
	h=To:Subject:From:Message-Id:Date; b=DPAittWzU0XeVKhmgfGaxtFp0MulycxdqigtWFru+pF3H0FMnauhWgDF0d3CK7P3A7O7U6R6aPSMoq5DDWWBoJuvzL54GKhH40aWDtYNCbxEvuXcj7BJpIypTHAAzrki02Mx5ktOGe8fCo3clLqKKvcwvXAi2H9F5GeZ99oymN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QccuiUu/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QccuiUu/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43C2C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735244753;
	bh=hl9BSACZufr5XAOuJGYOB4AwKRh0YDPzhFt4Q3UmW50=;
	h=To:Subject:From:Date:From;
	b=QccuiUu/i7rVZuoV96a3uYrRQShbS1u5uohDtweguDFfd3dmvxeAxNAWsJxt7BSa5
	 MfOjyEcSLgfvl5jWjD8Ls7/NSBcAtY0Ktc0rmeXJlgejsyiK13Wu4z5T+5aWd/K2AT
	 2uC7jB3lgFJBXIwufbp4dm7gAMRBGdNkYfKl51qsD7a0b52h4BXDToQtmw22T7qO8n
	 kxhcCigPJDPkCYdBGfpyhZMKbWGctuAFFv0UYRGnQ4dQJDOD5rBFZYqMZzBWMVB8Gd
	 0g2Tktrs9mPU3xEfNk7XeP0fwCiTZsAUJJtMgyiI+r7Jqh45tOk8wH7UL2TqqR5Ipm
	 2fIq6R+M4mlcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81E9E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173524475372.29298.5861352760754880555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 620ffd71ca1f18b033a921e2d4792c70edc5ec4aff7c139fae28102aa68b69ea
Date: Thu, 26 Dec 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735244753
