Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2845830C630
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779818554; cv=none; b=UXQrNcsXWoR+pFEemfhACJvTL5DBimFpWDYouWvK4MwrVHMnFGlYPVN81NvOAC137az02xdWtFYgjjXioHYfICLcy28F0a5auDTIhm5vT7QceBlvkHK7vwNW6zAAT8qjkpw0AulXrkz6SQwceqVF5LTup8+I/uN0ZGL7n524Pms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779818554; c=relaxed/simple;
	bh=OyjxE4qz6VvYkK7YqncODeWhzZIrcjYswlh+WLGX0mQ=;
	h=To:Subject:From:Message-Id:Date; b=vGoSq3BK6JVwlXKNSvl/lgYWASTCRkuS+aSdmBsg/SSlOFTQfAQ/SLSg+CEmWLicmJhLp4PsWyxrNIjjnUUafaRayOmkhptGxHB0GiJ39sCtlqMkqcN9oG8TCXEsasH3WeK2zMvWHATcomRXOqTzG+hB2nulM6mWl4wW+TwujRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIDZandG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIDZandG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3419C2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779818553;
	bh=OyjxE4qz6VvYkK7YqncODeWhzZIrcjYswlh+WLGX0mQ=;
	h=To:Subject:From:Date:From;
	b=UIDZandG8UFgd/la6KfyChE8EWeMClfD2RDP/c3dtHUuzHQjHFcYe5SFDZw3g/2cg
	 gUsYHaC15VHo4nsHdjzYZD16nVV+H9rgP+FSElWQZ5mZUSFxz7DLSNjp+eL/N01du5
	 Y7yyoQ38411Mm/VbNRV68Cyt1EyKnggvaKvLsrUijGgUTUoQDWcPcSnSV3HXSovrg+
	 URQ2CGiBi4MWSf7jeaCwK/SZdmT489Pwoq2b3tHFFBXIhqw3lxU09mKwsihy96Wk0q
	 Iy3nGo6RwtOwXHk7BpElhPjRwaw2nO04GTE3L5WJk6kfvmC25MVKAUIYZiFtOP6alE
	 DkpJDiKy8eAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4EB3CD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 18:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981855372.3314.9063731675076494471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9d4891d76325c396b6c493c518c61798f3956d6f70a9b7edb2072b23d31864
Date: Tue, 26 May 2026 18:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779818553
