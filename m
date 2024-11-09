Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CCE19D087
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731184554; cv=none; b=ehAIBsM5NrciN+1sk1CZ/JE8fPY+ULKjjD8IPRRYfqPuv+U9aE9kn3BjYZHvtd/Mw1RMQQzWpoUYiup9WYNLsA3jEG3IB2HRfCLDSqHrb3ZLqUGtLk5ayRHqUFap+KVOmNORl8a+vsWdJYKaraLjHM6vV4O5DWp7ao3bT9PNoSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731184554; c=relaxed/simple;
	bh=D8J/9a3Q52MovMb/4vshjqZxIRzpui7q0wRP/qNMgoc=;
	h=To:Subject:From:Message-Id:Date; b=XbEzUkjvo1FdVABDpx2fqQgmX1zRwDv1CVx+y5Ri8YDM2gxPwofb2ur27lutZdWdIoolqZNw26B8DWCAdVtjZd6XAumyKsmBzhIHZoCzOy88vuZxbjJZDr81cB9I0mVVua0dRoOLIAaTaDTDGdzUURWq8UOeo+vFpOCDPhtgQD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXwwj6jh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXwwj6jh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE4CC4CECE
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731184553;
	bh=D8J/9a3Q52MovMb/4vshjqZxIRzpui7q0wRP/qNMgoc=;
	h=To:Subject:From:Date:From;
	b=GXwwj6jhexNwDi9uu8bEv68IHjs7ZCTfjFiK0nDWs7b3y2DsVXh5ykuoPZxKQudVE
	 9zFdqyy2ujOf4a4bzRzO+dTrHD6si76EhRmpp6u6QspXyopnCtcD6hjbeuHXBHuvOZ
	 Ax41KXA92IFwFuI9YE9PAlmoOX0AXgFElZ7gYW482oUTzJyE8h8nSNln369Nn3Yj3w
	 0LjXvrMwHQhlFjOSlLbDQC3Vtzurte5ul+fcrzfbGm3ihjemBrv+fXSzJzeKwgo/pD
	 kQQaUZ2v6bzZjuny6Xg8wH+KryZGxOjX1lQZqCI2OXQHDeMuWMJrHB/7fLm46qSPnz
	 sPOHUrUOMIu/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976EAD5E37F
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173118455358.28409.13285531584240607738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddb23d93c315a12efd28decaab186213b970b95965f575998d4d09b6a059af32
Date: Sat, 09 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731184553
