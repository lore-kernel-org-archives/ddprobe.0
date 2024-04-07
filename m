Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0131E535
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 23:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712533097; cv=none; b=YoLyhg9qg1FAMp0DtdubzIuhz4C83i4w7bak0E4A81oAeIILajYJfmh6RWvBe0EiOhEyUe937toIHA04jeHMvxMi8uc+jr3E1H9PPF33csOP5ZhF2z/eWN53jRuudiZd8MxZgqpBrSP4Bx10Slgy4znvHbfa5e+eaO5juhK8TUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712533097; c=relaxed/simple;
	bh=afEBZVdGzIG51ObM+SAaRMw4+1qBR+8HI9QqfATtnhA=;
	h=To:Subject:From:Message-Id:Date; b=iK+WBveP3QutAmwUE+Vc1kMo1JE8lSCWNhlTee7s98nUODQqrDoCuXarQ8OpGaR0iiJmG1h06tkJu3dURzdPEehmy5JCiIUIoK8pKXHgPZadXmki9Ks4SIrYPu9C42oIdu/vL5YPqTeGJnwbRM6o/zsvmiyBHvnekV9c6BHNqzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlGwc+r/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlGwc+r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 833F7C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 23:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712533096;
	bh=afEBZVdGzIG51ObM+SAaRMw4+1qBR+8HI9QqfATtnhA=;
	h=To:Subject:From:Date:From;
	b=DlGwc+r/TpVrAIbhYLLYuE0s9trALwKPHk1sBsFf4YsGFYEm6sLhyxaGepkzfpUT9
	 5cRdloSF5TuG/q6FmEugreq71UCajDebjG5VevkSiLujiePc0oAUqhGeSq6v2XwsSo
	 U/rrBNpN1fe+PfIbBydLwqvNBSedstMi+oY+zl5kyIIrRMy8SYjoHmV6oJOKvtJGaU
	 avDqNwNeMVB4E5rHJa0U+9cVhdN2a/wjkJvLQ4L9mbYcJPME0yWCsimJ9XyUKvpGx4
	 T5Sp8Pcd5J+lSWO8KmBEjWyZtvG+J25HWyR0JSOy9eE9p/yTXzawDr/w3bxMOi8adS
	 Z+Hc1g1D0bF0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7305ECD128A
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 23:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171253309643.10636.4454183397817841986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c66824bb8e21960a49121dd388f03c7d0e571b596548a2ddcf9faddcfa81ede0
Date: Sun, 07 Apr 2024 23:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712533096
