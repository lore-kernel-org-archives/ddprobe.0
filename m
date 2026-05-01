Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C6B1922F5
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777606654; cv=none; b=JhZTJS8iWqF+rFL5ULe7PSWJ03PpyW6u1DjewrgAKTtoR71rB9L9qCvt6SXEKfLyHyXhebSIKmi+rwKLWzPblcC2661c41G/DnHRcm2wHU1pva9ruH+oKZVljbvva+XEetFWTF3XBTzdmHbPkNs43W/WLEOhnGug7BaGWD8BIE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777606654; c=relaxed/simple;
	bh=S/sUjmEP8V4MSxFEXyJDx4j24qQoVZKkVzFaFW9I2rM=;
	h=To:Subject:From:Message-Id:Date; b=pAhB6P5H8W7URnefPIZs30YsBcnvwhIQP6HPejree8AC0o4EIzb+sdk1dWvVhkLaPzKewdgXkwkPuoP6MIZfRjaOT5W+qg+20kWVISGir9wYNOjwtO6AU8LBRaaNDbltNrMKJGE9VkUep8amkslW7TU6MsAlVt/bnZwvJt7Ck1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVe+gARw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVe+gARw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF75C2BCB3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777606653;
	bh=S/sUjmEP8V4MSxFEXyJDx4j24qQoVZKkVzFaFW9I2rM=;
	h=To:Subject:From:Date:From;
	b=FVe+gARwNUJswNWpMyfdMvxHS30/UQzEoPAW+d45C4QyzZuemZ0cKg16DkPCADWaD
	 qYxYPRso9Ad4+y+LgdU0eWXKM1wRtzViM4H71DoauEWwgjm7ov7UzupYdjFL0/CRWE
	 2+TvC1Wxqjy8My/jaJR5MiPmg5roYfPkIMB5Fp5101pjXswlHCT5Q15PYsmPIGWfaF
	 eiNdh5jY3oHCYjAf3vH20H0Yx4ROST4kYQiNeU3Q2HPAbSbFFP5NBggotN+pMLlNgS
	 IvzSaRWsTHh9vkVfwkh3pQ6IimJSIv+85vEsSiscHvIFj+OCaquDRlcYFuPt4Rb79n
	 TXHVTIyEfdaGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD04BFF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177760665368.13378.4655336131010173204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 184498a900cdec43b87944409abd49f603fb5c78c977533b6576bf9bc6d5a0f4
Date: Fri, 01 May 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777606653
