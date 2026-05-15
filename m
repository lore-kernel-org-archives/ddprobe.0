Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7EF93F20F1
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778833834; cv=none; b=cXZXCnrwbNJX2d0yzg5AYhQ55Jh3FI+x/awviss/RK9NJDuXrqyd45c8hR7LeUzVl4VxL+7114bYvUDp/2aKfukxr3BqsvrJEWNaP77BgRzjM6nH/VdjnHt6lq0k1nFW4FonhMVJC5nEIEGJ2c4SNqIyQ4AouJBBqIUm7efscWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778833834; c=relaxed/simple;
	bh=2Qmv6LK/oh2HZ4X0yqisvislSELhA6yNROsFzi2J0GY=;
	h=To:Subject:From:Message-Id:Date; b=eotQmR3DooSyQPs0kpWevUuVJyTvrBk6S0dRwQPkq2cab5wbGqZrJcwjW/j58TVwP00WHd8qdPBsjHLCubtOP/TjsPvfUOBXYTZmSEEV5pzTf0RPtBBHn8PwoE3/RFW8V8ti/3IgAaxtGKZlWUvNDtKGInHZxXSJ/DfEF6f+ENM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNdBNUm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNdBNUm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96E3C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778833833;
	bh=2Qmv6LK/oh2HZ4X0yqisvislSELhA6yNROsFzi2J0GY=;
	h=To:Subject:From:Date:From;
	b=NNdBNUm4+7jHhTYahNXOsIqJq08n8CS9MK4X9zudQsbPCh3pmjt2TpgnY9JwOrNw2
	 4WeocjTso8WFzPwf28ebtaU/QTI7XiIeEcFUB6OFvnUfBWyD7EvVfeoPjtWrlDCWFH
	 62vDw12BlyKN7ZuuMwWIZhvU3zxMBHtcWsfOYB1Qqk3wnENExDKx/8Qni/z8y2nQrN
	 XQtvGEAkeI51wX86qMenmBMAu9HS112JVhK2qsM33kzUEcKkfWuMhvlkD9VU5vqaYC
	 Ln/NBAyhhIm+3kY2xRv1s2jxI1FTm4HBMUQoKvpWAJmqiJDw8dV/QWBPjeyPchWjtd
	 CAf7D6ZepAdoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5E1CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883383368.1406.11377990946382261150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91bc116d46400e729c08ab32bd2c8afa8e3df5842c6be5d2a25950ad417fb453
Date: Fri, 15 May 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778833833
