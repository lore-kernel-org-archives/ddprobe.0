Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 490D91870
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724904354; cv=none; b=jaXjIk5LRtwfPiBd1AYbhQcQsxkqziWSECpUOQGbLgcgRYqkMu7+v/7SughKIqamTK2URFLn1X3CyeeKSknQNKF9AyNE9yb3JR6P9TDLzCOFd/4T7WyOKOc1FnhHmSjEAvdxjQTJeR2+QRdFcdG9YQMTlHgixf+JqgWD160LPFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724904354; c=relaxed/simple;
	bh=Rgpj67wfTwVccntg9yGMlQ1Zv5eYRuml65sWEpURdtg=;
	h=To:Subject:From:Message-Id:Date; b=DppQMAIMHgN3TrpEBUxyxajGyXXEtnyMhx2fYspPXJrMF+J4ZsYgbf0oB++1fsQjCq5HyYSIHOs1ArP59l1nmC1mXtRF08W0lPMlsUT6Tz8i1J9O4cncLBF4elMMDxhkm7Q9gTzD2IRzeRUJokAVaOJ5uyWefyS8/TRfNGarvI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2dpmBzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2dpmBzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3D8C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724904353;
	bh=Rgpj67wfTwVccntg9yGMlQ1Zv5eYRuml65sWEpURdtg=;
	h=To:Subject:From:Date:From;
	b=f2dpmBztX10E1kZbB4Il2QL8QUdBSRPsCp9q68xXi7GAOdQ+7qs7JWS9RuqE5u5ii
	 8HJ4zFl24sunqvS2g0+WnXVR4JR0N2zM6aIPhx6DzJyZ17U2eyDB4SEblEAeTwTohE
	 vNfCdqfDqWlorHF4sjE4fagbb31IUMdu/9ah98bfUjHxElZRY1jusMRy8aBAyRMEsi
	 d+MKvGOOIUUxZjCltITWP6yGdupmAi1I2n+zNv/Ht1ojfxEepEyAE2BohhsdQc1Hvu
	 FBW1ErQHRV5Ap6O3tpyTW4GNrPqStEgcaTgbP2iICKQK87UCyoMGa0GLtzknm9j6NO
	 v8NqMHfezrjTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97261C7115D
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172490435360.30319.7338964887345966890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb1fa30754b89a637e1a5c31c26e12b9dced1a2b0ffaa78d200048aace23234
Date: Thu, 29 Aug 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724904353
