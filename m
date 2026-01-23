Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E67433C1B9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769153034; cv=none; b=NUrP9pFKxFvkpUTPqoel5J0DqvFR8pvhIbogWpN1yN1rpwDlfkRppnv+SBMbptwWo3V3L6VZAWMf17UChgke1brpktpGIMiiA0+nIZf5zalT39QAo9weLDS8sCjcQ53N9aqJkfE/Y5C+ZuhVxXGXdWVKewJunvwagN7k4HI+yj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769153034; c=relaxed/simple;
	bh=/Uo+efe5bkIiz9H/VqnIdbR4OFPXvvuqE687dB8koVs=;
	h=To:Subject:From:Message-Id:Date; b=be0T6d/pYdv7ayLw2KiXz31HKKv3ifywbNjq7ChJ1mdY3oCEPZk4JfBKrcOkqQr3igLeRoUKdFMAyk/CLl4rfxhZNP9cEeL1R8If0UxmadfpE/Cq8Yv6TwmkuX6uaevYtz5fextWhGPjqyz3n6TUw+Ic7FaAVSRlrXXtJSCtaU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L7gYUk5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L7gYUk5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD826C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769153033;
	bh=/Uo+efe5bkIiz9H/VqnIdbR4OFPXvvuqE687dB8koVs=;
	h=To:Subject:From:Date:From;
	b=L7gYUk5MMIrju7DbGRqXxGbC+sgxMbZNOth+b312ZtYqUDolUZX1G8b32etU/pzeS
	 NuFGn8iR3+1XrDSlLkHHgmRhvlE8sK0gyGh26hXVE6Ca9wWyWACeqC24Pc0bvR0yPq
	 pFPmN1X84rH7e8YnqadURcfCqwl4jBm79vsssxpr14ATqmUl3qSPZo/D/tRfUXNttp
	 G1J8IndiTkaAgNpkawu1PVOG7zwPYwFx3JZE2xdeku6alQPpgbIMUVGTYt00jlR26g
	 7UBgPYxRbETFic3bL5pciK4VLTJjLxOM8TW0eHFbOGc3N63HwisfmA1P5wzY2FGdzA
	 b41TR9KZEV4dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C890D72340
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176915303363.30193.14376052579324883380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d93232b6bff7dbaf13962ccbec7da0fbc46c606b49bb9856d7db6f2a9b1b5f6
Date: Fri, 23 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769153033
