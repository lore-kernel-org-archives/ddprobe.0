Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D1026463A
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761559194; cv=none; b=sUWHsxMZ1UxX3HEe7ziTg5PhRoZ5Aj98wxkMs0LAvsVv9OnWeBF4WRmQwq6WiZO+sGsrTkjKkop0h55AybJuRKaT8undwkxjY7lU7ZnZrXuOzX91Dt7+FlG/90vEKia3lkhgBFzDemTmXDndSQn1+Si5BMIYSC8G+Fcdz1Tg/+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761559194; c=relaxed/simple;
	bh=dDpdpH0YBWiKHsPLNJYAuVtBy6TwFuBmuKmAgd9eKDI=;
	h=To:Subject:From:Message-Id:Date; b=q63abaxndDr5I4TTE2bGRctNlOeVm94T7bOPc1EgpJ4/FwWfwrerjyfIqOuWIQZUwlyGwg1QCfYfgOnOLI6+6BUNwN3pkJ7uuB6NWcX6hP/yzlw6rFOlgPLkG0kZKXtGnDdVHShUxOsAGrdf+9kA7aCm2djvRy8BaNl/Y818jBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyHlnGtB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyHlnGtB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C60C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761559193;
	bh=dDpdpH0YBWiKHsPLNJYAuVtBy6TwFuBmuKmAgd9eKDI=;
	h=To:Subject:From:Date:From;
	b=RyHlnGtBPcHZFCdcwg6rc9vyZtTrumeCsJlBrDYmOENljqiHOzxkYPMT1Cfk2ZYUW
	 PDV71I2dq0vZA98HjhOzDo6aOdqFWc9okMk+VTvCPaGySRVxc19ZV0F3N0fLMuGHlf
	 uYN1upU/a79Fw3Nd9Ng3sLiuzeowPXNBfbrDRPQwvZ3ChLG4q0+PdKkBZ40gkIavRE
	 eyWfrWqVOjvNt9fZRwpVchhBHDYfm5JTqxdjAOACIJC9J6Hkwnrybq91dav8axUv21
	 8NzIwk0AVeivsG3gEP5GPChjmfXMGCYv5ojyg/krlS0GUi8io7FiXvqzTgSSoVosGa
	 h7tmTJjd8sDGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F914CCF9EA
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176155919357.10078.2639587771397883296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1d299b09988158b78e4c4629f11e6586e03e8f1f4926c84ac0e50c25dbb2e8
Date: Mon, 27 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761559193
