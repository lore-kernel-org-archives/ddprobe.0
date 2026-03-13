Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFD91DED4C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773369294; cv=none; b=AZeHjbF23iqs2WJ6/1c4kPpG3mQmJSA9EJZoNhof9fw/8XS4lySJ1k8WsRsFtdERpyBeEqFuSC1w46/HaE8zvaVyyAnF3CIpoLOS4Tgp5dY2+5hgvBQMYCNvijNBAq+AfihMSoCNjiZP86i4w22mBPZtZyI+78O7Oy/L14H8Af4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773369294; c=relaxed/simple;
	bh=POccH/T291MEOJ+3okNwxXvdTyqBFLNMe8J/sO2SvEs=;
	h=To:Subject:From:Message-Id:Date; b=FpRuI7IvwfaJrsmw9vorplYi18t+smv01niYkjde0RncGHTQcIt2B6SDSQBDL94c8x0KT3VJn8AbJAXlAm5vT0ZtCB8JHRsHFWgBrxvbMXqAVkT0x2d6ml+zsp0zIM9qxF+PxnZUPTIEt53cLhnFCCZ/iT7kJrMbH9TwJ/YfhQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+krlAFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+krlAFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE6CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773369293;
	bh=POccH/T291MEOJ+3okNwxXvdTyqBFLNMe8J/sO2SvEs=;
	h=To:Subject:From:Date:From;
	b=j+krlAFU/uempRhW+eH72VEgJWAUImVJwNMFc9bR/0oQ3x3tKPNRMzpkZlhWgceHI
	 fDo/bn3mt8B801NsG7l5lRPQ5ENuejexnUXjs7NObwTirX/a+1nlp+6/dQieK1GtzX
	 LS+L4QVumm31hJvo80lHnjgdVQKrFGtwofUSHkXDEsW3KOIVpGMrWHIwIa61sQ/kmz
	 LPmiTF9z/4dOZJRXeGw8S/EG7xRbUNY842uNvfM/7t8BUJ3tRRPKu5vswuOFUKDYMK
	 zfKDgUzDKCVl93N46pCdl6Mvt5xx6emNF7z7/yyplhEE5lJ65V5/dIYTZBP/JjE88n
	 VETBveqxjS99g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90282106FD66
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336929358.13242.12663627960931175536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dbc9f28abc609d6c69092991dbf1957f7bb3744bd286e50f4bf59ff90838463
Date: Fri, 13 Mar 2026 02:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773369293
