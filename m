Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB1D522A
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727378154; cv=none; b=q3b7U4o62rA+bsn6fqUcP2I5mIlTN3hMUZbKp63fuNSGC6PxBjzc8q/tIh83zs9/jksoqpHhGcvhx5aiP7Tytzy9K+BoiMtRSJPMk7GNE7y8wNKdyTnu5Ae0yyj2gcRhq3Mt1EdiiaSJ7O1K7yjR4Q+k2CrQJzJdrRKUS8+o3+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727378154; c=relaxed/simple;
	bh=rCyHJJCvEolUXyaubLEVIa/fqIup9ikU41IuuLybR7o=;
	h=To:Subject:From:Message-Id:Date; b=hFjkp/PJg2Iqx4MZrXsBSWyBZrgJhoHT+pHjajABUHrhL1MZcWWirlrI56guFWNkm9Tl6NdIajdScqmRj906tJSjoRKTUxnwrA2DQ7jpEVTVKdFxNL0ZZv+NlODhTr7V+3NWATgXfPcnAz4dqX1Fnsw9P4FikY3MLhhO3n0Cb2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc+dL027; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc+dL027"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67E9C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727378153;
	bh=rCyHJJCvEolUXyaubLEVIa/fqIup9ikU41IuuLybR7o=;
	h=To:Subject:From:Date:From;
	b=Nc+dL027zEJIyXcXMZwRfuNm5zmPuReg1490PtXDwko1N7s56VfvueAMfmSXkh++6
	 DiKyorLMPY7s/bAQ4FhofceolnPDNmtuq+Ocz9fofCSFHmCH+RUs2irxJhA2f0clVO
	 ywQPz/2EJp1MUygtUIxAqAenGg3ViC8X5A3NX5F8Qn8OlIr4KLVuXEeO82UKJvAL3Z
	 eLrT/PG/cf0MLf9sHvdoSBcT+LkiYRkhOcMkhXpP9ntru73EHt3o0dKEgmW/UV40NC
	 bWfQcaP5ELAllp3zSoKMVAn6ksVrDb2c9oZtZbZq2baVTnRDF1xpXCr7aY7zyws11+
	 tUvmQKZa3s2ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94045CDE032
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737815359.22307.12546828939207857372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20d1e4e6d0268c1606aa20a2ec3935234ba4cde7b714f2aa6244a1b136f31d72
Date: Thu, 26 Sep 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727378153
