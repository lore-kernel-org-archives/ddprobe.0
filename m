Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AA378F2B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783219714; cv=none; b=oGrztYp/P4H6CB357sPW2Ao85WtSPE2c/wrr/YY50FiJH/TpvgkbicCUG219i/L/dVvHXwXY6gZ6hZoi7U/XHBsrXSK34kLqt210niYYijO+VyJ+YM1GQAPxiwuUvYqwtvVXws+HzDewwvRCVhP5kUJjOI28urTFcN/0n9ajjVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783219714; c=relaxed/simple;
	bh=bz5MdPozmZao+qELhXZSag/G4Nbr3EfzEmz+LtrYxaI=;
	h=To:Subject:From:Message-Id:Date; b=I6J3xzD6g1djtYevxMS/vWhVewIR+862NyMAibK37NIDaZy98piMLIGJI4XQlQ3BCH25YMgEtqonvbN/npG+wiDv62y2E9DHXrS60BGqDyFZ0tsxtKM3pblEtMg1Tvzo2DTBNYX0zeRL82lQSozyyfQrRaoG8FkGUUML/D5xOpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NB7CkBBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NB7CkBBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5528C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783219713;
	bh=bz5MdPozmZao+qELhXZSag/G4Nbr3EfzEmz+LtrYxaI=;
	h=To:Subject:From:Date:From;
	b=NB7CkBBz2AG5F6K/1ANTUi4Oq/3kj0UaJKsdsDkcr+ZBQZjRDKwKGAKWnjDu+VOSm
	 w8+iQaa5QvAuUDsZ3s71VUXxhKB6EGXjlRaSMwQ0gROEja3J/r0L09G9IxsyrCJAuo
	 HE62v1cExwKNBSZuF8eQSGU+9Jj+qemeO7JbNgN16nOD/V3v6Rt+ji72Jo3YZUGR0v
	 Imc/uU/ERz9MdOQuoSUUC7Xk7HxXR82kd/Bcn7yS7eveY1XJ3/e4T1SMLTmDObKZhL
	 YPjln2/cAVc+wx4gDDp9I2kNuA7Jo87jhHQYNHiGcWzjFINFteYGuo3pvIDWuvN4hm
	 zghJn1FJannLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1B2C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 02:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321971368.5807.1002275085086314200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18c59e44b713c9a2cfde892b7e6524917456202f1d0e2fc80bb484052ff851ef
Date: Sun, 05 Jul 2026 02:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783219713
