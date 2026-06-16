Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2294B3D331C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781588194; cv=none; b=tcFIOrXNha4fk7jK2/hMtWTYvJJwVx1MmNXOIGmjv6TG8xZ1XwAekiffLOXTmtrySeB+g6kGtLOgNun75UA4jdYQA8enbrQeTysC60twTEB53kjVhcUxnat0LPMm5krKZFpKIqhFODef62/+D6X9yFfPx4Jex/Qr78YEKdubZ5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781588194; c=relaxed/simple;
	bh=sod3E7QZ28ysMZ5lY9f/jUvlxHFbc6MYy9nBasEqcYw=;
	h=To:Subject:From:Message-Id:Date; b=X932aXcdrViVxPojRfW2d++T/dP2W52GSJjBpuzWMRg8ohL6WVz0qF+6/oyn2cETd9zALIUlcuhXDOXj4Ss0cjUIIiUyhehtOcuASIh0STeuwLoluo0a2fdzBu0Cv2YBMjjUaMW9GUrQoFPgj1sXLU5WSdQGVda6CenY1S1aKl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIF4RnmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIF4RnmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB29C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781588193;
	bh=sod3E7QZ28ysMZ5lY9f/jUvlxHFbc6MYy9nBasEqcYw=;
	h=To:Subject:From:Date:From;
	b=PIF4RnmOKisUKjUG7v0Ba7FBTLzeNfTGIl75xEvJRQ58BTB1ZRQXuPlm2+NOHnkKY
	 9y+/durdBA4i/dVU5s28ziK32ukLw8FF91HeBze2OQ70u6ltwf9hRXo2tsEqbNFRcA
	 wRYTvZ+e39rqSfwH+tPBbpKfm0mNEJb4+tkMq9jly7nikH06ALFpZMcXZQegrY992V
	 oU2Sk+aKV9jDP1pVR+J+muZ2ZUv2e21kVPOhaNeFw3UaOx6vaUIC0fRUXHrFqnacSS
	 pZYvn/+j5kbZcg4dsAKjPTJVbBj2m5fa5R5yD87GZfdL4sjH35tVhx3++8aItHJvBu
	 /1xYJBsHlcgug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09ADCD98D2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158819371.26927.1125418493712729556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff53aef6735d8cc1c948851f108f61b21269a90b718fa950e70a5145dad5e8d4
Date: Tue, 16 Jun 2026 05:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781588193
