Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479D6476075
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786624834; cv=none; b=JC+R2iniS2keJaPPB4qcv8Hg+30lSAYXTqsHtceqIyOsN1s4lod4W0Jl6LaOUage4I8bgRuAKCBhwjyR0BI/1AY/LjIGEFBasLcBKblQmhd5b9e7wq3XZrNigudxldUzd22I6mIvIZ9OD+9e0SLFMX+jSePVaSDvW51BfdTK56c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786624834; c=relaxed/simple;
	bh=5wWkIqAhxvUo7m4DffgUPiIn/9aKkd7sJ66oqaSGX3Y=;
	h=To:Subject:From:Message-Id:Date; b=JuVdkB1fZi2e8E0kQ08//X5j8FTH5CLXKffP7KbHWWaw/CIVVvioF4ZU298FobF0reiWGji+a4M0RJlGuW+RbW8alayIztuSqe0JPwbN3cuvWBpRETBjMO6TTcDmqn//brpzKY92u0AXonG1q4jhpJA7nc10S8mMh472VDTGpys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mfl85M5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mfl85M5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99EFC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786624833;
	bh=5wWkIqAhxvUo7m4DffgUPiIn/9aKkd7sJ66oqaSGX3Y=;
	h=To:Subject:From:Date:From;
	b=Mfl85M5Wac/vfK+d2oIMymsH+S6APO8q194/5BkyPvOvv8QaJJFzoLsP35YjWiuWY
	 skrfBNltuVSKEmf344iHU7OOe1tDmLS4U9GVPMfeKBtUWNoFXnNvO9UJqxNx3Tw/UD
	 YDOkXkK40EnS/RJYmnOAcoCMEd2uyYZi7VNxin4DiFvzIuusY+n2xIZvhmNLCHBvYt
	 YJZ5kkM/dQ+4XI7P27vint2lzUvPlC5iuP77G3h+KbhQ1JMHntmfPHNKwcldaTLltC
	 DeIWf5AIfFMOwCbF2muMd/o4j8M0BCS1nz+THe1472G595wzC7EhEKnMVsoomvwjo7
	 NH1f3jz/LFMfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D85C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662483368.17581.17979223560434560363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09602968805788f35f92208e39f409f174290055cba3e637196b45ec96034253
Date: Thu, 13 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786624833
