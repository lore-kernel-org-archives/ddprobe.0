Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5623915AAB3
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 09:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713432563; cv=none; b=DuIkYZs5iMlZK/tcMc3qqTyqwESrDEkK9Lc0q/n9P7JCeDRNlGpJG7pTr8a4A9QfxiRc2EUwbutzL5BR6ZbcziAlZ5yVQN3/aUKoGaUMLipMiR0QuAcv6uEC3AVNts537YhVyG2HyRbfqty2D6QHWaQuEQ9vsAO1HF3b5BDknvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713432563; c=relaxed/simple;
	bh=sFvNDfF8Yd4vw0QpKkBkgzbrD9pH9svXd4y2Xxb8C8w=;
	h=To:Subject:From:Message-Id:Date; b=EyBV6nPMdsHsx5G/vJgJ2xxfJ713VDJ5Eh7DyNQvxL5RaW5rUQ58TEpFbcsZeOxAiXjKrTFEr/gPKDkOIQanyeTNqXqKbt/qGc5uN8yLj2CjFR1DX1kivMAtm30T+7s+hlGVSqTXIciB0de7R8Xj2u+VNzez7POmIj99+idDZ9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BytwBAD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BytwBAD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D987EC3277B
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713432562;
	bh=sFvNDfF8Yd4vw0QpKkBkgzbrD9pH9svXd4y2Xxb8C8w=;
	h=To:Subject:From:Date:From;
	b=BytwBAD/MY3Him1zznbsSoZuBXgoiLQaWrmZittYs2qi3io/iirssDCFTR5YM5j1Q
	 hFAiyaDw/MUn0fIrPDRsAhwAZsxvjqzH/wDdoShvOkwUy3ZbunV0F5dTmu3yF3Pbg6
	 BcoezcHXX7bsh/lyOcMgbAYXdtbb9ybnI7t395/SFuvMq+uEfE+GgviXyJzHlVMBqF
	 Y5ryymA97Vm/nSNk9GBY9O9DbaZ1nY7IuwOJifRuYrzTvIcI1iBKy87fVJPSXhAWKt
	 7jPauz66fy4XfMUh3InYuzTYN3ZyfTRFTqQHxsLpGPO/N+h1rNbmH81ek65rA0qG+H
	 Qs6uB6FVX0zWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF47BC04FFF
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 09:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171343256277.24185.17277502599408830613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f90289053f2c12e302aae81b4fda7fec03e479f394e184b248f48ec98ae62e58
Date: Thu, 18 Apr 2024 09:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713432562
