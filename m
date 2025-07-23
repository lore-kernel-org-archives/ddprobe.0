Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E7B1DFCB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753307394; cv=none; b=nptvmwfJOOKkdViv/BIAu3OsDZEO9UTggsKUGF79T5NT1+pK4CgixvoLX6n363HP9rEtDjfI+BdpIbWW+Kqh0TUQn04TnetxdJgmQKAb14UVyOesK/q5NPHR11TKaEqUMTtt7VaDqR3gCviBKnzhUOHR9akvqQ52lrG7AbJlP1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753307394; c=relaxed/simple;
	bh=EdnCvSsuTwoM3TnhCDixKkGjm2O7wLG2ueN/MXX6hA4=;
	h=To:Subject:From:Message-Id:Date; b=iSR8zRtpy1OA0CacjnUr8+reNEOml2EO5OSwRTWjHyD9FbVSlTClawXLKJviVBGONMAJXKfaFpL18N3kobOXLn7OEqu6+vP1GGaoFMLnEOaAy/ETpH5iGaoRd0NVj9qR1WxUYuU0AW1pEEFVx/ByKUSI0LUDBKFqVnRTadxdJKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNdDBWMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNdDBWMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1123C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753307393;
	bh=EdnCvSsuTwoM3TnhCDixKkGjm2O7wLG2ueN/MXX6hA4=;
	h=To:Subject:From:Date:From;
	b=eNdDBWMhN3nYlWiKfnHjeeYElcvVlPAce+CnabOSmqql7nU6aKALSDUObQwnrRjEJ
	 FpR44GCp5rlRqTqIN5waBC1NuXyasomBPxFV44TA94rRRl2Shk04u7QAnkh8Gb1vEc
	 43zWu+iEZzAQUd9NGX1MxTVrWeFzLJ7/TF1l3uGFMXc81HMdfQYRNuqRgJzOxJKFNs
	 bomzFhsOAvMWrfZH6a7EX4y7UfPpDHpyF1dp5PMqQrU3j2VNijik5u5MCczid/5j4G
	 cBHi0rtLl4X3HqzYCEGF/WYetJi8gxhVyq5UMobzGNWxCs5UCB9P9sGSqHpy3SItUr
	 +N2JW5lu3xk9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D0C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330739357.30500.12402273130336907948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2123fe4faad2421a08bd433d0f32334ef3d57834461a524f2d8df5d076344b5e
Date: Wed, 23 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753307393
