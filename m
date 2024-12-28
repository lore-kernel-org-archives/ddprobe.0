Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BFF17C
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735344354; cv=none; b=PDLoWxYOzpjTAhvNfmig7bhkPp3Y+gyDgueSdrD5qLbJOOLJ1GkuoEGz2Wffp2dSrJ+4DC1jm/Y0CGvYnRvZpm/zb3wfaigXq97ETSVCKNF9+qs0YPe30nh1LKkygb53e3Za2n82EQg3hl3jSi81qx2aMdkXagC231n8nf5DHMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735344354; c=relaxed/simple;
	bh=QRFQP0kyJ00o5l7W1G5vsGpOXHmCzmvEpLa8P3KOCqI=;
	h=To:Subject:From:Message-Id:Date; b=CRPfGQIgZaDydztTrjerW29KilUtimwHeD4mIEZYMkT8tkMHdQmtkwtXygX+QGPXObOtWqjHVDOaJRLZlDUbolcxuvk/IWyRC+Z09/Y+BWLXwWkbVaG1QrtBEb8Kl0BZbclfh+8BJ/3Cd2AYJHaz1gzMCw5U1CuKr6BRYIHd1BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZ0nR7yD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZ0nR7yD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D8AC4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735344353;
	bh=QRFQP0kyJ00o5l7W1G5vsGpOXHmCzmvEpLa8P3KOCqI=;
	h=To:Subject:From:Date:From;
	b=SZ0nR7yDzuhk+mgOADUe2MWrt9WheiDyyDlM3thzNl3+H2RdCzFEkz/TUbTAhFfax
	 GatISlYjWusfHsZrbD1l6wU14vXtzEYoOudkvN9+NscL2OjcaHY66ay4+mzpRfCRfr
	 ohDdXop8QrWbPeY+xTbxJVUuI07D7wyf7xAdB3+gC0txA8tOrYT58D67mHrOWT6DF0
	 89og8EWDpeLqXPHX6ZG4RZtQY6O3cG+5Y7rf3jnXU2MWB2yRNy0OnvOhP+rqQzB5KD
	 O9aZXwUEt6HJFf1tn7S2w4jcTNq54YY4fNrEq5ueGytbMzQ3aEitaouadIzEZz9r6A
	 yl1K3Tw8PuIdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9628DE7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534435358.10126.1892538143403358686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ac7593ba34d3820e1fa975ecebf98ef9988e4f6231764f1b88ef9ed6cc8a337
Date: Sat, 28 Dec 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735344353
