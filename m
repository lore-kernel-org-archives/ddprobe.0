Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3713C1F
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763257854; cv=none; b=OR8lpAVgzcG1y7BqJ1/dNkov6q+O0wGk+zI3EvkPem8trvw7/2Y2gNcxnTBlXzMRvCgTwInVAYJp3KXNEbxco36uWuBoqWdJITvdrwBGvgpFNQaKmFW1JBG1CEqaKXB0UYfDz8AAOtK88PXncDow2xYAXobkMKc+Tt0uILKuxAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763257854; c=relaxed/simple;
	bh=xNolH8fZh5QXk7gP9hMzKqCRWiGPhsAVrcomdOhfq+s=;
	h=To:Subject:From:Message-Id:Date; b=ehFw9zjj+GR5p6GBotVv18kGKnMhM+6DPmN80IPm8P7WlerrzMn8DtlQ9WzYz2UwKJ6f2++1IeSfQHRY+U2LRJ5WYD3zBRBaEOkclGM7o9a8KW7xPLwledzerXWJtH38f/CZrtVPPkZhQXIGKOYK6DIlOCDg8K9/VIMLpN12+wM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=We3AIxZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="We3AIxZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5C3C113D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763257853;
	bh=xNolH8fZh5QXk7gP9hMzKqCRWiGPhsAVrcomdOhfq+s=;
	h=To:Subject:From:Date:From;
	b=We3AIxZzGCwYQXVf0+pZg8uYw72CgRI57ip53XdBgmTnbpsPh6g8t7Vej5wUsQUSj
	 k94ecUcbfSvM6/EWjV69EQ5PRenENIlZ96JTy6HaPVQfu3ND0thqK8XmXscSd5O4rh
	 xrij+E4u2jOB1DpB+4rMxEG/U7XF9vy35DHOyUG8yCBzlgLE4XEGQ4W1jvBnEjqHSU
	 G/vq1Qokvi7kFoY/sgSsJNpPIy6Pa+cXhY0wG1yWitY3xGjDveoUVSGxdGwFT7zms3
	 7c/7TU/MDfRMkyF4I1sZGHlcKgsjXimjFNfLIIRNXAaSjPz1/sl3OiNh5kOLG74ebN
	 x7UZca6KJC14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90122CEBF88
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 01:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325785358.3225.11385019598989124444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14ecc39cc585737e8e34ca62e02f9fdc4d5256dde5af5efff77225b6a237521
Date: Sun, 16 Nov 2025 01:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763257853
