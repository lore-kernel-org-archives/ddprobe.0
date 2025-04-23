Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367921A5BA4
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745372394; cv=none; b=QfimIXsBggbLpGM7RuGq2aIRyiCQWYQCNxGPSLA+W5R+k75SdKxyZFXJ8QIMz28jNGl9pRk3Ugmuvx9TCjEWZlvHyyIOFDbjA+ceJPO1e/g65j25O0wHEBS1sjQbVW2sLjDH4ja+PwwqMmL+Zb6ef+JU3Bw+xhxxw9dHtG1ObHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745372394; c=relaxed/simple;
	bh=NM/cpfyN9IiJQmrzYPtOrMjSI/EOO2NH6v8Go81s4B4=;
	h=To:Subject:From:Message-Id:Date; b=uA1LvAZ0HHB1wepvHq65MuOfExVD/jjYIBhv7UfWQ6umh8pXLoCt8Xi/ZGXuie1ssn44w1tbKInfxMuH2FDVaMh8tmXxhj4sInq9V69hifI44tTkqHc9dsGubrJGzw/bGudFnlnaZRzooHEw2lTAgLV1OKIAFgT89qATpbO/uDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWEM+k/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWEM+k/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D7BC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745372393;
	bh=NM/cpfyN9IiJQmrzYPtOrMjSI/EOO2NH6v8Go81s4B4=;
	h=To:Subject:From:Date:From;
	b=UWEM+k/1M6a8tkZz0s5CtC9sJ0JVklbU3PRfYiYNkkOdgo9xQ2c1nPjocbzu8qUf8
	 jF3jS1h6WLsZVRWQ7hpeD/F1DcZPowELBzoyRBb4sdsdzdKc8hN8vWGpOjUUm6OGFH
	 PygGQ0UR/d9BZsKXiJixUJlQUkWbHr8ar0S25Ywrn0RyITUFcpxfOdTbggq3dPReGZ
	 umbJ85JwdPvLVbssTFAgmB/cjKfgJcLx4Fqri7AyVdywTFw39EU4i18yuXPe4kFJqK
	 V2OAFcQcf21dwk1ijiLUKB7xDjYi5pOeMMTZT8qhXPFUcLzAPoyAFz7DlRWsZkqeL3
	 GZweBzkA1iY3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE08C369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537239357.2458.15598687368199683430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51d6caf11bd5db58d10f228ccbcbad0324dfbac22e37f8d1f74281b4512e9817
Date: Wed, 23 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745372393
