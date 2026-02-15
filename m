Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209F4250BF2
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771191894; cv=none; b=J6Kx3W5SM7iSEcZ7jl3OjsJeObcr/Iwvv27vNYULPr8Q0Wzh8Nc/CzTJUmCP1vB9s8p5CByZWRg27UaUAh3JoiD3G3N6PoEiO052nAoQkVqAWnzF/rQ5DhTJepHrSobvuVJCGpuppk12dd8jscM8HJq6HG4sNNzM1rS+EANbzgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771191894; c=relaxed/simple;
	bh=JeAIg+UujxKu7Ckfb/uLHw5rdmtG3Ndw7CvRhP+RYHI=;
	h=To:Subject:From:Message-Id:Date; b=pi0f+2xOSJlV/qjppadnsFdvqVpYkXRZJiPw1vD0rC2kZk8sgm/DDbE9XLJfeSJmRnAuhH953j7vrEL3InlHOgz9X+K40zBT7y8b57krBp8qJMBnO0UMyZABLuaIHTt+cz39wa3RWTku/nVLdcgA1cl41XMVW9bsNvNXk05FqQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdiJYWFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdiJYWFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B334FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771191893;
	bh=JeAIg+UujxKu7Ckfb/uLHw5rdmtG3Ndw7CvRhP+RYHI=;
	h=To:Subject:From:Date:From;
	b=pdiJYWFX/j+qtAQx/x0B+5diqag204MXxJFNiywQtdG/Yx8FJxFDsjsQjjfFWquf/
	 kIqvmrhX+LATQ5FfWkzd+BaPU1ZtUbu7ZLmZQAkDLp6ncWKboogI7KxK8OUt9d4DQV
	 CtoA/Hg7mq/kZRGQrWBt931Ge8opdPZK0uysmtr1+GxTVtAksca9O3nxALHqN3V18p
	 IT8Qszqkkpf9UIAWoFDgJJIoQWEvygXoX+5LA10Qv5dbSYF+b9eKqmT5KV0RIR9oUf
	 A0iusEGFE7jF5TGcDcWBchgyW44QfwYoKw4FMJyFb5TggiPONBJirmIK+b/JAeJVnL
	 XX4fkdfwxpsNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EB0E63F12
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119189360.20959.16614661924594084816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b517bdf68346eafed818c4807a45568abe6a137ce9f5cc9e037829b08d6551c
Date: Sun, 15 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771191893
