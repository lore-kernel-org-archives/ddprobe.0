Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C35A95E
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764035574; cv=none; b=GCcV0ZDtqXDEBal9vAWxp2INyFV1AQY/U2h8+f4Ee4aCzQCEUvKLn2r/puTn2AjqxUmJqSEIUdGir/yqkzVxL/n4d9wncSijmMsQqHJGUD4lj7tinOM2Rv6uJayoHzrqn16vx+JDfLUtx08V6XkP3rUnxxVqA35bKP0kCs1M5/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764035574; c=relaxed/simple;
	bh=RJJqKb1TUM3URIYPjskzE5clZeiW8A5x4bipMxLb6Fk=;
	h=To:Subject:From:Message-Id:Date; b=pSapwRHM3CbXhELUMNacLlpppu0Ua2YyffZUppSqC/1nAXpeZpt2Hl5owuZqIOjTXAn30DwWywbS//oUE8o28f4+rC1R/IOJymc3uX9Ogn69Z6qNS7zyPgfVFiaZETqlU3QxA9gPUl79Asc5X9hL3m+McodiqDQrSWS73bU+rv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5HqLGpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5HqLGpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B102DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764035573;
	bh=RJJqKb1TUM3URIYPjskzE5clZeiW8A5x4bipMxLb6Fk=;
	h=To:Subject:From:Date:From;
	b=K5HqLGpC6VVE21TrD+rjefNYS3RU4Ny3jCWahlu+SwRlhRO7hy+ejbTj9UOFwvoe8
	 MGOxevEYqRw88vij66RUf/VoxJnuMmpd7eqMGfmzv+q/Zby35V/waHLeA5htNRIhXM
	 1qCd7QawbyIBggB82nIAGdgNcKgZJjBXHYNPc4Dod+B+hHtnE2Ddaa733HiAn3fSFI
	 7xAMssrHq3xJtCZ9dYVSiMlm6fbeuoATCeEPtgPthWd0uiaq+d1N4YJMSHyMVfBBwg
	 yBCl8oKbFn/I6QT0WE9ePnSAB4fv2Uk4t96O6gnz2jwod0qYc7BmgktrIqQUC3ywda
	 ATyBqPY1eg/cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4F9CFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403557360.26403.2631198293932666611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be651808136095ffcab1f71974fd8f6ff35880bd7ea8127e2151bfc1ff39f98d
Date: Tue, 25 Nov 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764035573
