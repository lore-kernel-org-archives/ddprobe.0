Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F53F507
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768110234; cv=none; b=pVrUtQxsEb8qFu4eDeDOMfaw4M5O5g/0TSpYB+YWoLt1BPLFXF6YGQq1uIWOuXIN+EbP7DopvCsqwxnPa2+57SIvA6+OVPx4YemBriLFCdT0nMZFEC8pip4a1r6PSc5UP+m7+6ZCHAcgh+HfevVmMDKXSHtFziuBEeYtSYgPQAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768110234; c=relaxed/simple;
	bh=HeQbhPWN5pqCgCrgkc/PYyZQuGLxzL2eMB8ksgVq28c=;
	h=To:Subject:From:Message-Id:Date; b=L3GVgA8LItvUgOt8y6JkCHFJ7KWgfkVueBadHUP4Tw+VNmEVka9AFT/TUYuE2yyghnXr9LmzhhCeGXQgScts6A5AzU3uxvpF7zb4OAHkD7qb8pG+vwhHGZNIv6R0dGNq8ECwNv7ANIHweMWfrnsKQfJW+etVFIb/cVkstG8OnGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUVpa7sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUVpa7sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF7C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768110233;
	bh=HeQbhPWN5pqCgCrgkc/PYyZQuGLxzL2eMB8ksgVq28c=;
	h=To:Subject:From:Date:From;
	b=GUVpa7scnqgT8jjmfog+cs9Jqnd/mzaddhtrxWQRJrEb+vIrNdzj4pJ+OSL62QA+M
	 9zbbIEdqgJ7Yc9CTGkY2eo2+JRgn9mESOTLn7A5iKniDAgVFu2WCrLqNp8JinjNxvh
	 9SU1jZszYVa8DHdFYPy3lXYKlU6F+SRF6nuM9YFM7tck+ULfQkachOno7qYcDGf5sY
	 OR/RM6hsAu0CactgJ0+jCiH9AsVoFH1lvzLTUj0KUU1lcRcRFWO2MZArzgEPSKxvmI
	 JFLyp7LHBPVLSTU/BJtcDvqEF+xq3Iq/yfDakuB1wbbs1KsTZt2icSSPWO7k+35MO5
	 aXGc7j6+MxuGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ACBD25032
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811023357.28930.15572382212212265728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84628aad51ff27d0b307ce41fbe877b3a69e802f4212325d86b1eede60d19d7c
Date: Sun, 11 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768110233
