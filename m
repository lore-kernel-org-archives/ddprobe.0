Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72B219B5A3
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764246773; cv=none; b=cZXijM19uqwOcaSarxQO1fLjCeT4htYkioc9q3pV2a2+05ep8mbUU3zfUbc5tHTOHM3iUk1Cl1perJNqcMYnDRnsRYr17U888rVFVRbAMcuOZUpmRmXqwWrlgNlXq2po17Ny5XQqPKpXFQkBB+FhZklnYU6okbWbIgp9bccqC/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764246773; c=relaxed/simple;
	bh=GvBjINWJbAJG7yJgjpVuYugMVvB2b4wfV1YLbDv03jE=;
	h=To:Subject:From:Message-Id:Date; b=I7iuk1PpUb5qFYoCUI3BHWqoR71tHVmZDotHCClcfKoJISTudOf+eoHN/18QyCQveWN8O0zovqS//wJbj1Dn9mo0IQAZhC/q6b4oAJHhbD/69YMBN0EUYoLla41eWrj0/ZXljOfMtM0H/37IVjZbPAXv1XFWcnp7A5+RlojkN5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C6ww0M0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C6ww0M0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21FCC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764246773;
	bh=GvBjINWJbAJG7yJgjpVuYugMVvB2b4wfV1YLbDv03jE=;
	h=To:Subject:From:Date:From;
	b=C6ww0M0PUsY9L/PVhG2oBJdZx83EuGRHJua/r8fyLq0zhUEo1HbzMLq8Los89UgvW
	 JATeWdrFNS+qz+3nKGRqsQ3jCsIg+kjzSOU8EEFx2umb/s7Ffs6lISImPNFCCJx5yp
	 UT1Eewhrkrj+sn3W9hWepv+PlPPsaOwuAdlDVmY/TmWaCIu94leq8iKcCooDPVXFcD
	 qZQnZiKA520/amR9zCz4Aq8spD8ZEplTUguGSnN+q8jkXOvhzUctLsQ5aPGbfcqdhC
	 fImJTjtCPozqjYS7nbT7QBdxm059AswKu97ctzsr5IaDSjqowMNQ/bRwUO1AIm8ApF
	 PJhZlEH1jXxcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9095CD11183
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424677358.6965.3649175748369160315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4c006bfbd9523e97a47dd857cbcfdadf7fa32159ad69817bc5fd50a41a6d7e
Date: Thu, 27 Nov 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764246773
