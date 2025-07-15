Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F1E2CA8
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752560394; cv=none; b=iqWlY61gFcYN3DAzbSQrOyVA/Yf8Qc12aP3VzL4Uo2FmHRYiibhcyxRZdqfzQ9KVZMp/HfOKb/dxVoi/ykQ+RgJ2/eCD/LaCwmL+a2CHNfeYxeKsh88oK8Hk5OW+G4j/LDkqVfYex6eYgxNkyIwM9TkloMQLrG1xrv7JA85yf34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752560394; c=relaxed/simple;
	bh=BA/uymB0YEhBdv4CMwlvQKbgjh893lszkPBHfpH3D6w=;
	h=To:Subject:From:Message-Id:Date; b=MSsZMqhSgxpOq/u5TDWpzAqpI4yAH++qwmtN9X5Z89RHS8gjz0VzPMPzByvFfOgxKgrKLFM3TafcKUd1hPGqLVNUWs0OGWDdVFK6BdL8wjnwaw7B/qf4WX8Z0ZLro+4I0oVeO2fYzI4KXnueyxQ2ub79CmyYItIVLD9KhLzk808=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdXECEff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdXECEff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A81C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752560393;
	bh=BA/uymB0YEhBdv4CMwlvQKbgjh893lszkPBHfpH3D6w=;
	h=To:Subject:From:Date:From;
	b=fdXECEff1vAvV05uOvmTAPsnAEHQ5WL9e02thuKmlSwS+Zs5F1PHTc1ohwKLmQj9s
	 MUqmkKg9d8jF1fGYtaVvT6Sf5YQMg6uQXAy5e2/PqwVjMNcNIbNAschPQfYYkm4cHH
	 YLOuqtNqjr8NZ0/rpZHIx8VIYondlJgF7Bq/vunxcujlPflPsLaoGWHN0NfTQKHdbn
	 9w+TlJDz+EAlSYJgK7ghEg4HoO+RSpW8r5W5aDIurlcawIyfaLdPNtNQ1B5CZK9xP6
	 URkXtpHTW3voUQG4klgM3oT2PDEDWonW52mKkoV/AGvJDBg3CJv1VuFfyNxxGXUKRJ
	 MHv27DUM59JCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F045C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256039357.20675.8883724814942205300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daf4f0dcd7bbf5460b3b57338155f6fc55bdfebd4f52b332c052fa2b0d82629c
Date: Tue, 15 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752560393
