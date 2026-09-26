Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545334534B7
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790436634; cv=none; b=bU8U8jrmtnrPBXM7WLK2zHgDi2T/+5DLK/cfv4mOIsAnIqKCinA2OlEeNNKC059Tohh39x6n2V/k2UuJI8lX+R0XTnZMC8Z8I9X7bgvBXH3Kw99ovVdKGjuWnUZ2z1evvyViHoL/tiP1n+mx1rYpoi34IV8ozv/DXpihxkbtRQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790436634; c=relaxed/simple;
	bh=4JY0fqxL8MxtquiaZU/mMsHd0AqybJxJNgiQZFUwRBA=;
	h=To:Subject:From:Message-Id:Date; b=WVsuAUFHK20eRuSBI6pv1xMU8EOBeQDTBYZPgpAOFNXPgRNBhVX2Y9d1ucadhtdawr+cEbb3rLfrkhxpjrFdNjNQU+T2670Gc+tLinwnOJ9EpzApiiiAfl5SqBaqjeOTu+S/V5V/rq3UR7fjTr/8A8BL6zoC/nQ16hyR9qjAZ4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eu1VzmY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eu1VzmY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D044EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790436633;
	bh=4JY0fqxL8MxtquiaZU/mMsHd0AqybJxJNgiQZFUwRBA=;
	h=To:Subject:From:Date:From;
	b=eu1VzmY38+NZ3U5lAzFz+43rO6ysxmrVYaqahI6uXgqGcYTW+1qWQpaFvdDVvo1QE
	 e6XdbIeIJPyqvHGVqqxb3KqPhKerffJmnAFkz1nb59i33mAI18cymiPeggcP2nzwk8
	 R8wP/acGKJTJx0Atj+QGgHGiqpAOGnJTS8G2AWC10fPCdBUvGnP/9fV+DQzXz145HC
	 bkySNF31vwlBF86nrKEv6yuVEHW6/9MK01MCzGYmGXwUJFjQ6yJxFxcycBEuZjZ4f1
	 sOlymX6xsNvfaAQBwH6xnF3ajwmuf+WCCtA+I8tBeYpmbK9A37vir3+FcLrhrlAYp+
	 Ds95dZSmWaF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3CFC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043663369.11271.9448564497683049164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bc5ce15a1ae873aaf3af324d893dc8a7d18c3a846ab7861b83ccb64f4be5f27
Date: Sat, 26 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790436633
