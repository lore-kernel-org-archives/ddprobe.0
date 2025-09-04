Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9C02EE280
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756994394; cv=none; b=E7WC6cr+O0lB+WQUKXPP+Msf3C13o+ZlDAuhSKvyuKQmtMLfWAM4GuRtiOjAONmq5Fc7a73RgElQeILz2c/akKHlAaUhh6KCksC5oBx2S62xzlYW9PnKENvwvSgfGHL//KI/ILsabDZ2wP+E2sufrM1vEsMsaWT+zeBd6Qd/h0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756994394; c=relaxed/simple;
	bh=O/Ak62nBoVuhBIq7M3s18JI4bJqf514p+ldEUsehz+Y=;
	h=To:Subject:From:Message-Id:Date; b=jsGFzgDJg1JRza2EsDfJ9U3w0yxkvA5RJZjmsEfKmzb2wEyDivv783TNH0h5HSbHL5Wi5BDCx2T2UBKJccd9T3r6cWBAOdHnJMK/G+ajczGHJ9quRrWBjZ8Ur+Zb82jKY/Hc7L9IxXOIWdlzrS9L9PjqdqyVNrTaX3q/RZo+tps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elI1U8rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elI1U8rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16E1C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756994393;
	bh=O/Ak62nBoVuhBIq7M3s18JI4bJqf514p+ldEUsehz+Y=;
	h=To:Subject:From:Date:From;
	b=elI1U8rx4cEwvlxS4qVaVzD6CGyogM03MCy46J/uXHlcVaansZZrVtBM1IpFqJ5Uu
	 vHJSlVFOu/WBGThRzkc89vMx5kqBOrtUa4kvD7dhE8NkqXDnQjCyCg8cRQaNfKh75X
	 ECfOhUL4NPKqfWGtvxGg/setVl1+vm6ijGVj6m6gySq9R4PKpAe+J/eeUdI30AnmXI
	 72DG+lWMaWFidG+oLJ4z1ZhXoXRdxQ7NUV49A/61IuqcKS8B8IqoEAH1q8zoxDdp1J
	 b0BkrSWNdZ8AiwAWkh9gumSQwTsGnfhJK0uXgc83QFIzTo5WtYOwu2V4seSj1cNolz
	 dS05K4RMKCliQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F48CA1017
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699439358.29059.7508993628049442414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d0f9aa1c4c0c251897b61234c7244cf2c42c6681dd953af558f7bebe48b5d6
Date: Thu, 04 Sep 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756994393
