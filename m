Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C91384FD2
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715641943; cv=none; b=WTQJ7FEDvNTbqm1+qnne/qZpydc8R4bUayseRFDIShluuoRE0WbnmKvI8qvLQHMBv2KkL/A9kYO/wJIm20aQxBTRGlruUA1J10cp1jFqMkwZe9xTEdj+ZU+GE/lDvfCphnW8efZyVnb9obagC7RUIn5iDaoFVIS7zkoVU5TixA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715641943; c=relaxed/simple;
	bh=DysYbHoGM2V8477w+G3pMexZ+39LDSLCrska61IClu4=;
	h=To:Subject:From:Message-Id:Date; b=aiFD58rsA0IaonXw/AKnmEF8o0aWaND43Ze9/n66Vhl0sCUpz1fN4VTaWbinW4oTa8StFgdQlgJt7eOeoIvD6raw2RGwofmCYnAwoHxaagvqzbHvZLBj4HjeAZFAubUHcERPUOR6IAsaMwbwi0jnH0XeVqZM76fL4ldNCr73iEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZgNKQy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZgNKQy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B00C113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715641942;
	bh=DysYbHoGM2V8477w+G3pMexZ+39LDSLCrska61IClu4=;
	h=To:Subject:From:Date:From;
	b=qZgNKQy46pTDotAjY5WMKTBw3JXyHzGhjNSTfYQO7WABNE8M88x3vCgMp203UpC+D
	 2eQ/F0Njqr+ClOM5hfFZ8uFRetWjHs9hSchHlEYBDQZEDgXYNo1V5DO/g3kW8YzYew
	 HTA0XHc/cmV4u425gqlB+DK69R/OdQLgfySAIWO7XQHJ1XoZrhoM3eTI6YSa+6693j
	 bGDoRyLLN5K/tgcX1hODu9FO39p+wzS8oCEJR4UzJLpZKfrEveZ1TgMSmj4bdetP7X
	 UPx7I8Y5B4QOQGXHTqJ2hDAARVaewOlfP+PruRg+SidnHIv0dlFfbUMw65zRKh/8ZE
	 B5uWLlFoAJ9pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA96AC25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564194276.24228.12090508920578548273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fd7375570454dadcc5b7208abddb48083c3114fcd96000e115f7c770bf46a4
Date: Mon, 13 May 2024 23:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715641942
