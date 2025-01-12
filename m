Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9AF2CAB
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736711154; cv=none; b=GE/4JGp98gVLkKVT/8yesMhrLPuF4ApyLpKiw3lOU19c4oFCiWhJ50dSO/IyUJdvFmyVJV1CVD70sEfpDi388HEaZXPsR9aIDSrMrWron+o/0FXacwdYBlNDhjb8zJmIJ3s9XbZgEk/Uw9KPoNAJ28tmeZh9Y1kEivdcr5D9qBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736711154; c=relaxed/simple;
	bh=pzBrS9ZU0xYZ9uNyyaf6XlZhaxgnwTL0aKuY6zVra0U=;
	h=To:Subject:From:Message-Id:Date; b=LIiLJOot3iHk/C4+LZQ+3V8o/L8PL/RNLtb7Gd2ZwN23Q064kEcRWybGHHDhJNB3fJ9VFjKAn/f04lRuA+9WWbZOXAjclMUobc2yUHgXu8GK8i85nffATjI7ns7xMwy3B/azyaVviZIxDU2U720J66fk7LSDoqBmFxAk2KtmH5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e59zQV27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e59zQV27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC970C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736711153;
	bh=pzBrS9ZU0xYZ9uNyyaf6XlZhaxgnwTL0aKuY6zVra0U=;
	h=To:Subject:From:Date:From;
	b=e59zQV27kaF6lURJQbyEvujls+H/2Bpoo7YzTkqgIrd7PdQivzW3lAb00nbgPPcdf
	 R9hmW13nE2TUZ9bzqieosfM+fMLDZHfrY2MS10jCjHnaoJ6vw94chkAvgtj7bMigIR
	 96KvaTANzfyhzyY8Er03beYxMiPU+mlECs3RicjuWR0T0gZugdleaSS2xXOEEWFWPY
	 csUrCmNQ8fUGo+dcs+XeO2yDw2nbYdRex4xlg6lc7EhF8voiQ+qRBnR3q4DhSG4yGw
	 OJX5NfCocG+6Zhw16hT6YDje9wkUCViXBE0uECLbQ+kOUjS9V59j9XLRrnLhTBya/l
	 G/x27TmSC8WbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9677CE77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173671115358.21863.9709780991608292056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff6776a7c701ce9f5fdeddd3b4e3dd6e2ba07664dc1ca32a6ea3d0bb9d2a88d
Date: Sun, 12 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736711153
