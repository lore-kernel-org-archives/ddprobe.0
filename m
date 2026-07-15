Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E473313E1D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784102914; cv=none; b=CJbBL6nQtlK8IBKNPN1CO31v3aDjr1vo+RNw8omgpyNUcSj4b9TW5LDtlUUZw5ByycGkUQyBLG0bWR8Y1tU3AJuqGCY62Tiitw64JhidYgiKqg1cY9nehVtsLdkBHAd620LnTmWAhorblLWGqbU2Xs2ipIp+Xb1KQkA9oepV134=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784102914; c=relaxed/simple;
	bh=PM0M4BE/HFsCYEdkpYYV5NTr1tgNxcOqjf3PpkVcEuU=;
	h=To:Subject:From:Message-Id:Date; b=nm8yqDkNy81JsXlO4sc+xAyESZZQJLyvWf8j/JHVPx0Tk+IKl2hw7ihV/F+bPTFnBwOC/WnjmMX/aRQ0+GWwmZfAysaxn4nhUFuF223ZcazzJj2URSGfRDY3LOpVeBMvqFGHXNy4M126Y8AbO1UMllCXa750xom33uQMX01Ql/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbSFsS2Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbSFsS2Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC685C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784102913;
	bh=PM0M4BE/HFsCYEdkpYYV5NTr1tgNxcOqjf3PpkVcEuU=;
	h=To:Subject:From:Date:From;
	b=qbSFsS2ZYW0YIuiy6KN484vQk5UmOUaPPdswEXkWxK7H4mpGTPqlxtsTzSM6LXkea
	 BhGVO+QQFnceOfwyfMXf8wYBcnXlaEm3QKlrD/QhjMF3+ZWYyh9/667lMHjIAm5l3h
	 KSNBzp+C/jWg/ixBiOZf87TNUb/WLvaR2o4W+KXyafHpqkL2dR3LGCvyVCHWpk+kov
	 KS+RCUIKc56apn9wgPyqqG0qOZ3kvc2dICJ1gyiixgZ3d3LXmhFkcZBC3lYe9yQDFx
	 g04tSMeHYcb4IzxsnEDwi7EcYlHzZNnr6rSLvSO5ddCSTUakA8HGi+0wH//WPkXNMI
	 1tnOLfPN+7cbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93FCC44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178410291368.27331.18404804045711062467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b749668ad8c721a9593be54e8b7733c4740cdb3974a7feee714b1026ad3a0cb
Date: Wed, 15 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784102913
