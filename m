Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309D617993
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787421034; cv=none; b=JU7weiGhUpza6+Hy4LLQU3yojuKKxFJjttwRnKy51QTC6kN7eg7j1Gnrad5tfACkbGVVdoPXaowdcwiix2AyG/atT4OPSGuIUNhN4UDCHxQIyqpy1QU/uEYhIyCfgowNQ4lZhCKlgTZlStcFe7cC+CZIdguVUAJJj7EJSdCM95s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787421034; c=relaxed/simple;
	bh=DnR3j/yqH5bMJOyYhQN0S++UKi6ttdUAa5K7vZVYJRc=;
	h=To:Subject:From:Message-Id:Date; b=tOzIg6fBxppIdY2Tx20GsFnYxw7eyZVlqZVmkT/4na7LtBHj1ckSHpqti5erErxVorIP08M5KSqr0T3xvIvtqSDZ0CVqGiVO1JXcAdeLaLDPwzXun2bXZ91/maAzfz5BCRwyxazO6T/mRd0SjgVU9pkNXwxIrRkKBjd6cIZHM6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqltjpUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqltjpUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB755C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787421033;
	bh=DnR3j/yqH5bMJOyYhQN0S++UKi6ttdUAa5K7vZVYJRc=;
	h=To:Subject:From:Date:From;
	b=fqltjpUZg0chzHCKsD8MowgiTDf73/VcP1jt6zEg27WIaxV9FadKWgonbESBZ5oP8
	 zo8XCLFj299EkBihxRpSlt9ZVi+DgHo9ljQu44SmN1C0FLizi4MG9s4AlZD6QfLChf
	 3dzu4ITLceK0oKPLEeJ5LUtlaQJ2vp5Cgyert1L9+O4un+XJgyoXsOwfouKWKXbG44
	 YN0Ii+Yg55s7+HCQUragWDVt1mnkqxwsiq3TzjQN+UiPRvrbi5sBdkej1fUNwNexw4
	 40iYgqR6fGfyt3HUBaMbr+axJyNuV7ElxBothSDvgf+LjeSYY4o0Q0Ub9Pepl1kVCl
	 mhCF5u6Bnzzyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C1FC5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742103369.19409.9040591850775768753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27824b718d003c3278ad5bf8d4f99280dff2930f41549700d49f10c8cd0d0c99
Date: Sat, 22 Aug 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787421033
