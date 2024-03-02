Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E558B1754F
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709397497; cv=none; b=cMHa8+lLsLBQu1JsvX43EdxE2J8GIYAfAff+GTJF8WfUgJSBJaDz0eIbR9msXQM8h4kdgRp81Y9frg64SDlQ6fnNVM8XkLNRdxJV82Ggtxqgv0iP2NjAvyCrKfKVV2peNSS9lGhZlsRmtykkRJbx+Z2HJeH5Ac8d8xWBL4Xr/U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709397497; c=relaxed/simple;
	bh=6uvNw9e42PrvLXavEC2nIIjt/kZqkmLmSRq1KwDmZyw=;
	h=To:Subject:From:Message-Id:Date; b=X8dPCWmNF1sSQZC27Eqq0NjgLTwYEOmOENLSqB7EEvDN6lDSNtIORJ8/hUYh8fsqeRG6oSZeHNFjiQkenvXYhEWXw+5kO/sB9S8bEiMXyh1qi58ajPaqe9ZkE5J3ZAMXAXxVQDxHstOjbG/Cl8irV2SCczAHEW0Z7mC51NQ19Es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ixgzisqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ixgzisqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79302C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709397496;
	bh=6uvNw9e42PrvLXavEC2nIIjt/kZqkmLmSRq1KwDmZyw=;
	h=To:Subject:From:Date:From;
	b=ixgzisqhLjVco146CRvtDnGEjw2AynZR3RFAQjCvZkq2LAaOSK925bk/v6gf6GaqU
	 P5UbBH19ItaMezMCtomLazZ+skRhkSBpg8ozB5xD7YxCwykIFzePyXLLEBzeAPKwc2
	 IWKkJibuvToiYo0/vI+l7NukMTz9v/UwCaN+RCKFYn9OjaRDyIaKZNQvqH7rl4rm8F
	 j+18Q6JFR/Wnv3Ba7KfXh3AbINWDIQgiKPkvtOEzMBBsb3lQOQLRoDWctpc9iXG4xQ
	 i4ynXclSfImUyhffFugR/PiTg1mgCKIllBigDqplyKfsxai03qjDi83jZUrY108i4r
	 0p1FzPjPn8TKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DC28C5478C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170939749637.16520.2367725526468752473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1f5d2224dd60fa77cb53f130487311acef59bbf5536970d008380adec7ae93
Date: Sat, 02 Mar 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709397496
