Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D026BB5B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768025634; cv=none; b=WwGohmyLT67Oy9AHdP1T9wPYMjJ31sSAuraEgn4ri7sxo2dzC38gdl0TDxrHR/VEbBoWFMdLRO4goKYyPa4IhjsfVSJKyXE5Lb7QfMCjKlHWS+RhXBlak+yUqsw667VZD6BdqlLEgHCAt+slN4fjFf2oAI5fRWZkGXDiLzWl5Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768025634; c=relaxed/simple;
	bh=kfYcjZDSbDcpffyrkI1j8/YA9VO/MxMCpLTfQtRbUlA=;
	h=To:Subject:From:Message-Id:Date; b=uIo9mli3KBa9nOZNiv9FvujiACoMlrpzAZCUvxfOeNiNMOKslDLgYkVVtpGaM+VMhjHY1xHNM0KjB7aAcJcdNYTVFj8sKNeIVXPuTl0FCCdOYzVzM+rlBLS9bl9SGWK4KBeNH8qQDok/rWIFZqdF+trKJtXlC0PYlDO+RnULyGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRkZ+Tct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRkZ+Tct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5273C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768025633;
	bh=kfYcjZDSbDcpffyrkI1j8/YA9VO/MxMCpLTfQtRbUlA=;
	h=To:Subject:From:Date:From;
	b=mRkZ+TctVpyjnL/+ZxiN8GEW+Emx52N/oNMVCtdJeAStoRSphNjfyCTIdZg6X1zkv
	 bThaDtgGcvmFyMVzUnihkin7ueJuedE43M9dGMvym7nQgXyJcofyPupva98lYU6odZ
	 fR2/jaTTt3fkv76JKkOGEOwzwd2cSsNtmCNYuwbq0nWg9Yg1y2G/TEDNaSZSqwKpLD
	 k/ShVc0pzoWP6LwHojWEP+KT17z9+8zeVFowViMJyxoP+tnOM0Fr0AoPpwcAQF3jIh
	 EWBOd169Q9X/N1i53+HTem29vNquzxAxIkT7B6diZxTG9QbhxbXBs+iiF1CmLS+KXB
	 SD/XUhsyzVXog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940E9D277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802563357.25207.5004213763075531731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be77ab063f3a027fa677ed8e17bec7719a34fc1859fd952842920e11cc89293
Date: Sat, 10 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768025633
