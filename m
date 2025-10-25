Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB252C11EC
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761392994; cv=none; b=rkDnW76s94GtD5AdvCcx7R61KgqaB8lVH1a1AGTYa+NM4oBHmkw+rrY9xYl+HcIXnyXMF9DR4hBdxnkHti4Ha6XCN2yGtp7v+Uo/0FIHCjlqIkWrLH0RNAT+xD/BHbEky1hGAZAOm6lelkc6gpF4Gi8z+uJ0ECr3xQWWF5s5bzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761392994; c=relaxed/simple;
	bh=s1iUzieco7ePj7xYt53L2RQQGtbDqGmBzbC49v3IH3U=;
	h=To:Subject:From:Message-Id:Date; b=pAeb+MPSl0HFgAGLCQw9zBNneFHwKjb/cdfgUP37JwWH8DRnTBhrbIBzRAVMMlF8KrfemtkWdi34mQRbsytjLoz81kEKDtMBx4xNmhaVLSOWfQiRfwZA6ptgK4ezKM2KIAIARDgThRC6a1vXrvBF0X7ZzCbJx9DV5VPf+FP63zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCiV1Brm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCiV1Brm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7939C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761392993;
	bh=s1iUzieco7ePj7xYt53L2RQQGtbDqGmBzbC49v3IH3U=;
	h=To:Subject:From:Date:From;
	b=QCiV1BrmHWve6pxUAn4PLuujqLgo6lKRIhu6cx7ElUXSR8YVnOwp0t5XU+hAXdtg1
	 TOMGwmcUwkX5AKZW0Bq4pqGsOkPmKuLFh3+QB5Wj0i0FZ4hOq9aYs7WZpE5eusX5TZ
	 /4YC6A/SZkPRusBmloF3AkNJ/6w8NH6RZFBH7KsVWD+EDtzwXoomRhDOEFWBs+uq3H
	 ywL4R5IVTpJV9f6Snw1ofEyAga4iHUkXXLolsW4zQC6GWWIzGmqsPBt3vJ7iRbprzG
	 zasHI7ewQiGyr2UEG0MOBUQM6QPsuXTIhmNUgggzICCkcnxKraB0zKZ6oYON+6GU9E
	 HIpIXoFa//crg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8EACCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139299362.1008.11050075169780632611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f657d567b600463ac790264d9afcd7186dc2a260a39d65ad2837ed6c2fa47ad6
Date: Sat, 25 Oct 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761392993
