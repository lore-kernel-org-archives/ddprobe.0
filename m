Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529782EEE9D
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785661834; cv=none; b=T+te5ZXrglvk/Uq4n8v2z9wXtfgAoLnzUkBmbW75bcygwJtgoWMHZ/n00Ou/a53qRbDp+iQCG+cnL4dx1wrikdlr/52g6WObTgDC+rLl0wF62ifXSWEjduzbZwLOPF002BrhUIkEOXT1Ty+TQztOUy+IXhXhaxcBkVoqhBeVNU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785661834; c=relaxed/simple;
	bh=aEnw1p57xDvfnHCYtB+9ByQ9MwPLpl2S+xAlQ3B/eo8=;
	h=To:Subject:From:Message-Id:Date; b=DyQiM/QryQELjFDkdIW9m0RAb8VwoNk/nMqDD5qLdawR06rxV9nYT7i1v+5F1uRS90QZpP5sfZ0F4iYWE1EKWg+0lXEoM91OiiEROSGa9GPv8CFSXgX/YP6Lpv8KTPqsjQvQYbSPYZatWeuo3cqF1nTIf8vz+vNd6dtsVHrPRc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOgrdt0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOgrdt0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04D6C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785661833;
	bh=aEnw1p57xDvfnHCYtB+9ByQ9MwPLpl2S+xAlQ3B/eo8=;
	h=To:Subject:From:Date:From;
	b=TOgrdt0XIlehher72MzCh0oD4+evQEYAAvZ/AjDJVXEt8PGjTTwDQ4IqzDYSF88kC
	 VAzccd3eKabqcUkm++74ssgee4WMxOG7Dd7KDk/3gI5iH+xTRzLZ++VIgsJ1L9Fxrt
	 wk3VtMX7SBuRdyZ7VR90tf1y1gbD4bD3PG/CPNvqNPHNcHfVaznLAB5/jdxZ+QgKM7
	 oDhemb5xIrDP9pWwswbmlmyCfMDMRESHJ58adshT89Qjj6VBElywjODw66GrrLy5Y9
	 SbixkyD295vqYvtYjnwxyoDkRkYhC4qjW2VEPHIQ8sjfqQF0YNW+kM8rwfD3+XhUzQ
	 7D9tj6/hVxpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE240C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566183368.30982.2208791577889741557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8bf1066c93e05d37de1b9e1242934418835c563d201b4de30e0d46f24b096c
Date: Sun, 02 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785661833
