Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DC81F3D48
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258754; cv=none; b=slTgy5jj7PC1XvSTVCzVyvD43s8Z36towf9q8NMdwRq8EjrkcrvyhyjQAvaFvhSFeAU5uM4J9oz89WcN5pPVETZapJMW+OmJSja0PfhfKp9RGWuWuBbC/mVFveMAVPsG7ZmXgEjJK9oA+z55DmlNF0BBdMji7bd2YgtYySzj2Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258754; c=relaxed/simple;
	bh=3z91PY3A+UI9EdQT7hmF+1KTm7ik3InNI9K4a0qRUZU=;
	h=To:Subject:From:Message-Id:Date; b=P+85NMt+FkDTItDTah6ooL+lJPKTeY0w452iIBL5onIEiD+//0scIRj/ZmE3QxwXXFFwVazAalbeokqhAoidye/2CX6B+K0+uVGrTWVnMITk22Pxi48c5nfxdAgnfvs/ja/zz6DLJJHm+65nTIPhGWmDSPqCMzW8nGwWj4Se9C4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kj1UDRVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kj1UDRVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD231C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736258753;
	bh=3z91PY3A+UI9EdQT7hmF+1KTm7ik3InNI9K4a0qRUZU=;
	h=To:Subject:From:Date:From;
	b=kj1UDRVC4hNlF9jifvXwB5n8QsOSnZ5q0UCQ3pQXG+LvENpoWAGadz+vH4htUX3Gh
	 7XYqCsMlO0GQZWfGNPjL8GNnPvJu5gtPfiFf1TMfeItEVeogF/9bPI+rpAoLRmXkAO
	 h2mlr4dNrkuu1F1ZYlVxXWkrCm+jSWfzivZsma92kSgcdAe/jhPymdrCZHAO36Izlt
	 MVUmr0TDQHPfAMGMC720Io3UoMO8Ieo8PFZXblG5FQm0+mHGLwyVs3eURgVylIugWN
	 VKTv/dhWoMXBOirEQ+NhxXk2uDrqE/yNd+XL1+RcXTHfewjd0Re3TbdnaE4eVZyCUr
	 DB//qx4M2ZsNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF14E77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625875361.15952.7214160136892966084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d41cf348866d5ce33db6ae7c019aba030e421d8e739ba8d2fae89362ad61c0c
Date: Tue, 07 Jan 2025 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736258753
