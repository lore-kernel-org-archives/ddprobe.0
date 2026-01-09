Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E9D1A840A
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767983034; cv=none; b=i/DxSREcgovjSCPDSYWMVDSOm471piQ2pQ8LCbfrhfOY7Ap9BFLwJm1CJC3CtlXXn+x1k/CIoZCuwu7PJMp2enmw5r339LqPOmlqzruC/Z+WrZ1uP0uN0rQUYgpxd4y4aKBETCCRinvIrpEOJSc9TnHumuYsxWSF083VeYwwC80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767983034; c=relaxed/simple;
	bh=66VgGCf6bRAXh8cQnjBi2QLVd5kFgQeeS6eOTan6gbc=;
	h=To:Subject:From:Message-Id:Date; b=ufkV96xfofX86znZtYWrZOXYPirM+rJh3DBiaVeMLPuXeakRIvdjEnF3OvDXiqHQrrHupwlGQ6K4vhimcM9V1uGD71GpDMlPGQgES8wWK3Zk1x2L+tCWKmVjCPPQ4QFNU92BEsUPzgUlkGiYcOs2TyHg/NGOynZWszqoqzSxR1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZcCqYgFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZcCqYgFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97585C19423
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767983033;
	bh=66VgGCf6bRAXh8cQnjBi2QLVd5kFgQeeS6eOTan6gbc=;
	h=To:Subject:From:Date:From;
	b=ZcCqYgFgVouWPm+WY8q7VBex2mWy1zuiPrcr9eusMyJlwqqqLiV5zDrLcNCFZSY9g
	 Z4GrG66L+sYn5qCTjP+po77LkUTboFh88Zq4+jcfSZ9KMoZ7CxiZrqTRGgBFd08K48
	 a99MPFxK8rI4Mql3z4TzTyld+0hXRKVMOm3wjleqRaw0+2xq+vBz+bJxTxuXh1AjvX
	 JDAurblzmBydMtGEQG5l9teDipwXcmSJ8mMZPJJfHgfQqqfOnKOY0EOP5HwcsyYEt6
	 +GIKFjsjGIxd/lXm98d7kZe2QQpg3o+e7O4Z+rYI0tZJAcryvnpvk/XdCsUGQ1cnGx
	 32tHTEqbGAymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD61D26D87
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176798303358.13617.11882948570180544211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba52cefef642c13495af19a6fb600183963b622d161d25ca0c1ba84cfe3776d1
Date: Fri, 09 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767983033
