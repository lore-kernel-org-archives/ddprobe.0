Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2105931986F
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762512594; cv=none; b=DSi/XpSTYjl4vhjllUkiURO8YB3jlrpeHt/zsRVv4zYmpfJGrjikYeG/tAJS19Wb/WqutF2WgvsLIkVTEpFVv4kTgM3c1GTmeECV4oISW54+k+N2vT5iAGf+Tt9YVFjy/c/hSFCKmZjJLNSbgY53nWMMph/ZxCrgdVJGZHQupiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762512594; c=relaxed/simple;
	bh=3ID4IIrQV48PK3FefS5bbtKP+Y5/u68B8DU2+ektelU=;
	h=To:Subject:From:Message-Id:Date; b=TjqeVSJyAcqManrsOr7dGoGrI8kirVrKSUjabVvRmjMC9+7uaH4p61jzf8DFZ6igpxLaqmrn59CwQ/wNfDoStxn/Hn3K2UWfmeM3goNcf0J3ptycIkbf4kDt1BnZKUNbZC7YDNU6Evc5P4NdcQDQ0SfAxZ3E26oMMUI9IZd3KZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljxeTS/m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljxeTS/m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB95FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762512593;
	bh=3ID4IIrQV48PK3FefS5bbtKP+Y5/u68B8DU2+ektelU=;
	h=To:Subject:From:Date:From;
	b=ljxeTS/mePi3Hxax16dvMjz5q7gtsWtkzG7wdvcCulD/RKFN5I6qa9+07ZDkQcyU9
	 qXN43o567hQdmOffqSTOISvDfTiEUOfNDjfFeN3CCuNO8Cd896d0IYBDCwaP7X9Ara
	 gEZNvNTitOSW8Wkn6ITw3AAaNNhCqi/CAWxTnlWjO1+FZrAzuExyoskq6KWg+D81gd
	 UE/G7U0Nst0LUyCu7bqb9OYBmlwi400T/NjhCdd4uN70ubj/LJv4Pqqh2DToWOPycD
	 mcKuBtuArFwYiawpl9xKVUwpKltFuiDsdNRs4ifegUYGWyldXVTeLhHT/o71siuDPU
	 5r7+evfNReelw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E14FCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251259363.25560.6760227020328891811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6689430c814a07e7ea265c07e225bc0a9bca0bf2ef3a254dc6fca546facc1b9d
Date: Fri, 07 Nov 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762512593
