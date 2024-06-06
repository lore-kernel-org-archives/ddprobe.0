Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE7413C3F7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717662444; cv=none; b=mj463tEzmlfPfq0grdhXp0OULSKZSLRJxmBdhT25LGnd+b0n0kDGWYpDtpKEb50HGMcNbWkgXIjPS3+Exue4SYOBf87y0sYSeuWeUkgqe3JdlvQvggnvtPgOr7410AeGxJlKIJQyuEzhZ9i26bGpX5p3kTyeJGz27IcEcUIfOMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717662444; c=relaxed/simple;
	bh=V2B+8+j05ziIFPxidvsKWb/ImAkrOPu0u508frKGT5c=;
	h=To:Subject:From:Message-Id:Date; b=a/Li5Dg0WL1rSPRMFh1nLpezrXPoW/l4KKe+m2sWIhDXjC/46FArHndkKFYw1YEd/jltBgPm0+t0yDj4NZEJrrTBkJuxuKtVN4Q9HvYEr3exChVFItNu1ZEr/ummVqVtQir6qYLkFfnG/Vb6E6aWiMdKq1Fj4KdgdLAg5BkN9HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQpob6hL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQpob6hL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0EE6C32782
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717662443;
	bh=V2B+8+j05ziIFPxidvsKWb/ImAkrOPu0u508frKGT5c=;
	h=To:Subject:From:Date:From;
	b=GQpob6hLJZwfrhOZSiw8us0wjefi7w4/olWt+cYraLQkwEDZgdEZOYFS4YWNK36JR
	 iUIwJPa+uvTlLlosTGLBg+MVeU7NMz7A8C2fliecWAAc4IrANvYR/jvlT0TchN2sxx
	 NeCzXO5QU9u59EqWV6uBMiZRHJfWRtgCmPhAFnsXhdeEcxCC/EZZB4QwHA5aVRaA7h
	 ByXmTo5Mht5ecMZMw7R+Clf2rEYAO1Lwsoysh1wktBacKkIHaO58rEjy+U0nKftW7K
	 yI8vuMWRZj8sd1d78knZvsFqVb2s7GGojsyVfSDdU59FhT/AYiwHAIkfFGpDl9Ur+R
	 ci4uhBEj7tTEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC5D6C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 08:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171766244276.13988.10720242273917311939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c589c601753a5776bcf6b416c1a2b4dfdb80416ca76af6b5a6c2376b06d3af
Date: Thu, 06 Jun 2024 08:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717662442
