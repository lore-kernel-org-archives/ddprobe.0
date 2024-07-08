Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAC813F431
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720449983; cv=none; b=CkFwcJx65ozyh8cCl4mZHBAMOTZAZJQbQ4bKKLLR5E/7N2M03vGYSUXmg1zrD5fwv6U587tw0hI41mcloSZ9bN4IhEm0juSgrWoxLQ4r2Yt7ocqfvXn9J7M4Trl9lK/iavKFvUqxG4wCaKfml4Xzd8V1gtRXpkA5kLwe4CgtzS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720449983; c=relaxed/simple;
	bh=cjHCUTgOTU3+cmOppImkVSAvhELhscLt5N6xMSFgwoc=;
	h=To:Subject:From:Message-Id:Date; b=Fo2MFYi8tkYjWuYiC/pxGbVyKIYQZWezYgtuCt2TLzvkUmCsE4aWQVDsi39lbCx+GF3fsHxmxVoaKrzARsQotDJhD+IVkM6rqxAUjEFA9ZysvOkm3vQDJeK7MnSQkYQ/baCzw/56ZO5nWJN1fOfTgVRlCXWeon1o87pRHYFB4RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8N1/lrI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8N1/lrI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40B8C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720449982;
	bh=cjHCUTgOTU3+cmOppImkVSAvhELhscLt5N6xMSFgwoc=;
	h=To:Subject:From:Date:From;
	b=H8N1/lrIxjolD6JNURoReZb5xjrB5d/BJVzQcq6kgzzzS1r/dxGvacYWha6qdVVzz
	 DHy/r86SuHrhC0rsMvu/412nckW7kKuIYW+83BM8mwskOxUl0NmqJZ33y1hFK/K4bJ
	 bvGkX36/3Obo7TpiMeqjGO/0sVq+n3tvoCQs0ZLKV5UtT4fQI72TdgoAcxTf8fpwwu
	 kria99k4K5pGFjIgkTPXcLQBhb/tU7o3lPM7CSEKNiHEWHbCk97lIO/Z5H3zIZNYix
	 MNPalmGbLelvl+LhVL+QGhFzJZxLtalgtORwav3nqOuoVzfndqu1n0nwiga/WTINwV
	 KqO2qqsDdYEtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1949C3DA42
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044998278.15693.17938778381949019903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ac5c0cf4e28eca42c3f83d176ead62a412b1646b11d0ccd3bca67cc388fd0b
Date: Mon, 08 Jul 2024 14:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720449982
