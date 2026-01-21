Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DF6438FE0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769035434; cv=none; b=ELtNEb9H+JmccodB+aY5YNSVVqBBOLKv/YA+KuvM/I6K0jC6J/Z1DbARx02NkYKdzTG34Xrr3TG1ArmTiknZyxZGuupWwb6v4na0sa0UulgA/zfLctSzAjbDdFdBlw/zHjoVYFKK8sZqGkuhl6GnA995Q+46T3NorcvEwkeYCEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769035434; c=relaxed/simple;
	bh=IsbnMnNVWoiaN96ssdrHoEVd0A1GvJ0rCf9etZuqSu8=;
	h=To:Subject:From:Message-Id:Date; b=UJYTIFrIMOZjJj6Xr6REqxFEZ25S8Iy7q5Mmh0DDo1mgaADFAZr4NAhnT45Vrw8w5j7LQW0lmqTpYtwS9tU94iYRZKkq2NODgMDcd7PfiaEIvsK88l/ZQIfu+6b2sVxA6vouQWE9bvQWJkJLKrlBiK3GqD2VbXjlLqo7dmMlxZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EU3iAvDM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EU3iAvDM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFEA3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769035433;
	bh=IsbnMnNVWoiaN96ssdrHoEVd0A1GvJ0rCf9etZuqSu8=;
	h=To:Subject:From:Date:From;
	b=EU3iAvDMoCHZdQDE5iCViyrKmUcxi+sC/u429zMnqGQIfUcw43aF4i1NSk810QAOY
	 r9cd3LOMw9NKTxB/2HvZJo+V18WwBfxYbe/39XOaBP5MMiOdmuS8VHkiOhj92Uu2LN
	 ATUeDyF1euW5Rzt/0VZQVb0+xwFMPNyQgw2jdQ07NGij17uRhPx8cYHjTfnH9El6RL
	 4fN7abNhflyUwWhWi/LDIgCuPC78gbABEdPbZ48CaJE3r2NgcMPqcGyjaepIevef8W
	 qNYJrvfZJPGc2EJEc1fZqH7kFAqxCKy6CqBr2qApevcob1/0hEfyHJjTqFVIfU1LM5
	 EZw/v72SfZXHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD8CC44500
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176903543358.8102.7350881388891148420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de7ffb6491e7ea02d7d150c17a3908687a3426fe217bf2637ef280cd766e718
Date: Wed, 21 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769035433
