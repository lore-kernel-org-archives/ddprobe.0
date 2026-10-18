Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537DE3ACA60
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792348834; cv=none; b=hx3cpHWyZDggX42HSPOU40w0V/u0rt4Y7QawwWPLgs6sS4y8dFteAY4UwOOU20aLIF8NCZjq9cNGBNxBSEwK6YTuTpV9OSlcQf3AWEPIsH2t0Mkk84dkFt/6H1VAPAdpQqVzOPmOkbSIlTUPba6dXJx3pzyuUjwDky4JhU3aBG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792348834; c=relaxed/simple;
	bh=1oPZdE4imV6+qxg8KyF9CyF/bMRfRghr8TmnqL5eZ8c=;
	h=To:Subject:From:Message-Id:Date; b=ax+ur0BNOIeV/c+iaEQFG967U0A2f0S57ydgDZAizlK4uFefyxilnucMYhgeUhcGueTfoVQ9z21YqCKqeohQ6Gfs1qV38weP3JkMN1EIIV4DkX6ztY22v2TmXAHfEoqYSOozxKhlubd24JGkmwNNIbz+VFotJEsTOPkJt3dEqys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpbFywa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpbFywa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0119C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792348833;
	bh=1oPZdE4imV6+qxg8KyF9CyF/bMRfRghr8TmnqL5eZ8c=;
	h=To:Subject:From:Date:From;
	b=cpbFywa6dE2bYjLoh9EhZq+glQdsM8TLpi8UWVCUf72xBl7gt+xGqO7PLNcVtOi0d
	 rv3OoPY5qVsAAUSWSMAjhIRAJyi+HjNMmVly9nSWcCDsMB2LbBZPslo69UFKf/rm6P
	 vW8Og8cfQSimgMWLnq81dq/tw8GQvqluVZ68Ohi4OIQBsoXLrouMuXrgqsmgwiXcSW
	 I1sRXgSghcURfykNh3FMT1oLVzGoG032X+0Z6ApHKaXxqoK7G9bIdYkhcO/qtkcKrL
	 A3kFw+1uSWr9E5A362ntafWcDfEF8KzvDx60fLwSuWl3zYMtCdEr3+JMrSPElAQ4BB
	 0vuC+QEqf7t1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA53CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179234883369.29730.12679302927170635677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf0f57394a17c16e4d8316ef99779c2a9784f685d7f34c5424776b02f3f622b
Date: Sun, 18 Oct 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792348833
