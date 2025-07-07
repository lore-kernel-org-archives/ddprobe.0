Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113D420F09C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751903396; cv=none; b=qChnj1+Gyqxs1l1dvCP2JEkTJ5npmLOUTDQzRuauBQM80t9KY/gjLG9am/wdt1/x26mF7fYj3/G6ApMF1Hri0DmpPZRr/T/u3kHKPU45cjoc+YPatAUrmSbcvJDgNCEKH6OrqwZpF+39EepAXgRXM05daPK6l6DJGRZYNWrJrkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751903396; c=relaxed/simple;
	bh=foATl7lPtG+DxURDInGt0UXrywgsaqSobYY/mansoWA=;
	h=To:Subject:From:Message-Id:Date; b=VArPtB7m4VdIV3dKgal8k6cH8f5B56OHe2FaAAbWfi1Pc+ibx+12LGgNuhU8NMrjhBNZgigZc/p9Cmp/4AtcEuMRBOu2/gF+dC2DXr3jI+XKBxkeFJL4UUPrPvylKYBAz7Zus/fCaoMP50vFbmZenX0GEWk6LGNvQNMYA7cdZwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF5u0sHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF5u0sHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F620C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751903393;
	bh=foATl7lPtG+DxURDInGt0UXrywgsaqSobYY/mansoWA=;
	h=To:Subject:From:Date:From;
	b=KF5u0sHW0iW3dW8YHi36/1NRpkeCWQtjUoumcCaK0mReAm3KkolKIFyhgjrkYp0dP
	 ZNzj69A3ZOr/Z0DM1K8RPBm+Dy6IY61lMg4bpCoOYFEr4NqPXdcvlJ4Y3XAkxVMnLW
	 klgcqBuaY7abb6ja53O1MdyH12NWAfGsRHJMA7xf+Z4xprMGuqaiggeEMsZUyXQTNI
	 E4S2VDYlYSXgCKoQCcXmhT/bocL9CdKjkm/P677JL0GSBa3jMNf9Wgm1NxiCvU1jWG
	 ZiETycth/Hy8oQgXeg/yBUsDyxayiwd/uhoJRM0VvsEgpzfKstGWePjdV9C6YzHU4B
	 B5WgudzPZ6LkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B3DC83F0C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175190339358.10335.9692692604574976651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d5a9a78d94dad284bec984d93e39f594eea8018240b7cd95e7e276794d1114
Date: Mon, 07 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751903393
