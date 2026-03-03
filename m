Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AD41DF26E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772497494; cv=none; b=qoz/UO5nyQ+lUhFJJn3MrGLdyBx/+IwDHQcKkkh6+BumxkxZaiw55VoTU+6A2lgGwWtOdWo/KbnHOKspHFi5emoq8y4gDsKer2YQaiNmRu4ojx4K3NZRaLVffU/t+0AS/GiEDWuO7Ft94dT0bIpWuc/PfoOb+hpPZcJ4MP/fJVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772497494; c=relaxed/simple;
	bh=/Blg3m5wRAFWlcrOP8SYNfzdb0hiA8j6MKa/OLBcsF4=;
	h=To:Subject:From:Message-Id:Date; b=JaBRSgHIJvku13VZFcxQNkB0UiL2OK93zEuCPZIsMTkHYDClkuq5xmbsOfcuF07deyIZAgkCjT+0hNRxb+Jj9uzPJOtNRCn3cJZN+ncy21cuxvdNvWzFchXewIH/+eDvK59p0EHbZaSHiWy9qtyqLT2dhgCjuG0Rgr2YcbBMIOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kefN/EZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kefN/EZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B377DC2BC86
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772497493;
	bh=/Blg3m5wRAFWlcrOP8SYNfzdb0hiA8j6MKa/OLBcsF4=;
	h=To:Subject:From:Date:From;
	b=kefN/EZon4+eXsuVMTq4IWATeJbva7lXs+XjG2941b3WgzFSiZlgmhIpeHQ+967Xb
	 eOdqnzw7cc0E3uE9gUaCyeNJrvBWuWoZO1p/PDBDoIjkRVdIJI+MQgrG37pDdSy6dx
	 ZfbvYrGvQ6AtuDWqqLOTg+RvmWkD+NUcpIJ/uzZtquhY2co2HU/34QADuS3DdKk9st
	 jiVRl1n66PHDAfGU2sjUbEcICuGf/SE4L7gw8R+mXAXSFJJu0HTglR69TLvMtHFM9b
	 QY/y7lMIHdrLavAu5r++GVLWPWjW+bY0hqeyTeV5S+SROjJ3D72vKJYNg8v9Asrr2Y
	 Y3klKDOAufFeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C551EB3643
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177249749363.21317.5977594276868145614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a678c9b671fd59a8957e49fdf528079a61db781cbc96bc7e31fc848c003120
Date: Tue, 03 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772497493
