Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F5784E07
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757048994; cv=none; b=PAwPesnJy0VhhzOvgKswEMJ38Z9YaefNkHNiH2O6LbgeVrvKWmE5/M1kaUzFQPxmWEZqxirnqfRRFAtVO+RZvUu9HuTpgxoq+QhC9cJQu6p+wezwiRmU1+6CnJceCwjSV414PuRmwyypQBkybT+zP5PBMLTM4u8vgZvjUUTBIHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757048994; c=relaxed/simple;
	bh=7hUk9D3TsKQ7Zb795p48dVU/akB/HRstQmBYjLgEkFc=;
	h=To:Subject:From:Message-Id:Date; b=j8UTuKrvDrOa6ctD1WllHwrlq/Lpb82nFqyDwApO3iipem2OLYuU9ZS+lu25ZY9StJfqK3XfHuUp2IQXzy/76/FcrLIYC8vI77AEn3Ud5nEnN1Ay+DLjXnrj8PYXoPzfP8mXVbAz8f3wq6s6AkxRrdul76cX4Z2+XFMhu2IvywM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mG2hYoeU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mG2hYoeU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A722CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757048993;
	bh=7hUk9D3TsKQ7Zb795p48dVU/akB/HRstQmBYjLgEkFc=;
	h=To:Subject:From:Date:From;
	b=mG2hYoeUUlEku3xQKpaMSFETQfIqAWcwX1UY93LFudKHqllLv5IbHlBIpn7mhkCqB
	 VhBUL9ZhiiyBPhyGT1kPV87sKosP28nokvBWyAsKD9oRHV6YsmLWpo7iNDigxmg4hF
	 q6uUz+1CHy/VZYpQTei6YYt17bQ/nR2yT+mJmrfiFOqcAFxI8jYxpdotM6xazCk2b9
	 PraGRS7StdV4RwB0jp54eP2JFEs588xkgMkY/egl8ITiKcsQaJwJYiJJaTCyWwveLY
	 7ocG7UhXYi5Z4VZ+XLMiGZTrj/lHi8Q9kM8r/Ew5eHrBpOFHdHdnKxKVRJ7BxBQRko
	 afvdgtbyrscoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0CCA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175704899357.3181.1428127644652290085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1e405aae887ad33c8fce6fbfa2cb6b811b9b9bc0fb91f13b651dc300fc6274
Date: Fri, 05 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757048993
