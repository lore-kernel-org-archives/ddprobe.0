Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A4A11C92
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726544754; cv=none; b=FrVRjmGcPnJ008uSi8pCsWTq9uw921uxHrAcRRX5v1sdsZpbpkVClyx2O44lgcvchMwYThKuSAJuN8y7zITOwt6EZtLofvzdZjTFMsv1sFZpSwm0AWLX1P0gEqZO0Gk0y0wP1HiQe+HlLDpbkSi3S8ua78Z4YhRsaMg6cJ4cNjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726544754; c=relaxed/simple;
	bh=KMsd/kyAd8pJyiGedU/eq3IfeufUyvSYNmkE1LGz8LA=;
	h=To:Subject:From:Message-Id:Date; b=ghXOqXvv+sCaYq9MecEc8NOaT9WKyUCOf/Z3a8qs/kQG4a0BN9diS1bqdemARVw9okFW+amlq+jQwNhaKgxNuC1pNZSDKLfp+0bVab2sLU4mdApbV7OzZLf/UugKpS3iIN4OD+UQC5YTYHo5HkDLqaVZw/D2BsZlhd1Fc11FoBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quJ2VcSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quJ2VcSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9CDC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726544753;
	bh=KMsd/kyAd8pJyiGedU/eq3IfeufUyvSYNmkE1LGz8LA=;
	h=To:Subject:From:Date:From;
	b=quJ2VcSR0tsPBj7d2UJSZmdTv2pj22dt2OE78Y5voCQeNhKP3GidxL/aSEDzhpBd5
	 cudE08kc6f0LV7wtKjLXfkeIi/IJA27u+RNygEx0vDg1aKRQesd4Av50PZn7Je21lZ
	 muiA6VcbR2kSQkC7zMoZ18RrzqmBiAzHlibI7iEaoXzUnDApCDjLXVAxG6t4C9h2KM
	 sEuq6Ers7UMN8rMwrDSUKGQCjj0tdRsG+T6MenV5/IzaceAk28Zsj5Oor1AQxYdXZy
	 w9527yviK6jg+2hg/79GcTyIPIPVmxk0V+iBPR5FhSq/4P8JEVb55LtL5q3HikMWC/
	 mvtKPfgq4N/Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E1CC3ABCE
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172654475359.13743.17954886618130912865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aefc2bac50f0a7f8d5417d34179ff7259a2c91ae284aff26d2732e9b021882f
Date: Tue, 17 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726544753
