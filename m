Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131641C5D7D
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761056394; cv=none; b=JMuK7M9XErdMrbxChV4D1z+9G5HIoy7HQa1MH14o4Z93atRj+n6NcR/qg48O/sTQGAzQoAHPSHfZ+KM5U6r/Zv1NC+dibboR911EL7PRMYmdpLzITyXiefPuwDpUWUTRnWSemjMln0TMCPvSumw63OwMEMfefos+kygvPiINeCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761056394; c=relaxed/simple;
	bh=sG8Q4mmQLb3uwmBI2MrH3OZj5vWYePkTyEQxWUiS6Aw=;
	h=To:Subject:From:Message-Id:Date; b=FWmbK13V/0ozE4YqS1z81fwnmS+EkRCGVUxA8PPaAB9VDfpgTm3Ri9AeSDC3LZr5HUTTnCKT32Sl+TVmexWuFwNQDcYxtbvp6QXd6GYXV9zf4rz7g6hA7jEJyslg1jwvS/Xi6H4MYDtGBfl7aFPhiRNX+Tj9LicBI6+CjCs2vw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byQesi+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byQesi+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C2C4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761056393;
	bh=sG8Q4mmQLb3uwmBI2MrH3OZj5vWYePkTyEQxWUiS6Aw=;
	h=To:Subject:From:Date:From;
	b=byQesi+uzlAWPnES9ymknFyfjdW/kWZeLXCP5IBN1sH7memAYqL/fmdeqOUYqL/n+
	 23VpjdBy381Th/es5JHZNOt5wfhuLo4PQ054Ijl5MTcNbhl6ti2g9dt/guBbQkXegk
	 XRF2utaGt2VEu58O/C6FlAQh9jvvFyATdht2wujNu74FuiZgZ5d0D8p+4XUXkl6RVA
	 j7VVz5Bxt4z7LvxCCOv06+4vtCZV9Bus4sprFd5ywZlGLAEpF83pt8ZLVjURMDNP5s
	 G+WKdZroW+B0+3nZZX4cG7Lo0NolhBSaouFQD1qHQUmI6jcntxA9Gxm/vJNUhbwx8R
	 hHbZDq4nDsq8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9017ACCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105639358.2905.12286369464428695386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109ecbc1c56ce4c0b96163e31b97fc3580667aca00137e0118232ef83e94fad2
Date: Tue, 21 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761056393
