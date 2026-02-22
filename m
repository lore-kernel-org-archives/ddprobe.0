Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9DE611E
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771719294; cv=none; b=m+g3kl/5BhYpJKOLtFho43eQK389OlgI4tEmtBKkxErdwmghf8M3ypoC+Vw9tt/lpsvbRoZutWRpwFX7RO/mONd76equ1s5+0dcHZMV1jAdvWuAJ26qYTJYXh9pYZd2aJl5I2JWtdwy4H3brIdcfzSVH+n8lMUsXykfioC1ljgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771719294; c=relaxed/simple;
	bh=BolIKRaEfALh/uAQPNTGso0bfTAm87IoZc7o1XVKZcI=;
	h=To:Subject:From:Message-Id:Date; b=F1PaaV9Yuh0Czu1zYjaxvVMoOutiZxWF2OZc090TxQ4PxnN5vsJ4fOy4LArCIUsx7HZNLHgfvycUeuC+ig/mIVpBlDWXCBTQGlpTYu0WWmHcS83RSiTK1FzVE6GXAaKVL2olaMrhxDGz8TicplSWibG3XYoT6gWgSnkOfpoHaYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lt87ar0n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lt87ar0n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD737C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771719293;
	bh=BolIKRaEfALh/uAQPNTGso0bfTAm87IoZc7o1XVKZcI=;
	h=To:Subject:From:Date:From;
	b=lt87ar0nUXh7/wB4fUtxcp9Z02V+BIbA+zG5I5B3LIc7wFjr3Pk/P3R9dN/Qlgcel
	 xLoSHzea1xNYiYUBsb2uAyJ7Xs6v///YpZ8Cme3QvaZ2qbTBg+hDfXfDzQ0owltZiV
	 GtNe9s9sIa8+Yv0tSxEJYEzNpoh+3CPYtglioA4PiMCwhIyY1yNurJf4nsFJkY8PkU
	 FV2gYaKxn5MwYM4ZfKsXDILTzqwsci6aZU8kE1xEvn/1KXp5mr2AdHlW4eNwTtG1VJ
	 UGyxk8vt14FGTzWMjrG/Le6YxM1aNQrUa6PNU6DN0o1I4lfrTnKx/DRERabSaSMk8l
	 foWa41iwdjkDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A42C624A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171929358.28159.12480842648169293994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8996e7ee98b968a8731b7761b89279a8de466ab9d618f9f96849ad04a472de16
Date: Sun, 22 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771719293
