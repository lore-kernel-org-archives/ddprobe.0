Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E69E288C2D
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758751194; cv=none; b=TbOsvIsHyRIwwl52rCF0cdak+Ds/GztrjLvqDvJ5wGtYck8tX0zQ1G0qo1TJMoHHghjVEwDxLHd/R9YijB2fj02Fep8e5oN8/vkJwMmCg++FHFkOhD+TPlt1E9pxhywPnVRxhyZBa9HYw2qPeljLHgyj2v8gbybtFt9VZfy8gHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758751194; c=relaxed/simple;
	bh=hzW+UXB1Ndgv27uoAdwhenC5HsXpmlq1SqeFxPCJbnc=;
	h=To:Subject:From:Message-Id:Date; b=Oz/gRxK/S1IW0DN/j4HXuB4WHBWbCqbz2VnyN5V/HkIqBIGqsxATfA+GZ408NKIePRQQ7FfIxye9QdDzpIczbJlsTnBYuJaBPGMxe5iJIRumVxjPwaSarXnRdiHL3jZ9PSt3C9hG0nd2XELtY3g82XML5WWivdzXlvRUU59dCJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KH1234RE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KH1234RE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DC2C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758751193;
	bh=hzW+UXB1Ndgv27uoAdwhenC5HsXpmlq1SqeFxPCJbnc=;
	h=To:Subject:From:Date:From;
	b=KH1234REhhq9uNsEeKpvJG9/WX9LFiZOSCH8PncfZcu3owbSe6e0Ci7wJNdyMpXe5
	 pe8x9Ozx0Bz3EgVm0N4koTBBl1DOX5gzNq5KjPTmVt+qTTmeLKZ27f+LyLcbt26Qy1
	 eQE+RwmnK/6l1IEDyf9sNPeERRZrsbkZ2140b9/UOHNYhfbmFtsyMhYGbIFr/QYsyD
	 L1DQPrjg9DfjZSZ+VPHkfEtaCUK90hvzaQkwDf5UVblW4ioj9sZyIJiNH/17+jShRi
	 UdRqL/0n0Xuf9LPJ36FrYg3RqQaSClNeTNCYZivMQCzKATZMNCheFZivVMx/fyB/yo
	 kHsD70NvFQXmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93156CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875119358.18945.12887531959823644700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 123dd0da0994c978847373b70fafcfe9503cae3bcba9a8ffac41ba68392dba96
Date: Wed, 24 Sep 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758751193
