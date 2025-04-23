Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384E333F9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745428194; cv=none; b=dr6xgYfomenV28cuYt59nTGRDqkxTSILMWEfE9ZodsY5IqddZuXmZpwQgPJ6Ej0pUCeuStuciplowuoyDbmczJ3jsuNlYmBmxCwzEOSNL5VozaDAtrniY+dCNCEAnhU+hWiPY+grCvmjpPRGcsFuXWAjJ3og4kLlnrUWSSHLbOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745428194; c=relaxed/simple;
	bh=kv+zsZMCbkaClB8QpC8io2nk4Y2miziDpy9C6TkWnDA=;
	h=To:Subject:From:Message-Id:Date; b=s4Ze4LpKoyAD0aFF9apBz10WO0PS/fj9f/pp4rylrQz1pk39n6QCw2Rev6uszbum3eLx5r+ZenyAZntEjFUKLwSKBsy17nh682a/Yfur3ah+434zJlZsa3hRTiCS+DM5og4Rx2GcgZBay+MIuE95ALggqDCRJx41Ejr5RhTot+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paGf8IRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paGf8IRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E58C4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745428193;
	bh=kv+zsZMCbkaClB8QpC8io2nk4Y2miziDpy9C6TkWnDA=;
	h=To:Subject:From:Date:From;
	b=paGf8IRwBwoR+953KW9UwNivGbvgGzoVbTyGvZjIr5VXsnEHS9jXVaItkn/s/YBo8
	 5My4k4+813DcTI+426C4DOinSOzz4dffc2mjxQxgiS2DsoFXqTFhwLuteJ91VTBg/l
	 6R62Y6nG6TomVq4VqJj5eXcY421vA1dQBkvdHYn6VIc37XoLPliCfQK+VRXe5LawfN
	 UBNDs5ZPt3f5dph9VFbo6Dbj+ao+Mg0atCHWttHzJmXADvv8zgd38EXUYtOn3kh/2x
	 jNhetfaEMWL9Hr0L238TVzUUfJ4qx9v/feK9pgiGEdVGeK7Ufu/LxqQ5HTrS28YDXg
	 kE+Uld7JdannA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD24C369D1
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174542819357.3286.5306169355715635257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26d96e2cdc4317bbf694bb60b72736f8a6baa8163aa374d6033bb5cac536082
Date: Wed, 23 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745428193
