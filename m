Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03885378D97
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771887894; cv=none; b=N5YcKKVF7ad/0L2qc2okbzEQzVPfMA4Rf6LE4fj36hw3INYL6H9qxbujG7NUBZ8BulDJVHcFH2jWr/THSv91aaSy5YFGcVG9sntPi9Kzh600IlpDb7FHsuuOsWGNDpfQ9lQ9F16HA2Kr+SdKctzj6Q3FjjZIzuH/C598nMG4Zgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771887894; c=relaxed/simple;
	bh=x7Q5EdUdkdQKAROs+dHhmEyqw8uUGvCXq6b6n6XGB40=;
	h=To:Subject:From:Message-Id:Date; b=L6AWA1oO9TZxYsQCbr/Jp8+VHd2sxYm3fANtAbvRMdi5VMn/bz1Wj51CJCqLFI7qd1eLbNz9MNTtg+c5ufkLvubVJ79Mg7uI8cNUO/F67IrWeDtcABzWlYNbCgSerowXgPlZLyPvyPm8HfambH43pZnvUOyqS9QUGtmoP1uZ/qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu8voomi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu8voomi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2069C116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771887893;
	bh=x7Q5EdUdkdQKAROs+dHhmEyqw8uUGvCXq6b6n6XGB40=;
	h=To:Subject:From:Date:From;
	b=Pu8voomi53zjfd9AA/KcSF6OzWah07LFv9JAVwUu1saBHvvuPjPWAArUep3O892sB
	 uUGHZLstipU3KWwtpLs2wz18iQzyKvJe26Aj8Ww8uBe12BuxdzBL9DkS0oVf2cHrHt
	 Eps6OlsRFHnk2OuCk73Wa2gRQodrLvF44xv/BVWdomllp0K+zXvKSswg+rXPoXgpuV
	 11ZWXCsc5V8+UANCYQqHutp+oEob2eL/+rfVnA6WDo4hbotn9mIKPih824ye0TnABp
	 Fn84O2gM28q3500VC1EgpdHT6CLR+0/QjRsoLfz0e8tekWGfTTgAu1vQ+d63OuUO0/
	 u9S5br4oa1/eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC6EEC2A9
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188789358.30179.2661220420437262567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dfa72b3f8629fc86996f7c3683e8ed1fe69d55c176d9ae369ad24d7855fde18
Date: Mon, 23 Feb 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771887893
