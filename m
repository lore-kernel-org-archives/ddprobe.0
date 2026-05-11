Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209C14C042A
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778527234; cv=none; b=Vt/S9X4xdHiZmIud/MIgyIR6248jm9AlCnx88EaWHMOmlQXTgymx9gXOh21hwm09+yzxkBofdMNY5N0LlcXgYmHkZ4KywPM7BdmniRcnXoBbkfm9fR3sXTiEyNH7gSC8OYqbD8KNRkg9lobd0VoxLVzCVqUfDhBUagEuds273kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778527234; c=relaxed/simple;
	bh=JA0OIO7ApKMEFPJ3smPMAM2HBj+wNf1LRWESOiAZosk=;
	h=To:Subject:From:Message-Id:Date; b=gPfHGj6cipUPrdbTPAcf3LLLJIfqWjmYN4lR6mnTmrxaU2GCMXDT8BXWKa+JHwBLMUwFoZQ6vmkad/urIDQMR1n79SLBHqY/dFzysEL7LybumOkNXYbKTDp4zFbL7k7WnZPo8sAzNjzVdwWUh/bFiMSBPUR++xaEds9sx3BopCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf8oUUOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf8oUUOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8308C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778527233;
	bh=JA0OIO7ApKMEFPJ3smPMAM2HBj+wNf1LRWESOiAZosk=;
	h=To:Subject:From:Date:From;
	b=gf8oUUOQrp4liGmd3Gsh9CZ+rdtUvd+wyVh7EuFIv3AG4OsTQLbhjgQJby/+sJHMl
	 6J5OY/RmWcGpkjShCkfAqMiNH4IouRt6MmELpkpCwziMcYsQw3jhJTLpa7asOZydir
	 1wqaeU5dd03ORo1orQnfzYhXs/F9n4pNGlvEsyfjidmgFZ6ytV8JE8ZO9BjT6QUo+9
	 Bf0uzLR2kiwjBvdCdJ1bKMZasm3a5pbD5PLdorjsri0b7fHBM7SlybKJ9QL3HKX4sF
	 +HZxmkKEmvL3QduSqN1wlf5+W0laGZPeWQAa1+k59ZoU5OnchJSH3BEmkbLjuapaFm
	 UEoLZw+fXOLoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA599CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852723368.15507.16140513574533185509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 384d869be11704922dfd50588479105b95c95b32263ed27d4da575789613422a
Date: Mon, 11 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778527233
