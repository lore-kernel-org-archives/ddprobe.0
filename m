Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A411EE00F
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732706154; cv=none; b=Yv3Hnj3/Ho6s79EBroUWy+77It3Hp16kwS0gLIDBtlHaX/A9z9RD8g07U5nHrVo75Y5YpRsc477i6jNUJJjVCEXO71wDhVsFGQtQ1Du/gMmuu8K+LRWStFL8Nk19Ij8t+1fAzhOggdO5Zdcp/gx4fh1a8C55L6qGer1FfjxHm10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732706154; c=relaxed/simple;
	bh=zCNkl/ZEZOfvMkH2snw15tI0BMs7zgvFZifGszlVej4=;
	h=To:Subject:From:Message-Id:Date; b=pK+OjunCdZrHfh/DW067LhwNslTUn9lCZwHm9R9IfBB1bwFd/ZwoF7k4Br3GQzUZFspkblqGd5hD3F7sa+xb7e+WR/+o5BJkxvhnPgCeARy1R/wmdZmxfH4knTWJObT1aQN0zozh/N86iCFnKdFkBqBIhpA12xKqfEWEUloqm9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mvm8IY2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mvm8IY2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DB1C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732706153;
	bh=zCNkl/ZEZOfvMkH2snw15tI0BMs7zgvFZifGszlVej4=;
	h=To:Subject:From:Date:From;
	b=Mvm8IY2vAAwS2tj5nUDFuQpv1KUOVXw+l+P+uqYqlFoJV+UnnEnKBvvT+a/V9oo0H
	 bGWY4l8F9lHYw9/yHAqU5/zME7llpui7NWl5fW+YLYQhW3jWc5A48N0hHgvxu0ugOM
	 RXmiy0AwVU0JqUCE952PKMPtDDK4oNJaTpFNr7Sk50cZTOWamqfkAaakm4FxS4yLp5
	 3V8d7y28JQRWP+BbWkNU3a46Vt8bdeuQH42ZfvooF8xaWWi0esS8DTHKcK4DfPkRlk
	 itfeEmetfdsDaK4/uyZThit0lLWpHiv2D0/MGDrK2Y/VAfajj+5ark2S6VFXURg3Ck
	 moVp96gZehyyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A523BD609D7
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270615366.7403.7460181827811071862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30d46844f8074b0e81f58655372bb800856370363682d0e4de5df13f834416a6
Date: Wed, 27 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732706153
