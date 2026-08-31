Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EA03B4407
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788202834; cv=none; b=LOQ6j6mfFtMENb6JbgkqFekTX/OJEx06/bg+B03PS5/sFAGzSs//ew66d9KakGH7hkgCuOOscePdlEEox8WFICSc3uGqOeaJYRJYdePtiny3uuNdj1XdOExvbYSlnCjnSUR74f66BfikmwkiGUDWtxPW1pbvC7avXSErUhtoi4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788202834; c=relaxed/simple;
	bh=rHUOKSNtoVQT9M03+rmuSbb7EZbN0E2Yydu54Fa3lOY=;
	h=To:Subject:From:Message-Id:Date; b=uiPyTgdQ+hXJ+cgwhRPR+Y5yqMO2JfZSFzWiBj68JwqOQaO567J08o4zWHSQulWl7OO3S5I7GWkBBoRQsOcg/yK09stEAs0F5EEcdzyhZM/2ws1SKuaTUWwLyWjplNRNdXQGOoqTOAFyt/AtiZlTFmRy8xFLz1uelslW7pmqgC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzc8HwDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzc8HwDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC8DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788202833;
	bh=rHUOKSNtoVQT9M03+rmuSbb7EZbN0E2Yydu54Fa3lOY=;
	h=To:Subject:From:Date:From;
	b=fzc8HwDc4hR8rxzyaK7QdPmzkvoRRcjnP17NA8KZdRe4GZtn9e2zmfXd+DYFcympI
	 nmOdo495iNW3mIhSc2QBDwTagFak11qwWl9jon1RMKA0EFg8ocwxaXSyQPRMYhubcx
	 Ggo+lSw8cakVC4m8D7k+dNbH46i/FDhnhTgSvWXEDZkEjDZ1q4wmLL5GGmNEqDa3IZ
	 54FVgKHf7oEAfbc9EuJ5qGca+Ki+S7I5eO8u3IB652kKhQk87puYDF1ZmyZSMtebQ5
	 vbeKo8mXL+KatZFaUfRm7ZGjdZBi0I04sUQLhWR/28G8MdQeyGKJd2Q8zHsniG/Qg9
	 +J8IXZ9E2H+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4DCC624C6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820283369.16763.10197640632588767875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ef0f7566d66680af1ae824e686bfce9b71e27114b8c38f32509f570f9243b7
Date: Mon, 31 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788202833
