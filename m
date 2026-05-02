Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26742299927
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777709854; cv=none; b=eaDlYB/hprMIgIGXDBHOHyOtgjRKFLzZs4h4WFvjCsZc+zzTfmDXalDhykoaJH0rwhcJa8zRUfLG3vWWP+xk/6jCQQo0Ug06voZlHnbJimZz/MS16w1r9mAc7eq2tyUGfWvTC+9MDguJmttnS9Ay9jywAGxFiJV3u7KpFFr1N7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777709854; c=relaxed/simple;
	bh=dZaMDxdB6pjELR4muiOFKD0WDK3nS9sEkGO9KNIs0+Y=;
	h=To:Subject:From:Message-Id:Date; b=TC37wTAJ9AzQgn8iID9dB2ASxq+PPCwhUvqbYSM99PhZJQs7w1/L5PiYsN7TqlEQkravT1nYA2fX7rchRciWKLAKaBT6VBGUjqeZci+g9rfIro/JESMHbBRk9PSCgJynffckWZLJbcs8M2p3AE1WddzS88rE1zRBHohF+MD3JvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYAwuteX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYAwuteX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB984C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777709853;
	bh=dZaMDxdB6pjELR4muiOFKD0WDK3nS9sEkGO9KNIs0+Y=;
	h=To:Subject:From:Date:From;
	b=QYAwuteXr72vedpAnKWKZb6uXKUJ9q92r+a9AxDWPRp2XrGiC+zhtmvRvvuMJ9Qoa
	 epNqx2iApMaZdfZVvmYrY7VDJZ18LrwidWmpfWSsAIg+JZd6/d9n3scfWeuunkDQNQ
	 0z2BYxxQvvjM31F/UsjUUxtLBoWf9y9Nnck3d0Vbb4awq4QyJPTm9keyjDIwULrXG3
	 kS0Mvk4TgvQTdFGgQpl6XtyJYADvsHVUzJl5e7nFbJhCGQMozt4RBN4ckC8/vgo+Pc
	 Itl57F82Hj5RJs7b64r76ClOmCdVoYa5vLgIAe+8x2kcU1dhtZJLr5DRdqy9ZymL6Q
	 JZRa4ugOC8VXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5D0CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177770985368.17750.17266769926438444562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6505e592adc0b13a61f46369d19aa94339c9f73f74aae34759caab541741f11a
Date: Sat, 02 May 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777709853
