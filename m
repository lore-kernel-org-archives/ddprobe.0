Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6F5EEBD
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758848994; cv=none; b=jHk+LgUS537LA372RO2IoLgMYQlh4bbRNXTAs5PTkjIVnsNVUPAvAK6vH0afIBAXxrXkS+5FyPGCxgqGSk0NveXrqtzipUByjOW7Tu5SmWrKvulAJ4q+4HaMECE7DjLO5sUacqniCTl1mlNpzBp9jFptjU0ht29MBT7iB10pnSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758848994; c=relaxed/simple;
	bh=ZxEUUxtyrX2B9eYt2ZE1bkIS4CZGoatVqu2yFIMm/Wk=;
	h=To:Subject:From:Message-Id:Date; b=CxIzaN6yfoz10rOiTkElsiH1XPvGVYokP6DyYLk46klrvLJFZAvtwUbA75O6OkLYI07CF3aShWefw0avHq/IogQZMcT6GU+0AB5WlqVKHWd/smMAoqRoISCFrrPwX2/yymZID2pV+lQ0jQHno0felwqOvQ6rFB1cVdMiogEibOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWuVBSFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWuVBSFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDE6C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758848993;
	bh=ZxEUUxtyrX2B9eYt2ZE1bkIS4CZGoatVqu2yFIMm/Wk=;
	h=To:Subject:From:Date:From;
	b=CWuVBSFouZsxj1wqg6X2/9uM6KcurUU+/lbKNrzryumwDvqgJL6tQbL0hNIo9KwSw
	 WkV/R7+NvksU6CmLqhxsB1xrGjMsrv3Bfq5p0VCvJu3NzpVOS+51D+fzn/jmzdOiD2
	 awUUrs2JblR+3HEJzjPMMB7YarbNeOyhfSZBYVp859Yoi1MUTyJefqc4oX2U0KrXWe
	 hSkH1gZGXj3F8xrlRns2DU9nJL2wkdsX4M7HaNnEGYx5Gt+8UJVVUpUS6khL7mpx9u
	 GOmueTxupu3kBmm9tlMPKQox8p/p3ZRGABxPfxZS4LmTE7lhbPJkz5Jo3NIQHtCRkt
	 Bi06iSN2UP2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97013CAC5B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884899359.15393.12659961608115289162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ac6cffa4f4fffb4183891601c15da25ea1782f079f4670c6b2cbcfb289ad801
Date: Fri, 26 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758848993
