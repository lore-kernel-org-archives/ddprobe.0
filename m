Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE161314B8B
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766736233; cv=none; b=iA0F0nCcvlqkThq+sdMdbYoiJltiMDTKg30AFGisn74aFao4FedL4c58lXQ0LAguF5Pot8CBTtm+9wFEU+67Zv9orFEIPYh4GRxw2AFZyiAN6VzlRGnLxh8IOxJgLY8hcFd4V36/Hor7eYxjCKb2E9l98JgOZQV/Og4mP5aNc8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766736233; c=relaxed/simple;
	bh=vip17wI6s06M4fxmFg4l0dGSK2iR82yAY9pmbA07UCY=;
	h=To:Subject:From:Message-Id:Date; b=aCfhwCdY7tXBwRcWR4OuEd8fBkXt7m0wYiUZaqnBEazrlgTryrFxMlLTZlSLsSv0+I8KndwBwvakbdq4nFqtmhmlBZX0qfxfCUr8xVI8fVjm0hmElcQNxgruMnYFiEpzNzjP0Y3Bi6oMWB16mYbUYFeXU6X/pmhWnanp13zmWl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe7bwVtn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe7bwVtn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CF5C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766736233;
	bh=vip17wI6s06M4fxmFg4l0dGSK2iR82yAY9pmbA07UCY=;
	h=To:Subject:From:Date:From;
	b=pe7bwVtneeY5vvt6jW4INKrTVFK8jB43NYrM8+IRYGR2YkCYgfhMGSSlNRCg2dO7u
	 A7yA16KYJhFLzGs1SUrg1+aQ64kiBBAebAUJc5dSKUeQFC2iUusSUBq1zsR975MqJm
	 qIQqB+rkVO7HiIhIfYRkum8WD+hNha6GIsqwgo+2Ny/jCilGqX4wpONTU7SxzVuIOC
	 6cf6wTu+lv5EUN5IAFoOIjUVIwXXfvkox1lsQVBRIUHapWFzMayGpUt+dnoos1Frpy
	 Fbk3DUcAaUS4TTmPkMsLj8ZGxoTHVICWyeBsuLpX6RW+zV/FjK7HNAf7r08K200M2h
	 KmWCVcXZlKp4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E12BE8FDA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673623363.18496.4918550641029575664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c07430f18ad7297168a05f16b26f2c6d35338cebc1f62778ae5c84248eb4bd
Date: Fri, 26 Dec 2025 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766736233
