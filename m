Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AABA282F32
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777190254; cv=none; b=qve+X5eMaDF1cmceyPXt1VXLIpO44nYEtru29p41ndmUp/cSSmZ4Ke49+H6ouOXSAZVa50i0vSaNS+/zohHVEDfCZLtAi9T8FmzY9JxQJ9boMoQ1RZ3/HfEsxnZfKhRImqSiL7hiweeG8IE1KXMEXwA5KFok153ArDTEc5NvV/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777190254; c=relaxed/simple;
	bh=TWVjdBuXLo3pD8kjM5wlxhQ5nvbZCaqkYbz4keAfrV4=;
	h=To:Subject:From:Message-Id:Date; b=E1BNgmIv3HXUgFDBiOBVq3gseZpUZsWc+QKGRC4bvZg6Jq05IWp8qH9HkfYDhBDFQNfcRKKZ+730fPaV1qSTthpzH9ZaE4MoiJHDNr86KAMsklBoafJTeuiLpFnZ674Xqp5B18p/Qs01gxnhjbnx+jWEZ10skQa2m/mAcBeyMts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HFlAbxyJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HFlAbxyJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA626C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777190253;
	bh=TWVjdBuXLo3pD8kjM5wlxhQ5nvbZCaqkYbz4keAfrV4=;
	h=To:Subject:From:Date:From;
	b=HFlAbxyJASgzdgnsX20OVMqq+wwXG/pwV3qUn3nh6oM5jjvN+C093mRxq8CrqGMff
	 0AJUjHqAjd3XrGM3gpCHb5P9hKDr7UhQdg4GCRhaIietNYKVRXgQ78niuuJBvkynoK
	 RTMIKWuvN5BTzBjseJoR9bzASYmiEJEG/EeIhxnE+PfGzYqD1oKIwm6MJvsodVSXf8
	 uoYUi6b4JipYVy6OGVuF2RiZRISiCdtrYUFJMn8cyF6PFvR7mDxBiDP9JdLvjZ6n07
	 VCn2TrgfsL94Ju0HkVQ5mYfHhJn4dApsVJXmakNtQAh1D8F4uJGR9Z6Q87am+ySh13
	 p/aE+BnzPxgxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFB6FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719025368.15423.7938650405399993710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7c1ea8d12e474d89de2b4bcf276975ed68f1480e88e8384889bcb894c6fa79
Date: Sun, 26 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777190253
