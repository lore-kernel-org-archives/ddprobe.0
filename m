Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CA978C76
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729511154; cv=none; b=qwwVHKFRA4D0t82KXSet/Tx4Yf14MnDeHRVWC2kxgz8D5iEqqEWm0ht7xizCY6OVKh/yMeBip5xEaFCYvuq+ATeA4Zc1/LuIUnZoQOiZGk/EXL+W4/qTBQZ9tLgo+kf978JsgGF0zXFuhNCsF0uxkvjoMNEp7OyUCZQykFEbRDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729511154; c=relaxed/simple;
	bh=GRQ08+u1Vs4qWgRF6CHXnLsNS3RCm6SfJJXlzKvmGfo=;
	h=To:Subject:From:Message-Id:Date; b=rqeC5gRzWIT/f/AVo7famniu2OvtvTt/+/V8gC5uUG0j/osoSy4C4Q3xIHkk52bk68Mav/hHdhxvxzCZfpLhzueaxHXcmrQbeczHzlc9kQoZDYHu0m8YZbDbERkmARC0RR36Tb/o37LjuaeRlWUeASOju+hF8eqyrhNIAfu0dV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrpjO1OS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrpjO1OS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF4F5C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729511153;
	bh=GRQ08+u1Vs4qWgRF6CHXnLsNS3RCm6SfJJXlzKvmGfo=;
	h=To:Subject:From:Date:From;
	b=VrpjO1OSAKAdF34AYtDe0boJSj7KoQQzKKC+SL0tgvVOlFfKlSSFWiMvy/e2i3/rJ
	 Exqcuy+mrPoWkhknivZcaMrblMwIZEsEY/7khLFMHPxzfvYVtQk/SwGa4kMn7Ihfoj
	 ETMyxgOIf4VfVJY3mJiuR+XQiwUacIMuBS/DgdKFm7BtU/I4tHLM7k3elYeLGfC09m
	 NLxm2zdEVTjkAWoTe8OkZxGYkEtQND1yRlbgVbphrMlpkY+SNJLEBKaBbt83EFC9Wu
	 fsHIn/3RA8QUQcK4au9SsDFoTs5VMPPk1fXAEg00TghpUc113uZpmFaA6nga0ue2Y7
	 03bChTuiZqDSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C54DD0E6F4
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172951115363.31878.8803026004178162546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4258032f581a365c8ba988232f9f653d0bb0cc29b058cc5fb391068464d27990
Date: Mon, 21 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729511153
