Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE71ABED9
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788570034; cv=none; b=bgwKdJYg85S4cx5cGk9FNebTjkhA9aXgUmDrOZCCfgR+oRCtpsbeRCouSp4ady88KWlj3IqzEAcnC7j1O+QmdWSAqDIzgUjNvJoUggxWsv7yH7fbzut+r5Y5xfPw7gZ0UEMLhWpScGWpUpmGkZSJgPAynrWk/2crP6a1xM8AFcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788570034; c=relaxed/simple;
	bh=e8ZiGg+Zi3E4DO0aov6ENFtcg5xFKRVxkUoDFGrUZXA=;
	h=To:Subject:From:Message-Id:Date; b=Mf12pHP38LDpl7zFdPJnWGEAPkhqNTBjZfBZLOjl5upPWBmN7zdQ+EKLwLEkbFv13m3AFSNO+k/6BkyU/nIRmc4p3nRY+35GR8bUSNllP510OxUrsS/KTn8Lk79wouMHT6CPMnvz+92g+B/e+qbatJ2WUfPLGZW70Gt8Jq/bK5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OW2UOiK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OW2UOiK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4BC3C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788570033;
	bh=e8ZiGg+Zi3E4DO0aov6ENFtcg5xFKRVxkUoDFGrUZXA=;
	h=To:Subject:From:Date:From;
	b=OW2UOiK76nIdi2qTyFaH86m81aF+uQhHP79gM+oHQlr0sjg+joqe8wbo6LAPfUdVW
	 sEHoXJ144QNwQIPivlJuvu81Wmno2TPfayUKE2o/R8P6tfBcsF8OT+Pe1umQui1tye
	 UqMhX16As2gjWanM9XwkHhfQtfCmbYhelUawIKdWBfxL5LYjhb11WFqsgle9dnL7t0
	 YSVujI8swi8nc30D2xaiM7TJok48FjB1gKrg+k32mLlcC7x0gUc/qeix2CHILK70pE
	 PDbQhEkMecc/QYTutZAPWT2UQls7YniwFK9umeKm9tUdEzesdHbC3q18yj+d2s/9pp
	 DQ1BoW/bEAQNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD797C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857003370.3865.8269887986453974802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a999fd84f1889ea4d27e6b80af091d993575c52ae3c5049499a58a020ef1e4a
Date: Sat, 05 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788570033
