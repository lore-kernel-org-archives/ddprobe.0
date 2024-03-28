Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7E7B36B0E
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711648096; cv=none; b=Y6f1UI56eonPyDt4Heo/ArQC4On1PoR+c5gK0QS+HHJ1yt1hCW6r78c5xU+CHDd/rZHedu3q1Hq81EsXL0h9BHH/f4q843TQsZdrWWWn+KQO+qGdheKmgQZRN+i1woGvXACw2Q/R/cHW+4bFKZ3bLTZo/7Y2Om147O9/+lxbLL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711648096; c=relaxed/simple;
	bh=rphcB0F2jkpNsbrpKukEtYq0ev4C+KCtCqAw/S6ggko=;
	h=To:Subject:From:Message-Id:Date; b=iTiztogJ2IjvobMQixksD2uv+cKcezHMoaowIwiMnnOPDOVsrePVlFx3Pj5pJ1j+MJ/0bouqNSDh24sQATktiXaRNEQiNKLXrs8H9MGRiYBxes+xX4O82IZl5dKsAe0OoYAkkNeWgFAw/fEgenIZ+Qse2E/B7apl8M7E/2/Xq4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y16HDcA7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y16HDcA7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78E9DC433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711648096;
	bh=rphcB0F2jkpNsbrpKukEtYq0ev4C+KCtCqAw/S6ggko=;
	h=To:Subject:From:Date:From;
	b=Y16HDcA7eckWxHfOpGmcn7Z1XKcG7RFign3siFU2F09rwMIqcwYH4HvKzPoFL1wMk
	 ZA6p0rh/mHVevdKXM2pi8taw+syhj+QnANIRRbrt+wjnD/a1GkFZ0eFEFm99o7bdnq
	 GmKgH6OuEDJ1iU3vPEhImyNM5mOnBrj7LAK2dxJWH0HJYxSj/MBqJaeVm38MG1HEfQ
	 Xmz5sjbsFb01sRlP5lPGUhL1a2bOaQh8VCdrYnzoJ5jUQcWsyh9ZneW6/og5geHVwZ
	 E7BLF17u6h/u049pfat2yOXyX14af+xsGxQ6tMOikTUR7bKSz2MPh1GX3IfJ5Ybiuv
	 cpvRHwPqQGewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A32CD1283
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164809641.20726.5816235478743373019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e4275a17e66d21feec4e52310d7307d8ff9bb68a30e3a6e2ef6b4299388432
Date: Thu, 28 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711648096
