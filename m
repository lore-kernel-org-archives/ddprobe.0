Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5AF23C4F3
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782077794; cv=none; b=tQB2LTZMrhsFJC16uDIxSao+DPwkX7TVnJOo71++fpsb6pZbZi3D36VCr9mJ+lPjKky6ZpiWkET0PiQu3HP8Iu1ufBds8t4gPWfSaegv+VpmLEsChUJdJjCXflSDWp7eU0p40ZR7L3wzWsNh+mhHkfOzfpsNksD+QPmjww6ukJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782077794; c=relaxed/simple;
	bh=s9toYYZ1tMtimU9jKCL0wcbI5GGYQQan/Ij1dBKLi8Q=;
	h=To:Subject:From:Message-Id:Date; b=RkVom8gmrYZvRCjF1E94DCuukuC/yvApa/WJ/INYeNkaR3oGnzI5JYqVwvhG3NWUBa+i6Uk4HAGQ8cOYBsUnwfZQ5vuwnou6RR033dvfWi7nKZFthAUqnd2CKL5kFLbARsYNY1cv4DarP7X5+YsvR+bnmrjyoVnuA/H8mk3oTg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMnNLKrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMnNLKrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60E5C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782077793;
	bh=s9toYYZ1tMtimU9jKCL0wcbI5GGYQQan/Ij1dBKLi8Q=;
	h=To:Subject:From:Date:From;
	b=VMnNLKrb5a+MeGr8wh4QotlIU9LzBRRb+8YFpExGJPcQhN1G6LVBIBubdFOlsS50B
	 OcQrezu/sQdweY+/Kb4o0OaE8R/jd4e+PFRDHwfRDstttEeJ6uEGWxXCoo9W1meXcE
	 Uop+ILsbcxdfEsvs5oAZlvqUROy9M4MJK2OsLC3gA9tPfCNUtcwASmZKHoIUhIgVmA
	 9Xrm3kWJRcxrw1P5yZLOTK0yhvjkfdEWRaNGtc+20MMRd05tSHPKmlOYJQkqfGVAap
	 vRaTw83p50u9ZLPMq5+TYOfT5Chh/aEsZ2w96d4Zcq25CILZAA6qprfKaB3m8OWh6Z
	 jf6z3NScflenA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB0FCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207779369.22237.14692874528059569281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14db27f035f3a00c314e46f125978c4c3efde413410448e8be837106a5c9dfe6
Date: Sun, 21 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782077793
