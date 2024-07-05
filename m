Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1251487C0
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720181723; cv=none; b=nbL3wLCxFbLEkOMotX0RMLi2pPEzSpEu7YKSDiarzILDboH54RKD27ipzelMqg62AGw3vh3xQxAOf1b+He2uQhxpwT04JMfonxX6nWXhhD+mDtVorcrOKWW/XbrH8lksk6mNpQnSwt6MkSdeSZgOY/nNAoa/HrqhoIjmsvAYDtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720181723; c=relaxed/simple;
	bh=V5nhNy7awlSRahzCae8shDbGN5wTQmwiS4tj8geLZTE=;
	h=To:Subject:From:Message-Id:Date; b=mnG9CE8QZqOKfpHhtdC4fv7h3lAR3u6fZTEGXYU7fgy54U8gz451uI7AEJbUMwu8ZvlfdA1OKY6IqlmXug9JQQ6TIH3w2cWmHI8x6Br/5L0tyKMargyMnrN0s4WHXM8Vj/PdCbzgDS9mALZh+x9Exao5FRd1r947pYlifxuPh7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B7nZXCPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B7nZXCPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EA80C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720181723;
	bh=V5nhNy7awlSRahzCae8shDbGN5wTQmwiS4tj8geLZTE=;
	h=To:Subject:From:Date:From;
	b=B7nZXCPTnK93ppb2N3cXfX2jBJiazktZiUnD2f+QMU/3FdNusvMXu60YzCUU3bSYx
	 FAnsWgA2QERkVv50M7lU527u+qu21RSxF/kxF9GsdVAdNZ8LtMxMt4H85ZM1HLq98M
	 wHlpGVKrsD8QKxvlgOAI8vpEg0ARJSXBBC8JX7mNYJeZl+JtedOzuZnOqPzFkuM4xD
	 /ctfIN57bG6QaGNVRl8Kk1rOCK6XzFO85Gjdg8Ia8Cz8RZ5+SoleaGeQZtJ+xod16y
	 5jv/20yFyaC9rA6rBpzhYTKjsAMji4LH9z3bXs4Y2C4cTjwNUkXLWKG/KKJMq2DZ66
	 TmS9cjG9VuVAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEDA7C3271E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 12:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172018172289.10469.11129806857916523810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c842911601d51dd387cf926a686a1f85401cf3f99e9aa7763c2b39a977e8cf
Date: Fri, 05 Jul 2024 12:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720181722
