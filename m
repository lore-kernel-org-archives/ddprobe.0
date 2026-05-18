Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF4E405C33
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779135634; cv=none; b=tBI8TwL0IHF+8MCFgFMod/dmFNtK0XWmXHAv+2CNzinCigPl+VKjcG5PX+75qjZDz/tgLN1QwmTNivk2jVqGsnnrA3hUiY9+0/4phaoAkNwTdEeRRvnhgbqevJOj+BP7SutIrsJgJDB40PiVZcmP4v07+q+D24clM1w7XSWFy0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779135634; c=relaxed/simple;
	bh=7srX+UQAZ5wx7rfB0Te3VtbcvwSRaNoQQDnovWn52qA=;
	h=To:Subject:From:Message-Id:Date; b=ulOQcOfTnd3KNx79GR9UA5qnE6F4mdHBwdG6X3Q0hmbgM+5aERFFgBnX7200v5sh1isiwFHKBrVFj94b6m+ZXxsOtT2rIWFWHh/h6tcTwdlt3g/DPlo8QIbX210mML0KJ7AJMj7SAo8iRonbcUhoqt2Vt7qRG4Z79Qv5IED/hkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZ0vzMna; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZ0vzMna"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B07C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779135633;
	bh=7srX+UQAZ5wx7rfB0Te3VtbcvwSRaNoQQDnovWn52qA=;
	h=To:Subject:From:Date:From;
	b=KZ0vzMnaUZYRYhUlEZ5MtkTPb0jaZ8x2SuetbaPpudZE5i5GSrrb8HSXDcRT3TyL4
	 gwNiwHC838wAKiLBPzXB7KIMjp9o98uBarHDKox0K36yx1JwbPeVh5YSRx2hyICHCd
	 bt4pYC6Onn2Wzle55346zlguSyoOEy9vNxBZDBGE8VasQGT7V9e6yFwh5MWdKAcud6
	 JfUFl5zxjgQkFgAt7eLj2flnyWhWY9szTS4CAuJ0u27q5mJNE+GwGnN2XMbqR9FI/K
	 a/3ClHGmhLpsZeupUBnyTyrcl5uW0Gxb+jsSicMR5rLCR61R1EA5We2rXoZCPp5Dap
	 fw4Ocl876gbVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B586ECD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177913563369.6333.11006423169847123447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4499c0e9be9bc54b1dbe39dc7edd3e679023d5c3d43373c65edb13c60d9ee519
Date: Mon, 18 May 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779135633
