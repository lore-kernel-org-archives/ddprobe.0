Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55833D266
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716788063; cv=none; b=jHUJH8LOzk+n8qk4T0gC9++xSGGHkxhmzYesWtZdT4suroIrsVJOFu7s7Psv4/SQ5Lq3p9lju+fG4xajFjkGOAz/3mMYVYX9HfMhel2W9PxOV//UzwMk+5YqzJr6Eds43+ELGzimu05qjo7LypQHlYTx9XolJRqG5I4GV/KxHyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716788063; c=relaxed/simple;
	bh=aBfcXOmhNOtdi20FowpTBUowHGoJCMNHW/o4eSo7qy0=;
	h=To:Subject:From:Message-Id:Date; b=VPqpZWoNt4pkG4zQxnbQPG1iC/HkrwqwpasZTaHVRquiBq2TJ0kBgA6Z4wwejDDzw9s1WduHsmRd/ZJZhrZGcojFowpUwRNVqQ2g9qeZBl+EvZ+62eCJkHPqQEbERoLCsqEMPwiL3Zgw+pZoy6LheYO4yDOUkaxJlyO1ghICLIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giqlnbUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giqlnbUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFC38C32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716788063;
	bh=aBfcXOmhNOtdi20FowpTBUowHGoJCMNHW/o4eSo7qy0=;
	h=To:Subject:From:Date:From;
	b=giqlnbUYT8yoJbzyZj4EIepnA2NOIRwNGw8e83KSUFISG219aHsmqDZxs+uv+UYaP
	 lceQ3rfvNQ4/KdgQ+/suzG2DDA6OnELS2JALPuxyIkcoY3A8vXrlc6fXsNz8grVweB
	 5vPOeTxPRhjKbhpbU/gIRJsytZ2J2zxOpMkF09/rduY6Vdx+BnSljiJ4ZLY7b2m5WN
	 geO3UUE+c1jd2TcXCnEROpMoPFoIxA4yQsR6kWDyXckBh792BynN8/xIclvTcK0utk
	 YSwmxNKGS6+w+pKODpzgwuOBD1NG5VsbZcFKhk2uB32naVA+HzOdtso6xV+42oTKp3
	 eatJSNx1p6dYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E26C25B79
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678806280.21225.8708312932872066537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9bbff33658420f09e62e4330b77b69c654069d8ddefdff69ea4d1fbf0eee10c
Date: Mon, 27 May 2024 05:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716788062
