Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16627133987
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736566554; cv=none; b=XqKS9ICh5TcjqQ579zrVamYMD80G4/BSjj6ZtL+qaE11r5FZRuVEsmxbQ9DEkVhOftKTyA18zdIGqcRUFqiPt0fhE5/vZvQVl6aviust6WtfgQCg45nTbLJefOTm5nq5JAEoTGdFYTNw07LwAXoMqqGBYrDCNYU1CzSMbYpneOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736566554; c=relaxed/simple;
	bh=7SCdkU7ox29SR7o0U8Zft50ofqo1jqWk6yrejZIuwo4=;
	h=To:Subject:From:Message-Id:Date; b=qapxM+1/GFVn0merxB8iQmdJ5MrErIoM2/HucLMSzFm1QAZ5erCAbGDmHaNR6Ovv3V8vXp+q422Yw204GiVzZh+Xe+a5QeMRoMETqiybktdAfCodF48HfF+PRUfnXUA9OKRybExQTnW70Pgt7HnelpYSf9zvftntgQlQ+m4Ca4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyaIGFlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyaIGFlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F27C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736566553;
	bh=7SCdkU7ox29SR7o0U8Zft50ofqo1jqWk6yrejZIuwo4=;
	h=To:Subject:From:Date:From;
	b=XyaIGFlfqnhLawWjE3a/58kJqU2bZzdc+H2MRwGoOaoUCN1Du1uih1BlVEszK9ATM
	 MHg9NyzBeAbkDJ/Aj77Uv3kJI3Caskc8jjiupWSC/SMXpsHiGFGAJLnJtG2vmRVXeK
	 jscN7iBF10N/7w7b5znhM1lNbXbSwd/k37D6b0evSg69ISYb4reCJ9ELNoVw3tBobU
	 xhMdTZ1KiwO5iudOSWqcDooh6gco67hlZewjdow3kjJmmYqxxSdO4ou40VqO5/gwEX
	 KZ/okF7fed+HsR+9eLKclrmzukMCmDSzo1QFUZK9LMEiPifDJsRZMlA541oa2thY/0
	 UznTPPOJCDTSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91649E77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173656655358.27822.8565889143956573315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5e9ccac2917fb9b3ec47cae122ac5cc0155df6c11a0f472ed922674c5e993c
Date: Sat, 11 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736566553
