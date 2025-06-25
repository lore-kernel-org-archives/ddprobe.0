Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFA1347B4
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750812594; cv=none; b=CqGt1wn7Eohe6QIif6wdvgn5JgJ0tuj0YptDLi1pJOSOAtpV/zXYyWqTqahUTCdbSLO9dZqOQIdbAc/tcLUpbrDrVITxTvPx+bN72QcIxGwKYRCP4x44MAfv6f15yIhImQQjEvfTCXmBlJe4q25lgfujytFL+YaTS15XeUDs14E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750812594; c=relaxed/simple;
	bh=5yR4tGaAfeRwblE9DsswFvQBmwyNhcsiHHnamZ2UJg4=;
	h=To:Subject:From:Message-Id:Date; b=mP7OxvvaOelFP6wfFeygMIwX95yIUPNUkC0aYpS6oNl2Wb7zJGOpBZsKMSGsqe2+KQfVssumoy7fkoYwP3mp9ChOSvZd4R3WJE2SoRW3W/LrHCQ+NeVWFEQQVmBGtGsgCXtl1ouWYFWdCV72d1lhqfZve3zl0ZXNKhB80BWG8EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=psC4mCR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psC4mCR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A85C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750812593;
	bh=5yR4tGaAfeRwblE9DsswFvQBmwyNhcsiHHnamZ2UJg4=;
	h=To:Subject:From:Date:From;
	b=psC4mCR7gq7hC/gk33PQc9i482/LkTZd8DAs/mhqszRa2v29iuoEjlz9UeBia5oiG
	 JavpIel3GJwTU1vi1OnXEPrAVWcnzY7rfGd7pcKPTuAWM6a/g/An13+yDjiL9wLm59
	 P5tmsCZVRrgc9j15QH3ui4vlmpzQSG++nwosrjmqg7KplpwsiDrdiFwdVPrt4xRubk
	 LS7BDta2Mv49CqvWzvXOBfbWlcyENepp68U19iL4kv2jggbFVeTRx5K28SCfs9XEwA
	 JDq9tat1VVx5hgJ/J8BgklE0NUcj8DuHVnmuZoQ3yrzCDS0x9u3uUMN5YPP44dLcue
	 4uTm0PAYonZsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91238C77B7F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081259358.20826.1061287404431608704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618b4b72e06b87ce730563e7108dff9e5db9e0461b69929e61ad77f01d4d2c19
Date: Wed, 25 Jun 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750812593
