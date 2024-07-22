Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA4C748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721612154; cv=none; b=STJ4RTdafAn7MC7FZnUb4hzJhPIlt26kcwvGZpsw0GodDcwaJTbOAkZzjGAdbmWmdCutVeOm1kYenz8U5JAZHlA2DOwdCO5bLl2Bcz8JJvUBLzf4JIhrY1pVD9kMmqfbSY2cFOJgRqy67gEsbPeQ62iXHUFc5mw3eVZxTJm8u0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721612154; c=relaxed/simple;
	bh=9DGBXVKfS31+7ZqetaSsZ5MyVQ5/LemIGS8bDiewrB4=;
	h=To:Subject:From:Message-Id:Date; b=DqN1osVxjcV/IcYyLTZa3zBCqHb7O3qdAYbF1ozebkr4r72cdYjxX/ZO5JYpRdC9WfmBL64yao0Xvf1UmUlxrduVoH4U/q08UyESg5v4WSppU7DMkQCOMBNseiBZ1loI76WI7IBt+qOVrFeRdwKUsCac1KVgkPQEZ88HWgrOHiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C51JZyOb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C51JZyOb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28BBC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721612153;
	bh=9DGBXVKfS31+7ZqetaSsZ5MyVQ5/LemIGS8bDiewrB4=;
	h=To:Subject:From:Date:From;
	b=C51JZyOb4FRVRyxO3KV1bXG4uiow4vDS59qdYr3DvyQ+6YX1ZCUiL25nTr4KpRTGf
	 +SWd2MwRzUKF5bf1UcNISCycNIuAj0wHWiCzLSmL8Mdw22m9jpXLwgQM1HnXmLkxUX
	 C4DOzMXyB/oq0y66qAJ9PtUmq5jBSCFRKvO6pb2iwnkSIM7tUegYpxG/yoD65f0+f8
	 eoSfJ7aWBNDqKnL+nw6BwkMVZOdMyfKVQWIEzAWQlww5CkxfCWwT8NVkNMw+xHU9ek
	 rjNpyzJ4TDpKoOJ/TaRLFVfJ+Eu8spbS6p4uTfExk4jaDRMZ2GLOzf9qz0Goe6ocAu
	 miQLFHxr0DlAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912F4C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172161215358.3823.3697418663189543731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0e1123c7056c14e151bcb0aed3583cb1de1d18ce35d1686dd484e07876666d5
Date: Mon, 22 Jul 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721612153
