Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8D82DFF04
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776544654; cv=none; b=qiaNzuRx+d6nGUzDj0ljaY4MaTnNiAWDmb0Us1k5HMIXvQdSZuq60QaH2za94nr3T73ltHPcWqWHzmU0OyN5uzNirM3gCXFUa4JSaqVXp5wBEJQex4j2Zg3zYlLXyKz3Un2nodgIcqfqjwF24f7bLNmyoS8nSxN9HFD8Gcgy0Ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776544654; c=relaxed/simple;
	bh=NiFXZbu/wVEQDyR1DFwRzMa9fiMpgnFe7m3V1DRkWIs=;
	h=To:Subject:From:Message-Id:Date; b=OFNFywDXPzQqupH6HGbX3l8vxEm/g/mqCSltZ4svlNDNujdogNB374cHTuL1wyoh0A77RNTVOHhM+Puv4MtcRGTZnVEEKqXFqwKIX+3W52ZjRgwjX3evoC4/3WlXsPOxvsLCuraF75IN/MjehvTT+I04h06/fskGs4nCiGBj+Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tk2+xOAr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tk2+xOAr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7B9C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776544653;
	bh=NiFXZbu/wVEQDyR1DFwRzMa9fiMpgnFe7m3V1DRkWIs=;
	h=To:Subject:From:Date:From;
	b=Tk2+xOAr+0CHdEm+OckNdlpv98p8vUuU+jO6KlpuH+Su0kororMqovnORe1TMXOkt
	 tWswaKgKv/fCaFdiB/m9BpebcQ7sk/u3FlFMkwBJy39W444ULzhzegNp06XoiHMi7Y
	 IaG5hkavLvB+ZfxUYAP7ZPd9StF8xZk67QaDAS50FyegJ9NuFO0D9p8Ynm07GvKvIT
	 z42nEz3AfyT8jaECgTovVmwsVLe0TU/I30B1/QZAWNRqSlCJupcyLHd8VgVoRptixG
	 gIGhwO3CE8BSJeLR/xWw5U7QsSpvVL3wgdZBOUHpcTLT+En8MzQfGXJ51JWmngm0Qh
	 MlxvQwLqgRU1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E88F99C95
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177654465368.30464.12025232888960396120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e228e1ac2a08ca054f2fcbf9b82494bb59e7e6dd985eaaac16f38463e33521
Date: Sat, 18 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776544653
