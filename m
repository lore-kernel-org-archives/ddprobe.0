Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1136636B04B
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768346034; cv=none; b=sI8I2L+iYypLV5waUlKjTqg5m8ooU54OAOBonA/+FTAV3ukIrdMPcSBDP3hH56jdAwN6cQDh/y4tNatwHrWgePlzZ14ieSaGyZCnSiaKJ+fC254CpEKlXUXS3PzYUwtoDfVwIym8bixXDZ4CQqqr/I3GDqE+Nn16+NgZeg5TmKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768346034; c=relaxed/simple;
	bh=uBBLnCdRQF50QJyfBcIj000GnfTjyG0JCYvQG3Lp4q4=;
	h=To:Subject:From:Message-Id:Date; b=W3yNGBz9aXeh7rwV0hK2SDg2YbROlm1lwSXOSNQDDoX/UD+bvOEmqwd74Fn6Z+Oqe1z9CKl4lwG/cEI91RJxUquBiy7euKfq2IVRmSIdBG7KMRPEvGV6Pk8baGSkubRR9n5uwDRaq3hPbwPCIg+PDJEDAyF6+iXXcR8zpAAfYwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drrtFeoh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drrtFeoh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD0CC19425
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768346033;
	bh=uBBLnCdRQF50QJyfBcIj000GnfTjyG0JCYvQG3Lp4q4=;
	h=To:Subject:From:Date:From;
	b=drrtFeoh1edu9RVdfnJs3daAi6VRrQU9VrdRV9zf4dOdyXVi7IOS2t7BErLR/2dJJ
	 6H2L+r3aBMPLuxll8xwmOTeqG+8NpMrjTfmi9FfgRMke2TM6939bI4jbV4IPOSh4un
	 7CwF8DVQvnytMC0h5HDoBFAozmk2z4MYAMEdvxZIFYamlAEObc5Q9NSWUb09Juno9D
	 MdjGvTQSw1D/F8HVYd2RRK6piymjUPFDKXbd0oRcy1HC3ikDzuTW0WC3V7xwXxcB0c
	 IejqXaKs1TeBjN0cPz8/RiYLt5IHweAs97WSQjbt3zxtDq2Wu6sPUr7Zyy7YB4b9Sa
	 6qu6YWXgEifzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E9D2D0FC
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176834603358.4616.9017025558637894290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60005db581651aaa4c99d2a0e8f1f180cf35d9b3aad6baa880ca9ff8f659f334
Date: Tue, 13 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768346033
