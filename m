Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15727481C0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726178154; cv=none; b=qqX+3cDsoAUv68wweraBT6EEm16wBz+5JtB/m6RtU0mG3+5ytiByT4toIDmvB/b0oN4iwuGFtyprAuoM6D+uPLzP0mlK3RgmKCTcvOvnXmT9xPiFgi0TKc0kY0ZU6Tc5aah07IOUdZs/5wtZiPLJJGjWjmS4qsR0I1XkIJU+gJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726178154; c=relaxed/simple;
	bh=CqqHQ6g9voeZa1XXXqoSEql+Qrmm4o8XcMcOipKAkB0=;
	h=To:Subject:From:Message-Id:Date; b=AYoLdcRh0k0dOxAC+LDVusFxDU0CNvvzsT3SY6D06H/El8d8JhcSaLP5wqBD2TbYs5zm5ZcmT95pmgKOpxizL4QcozCJ4ZVMRYFoKJBxVqVtl45UFde6WVa4GzP/Cg0Y4qTmeOAxXE6wdj/4fNYjl0pD3Kf/1TKs4nqO7OamJ8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CU8/93Sc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CU8/93Sc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4612C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726178153;
	bh=CqqHQ6g9voeZa1XXXqoSEql+Qrmm4o8XcMcOipKAkB0=;
	h=To:Subject:From:Date:From;
	b=CU8/93SciNiUzrhJ0U1u4q9TyrHaGYaGH3JNGQGNAmwYF9373xD9XDGVg1R541ZPI
	 PzOz1XFX4WJDPdF3wunGYFZShW9zFxQ/7J2Gmu/UV9Yp7pTowrZ8qpGHOmWXOsTRXg
	 V3d9kPyvncilcQ+e2RSV/dV5McR7e5LOWgIF7UBYQ+72vwJQrSMoy8ui8zPXRmi0hW
	 LBxzx0RqaieaV8w1m0nqp+QK+yy3f0AXUNfqlX6OFNyGYDwokVr67vuSQkHEFRg783
	 T3z1Ji9x8lzlopAczEsEsBYVqO27D+cvF4O6e32iC7KqAmWY4T7ARHVuLHQspoeq0O
	 26lzstD5TBzUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95556EEE266
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172617815360.13236.14201048792597729567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e554c46cf25309e0c6dfd235bb03c3c2fb4c86a8cc06a83f7e53b76587ee3370
Date: Thu, 12 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726178153
