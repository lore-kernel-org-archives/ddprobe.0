Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0D0374A0B
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791713434; cv=none; b=Lh4OFV5wmH1SlZVdggMB5UFikkqNcHoZ3c6FwWlsu23aQOi78RmQfiEUKJKOxLQX1Lh1aXEvq/kmbsptPufQIc3jjzch1Z0aApyjOgO7apfRTVo9GV80xnYnEG1JU/SrQEfjgpmcx/QyOPewZDpL2M/pVAJhmOfOp5uW0CalQmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791713434; c=relaxed/simple;
	bh=YYoHrr1FW5L8g27NPkbZK3bzUgyJnfCmgQhuRNf2GfQ=;
	h=To:Subject:From:Message-Id:Date; b=cc389vrxQ/U0DhrMd74fk9f1/HFjzoJle1gmt7im6qKW4/b9qt4dMKhmIqnKgMSGEeB6R3u2ctLJEFm4m6zYFgzmgBv4cu9ay0yd76S3ABinRRBTVgL66QDodRjV1VsMraO/dgfnNA/YM/T/MpqaHf/GlTIszGeJ6ScE3QDKqkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vITngTIY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vITngTIY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D690AC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791713433;
	bh=YYoHrr1FW5L8g27NPkbZK3bzUgyJnfCmgQhuRNf2GfQ=;
	h=To:Subject:From:Date:From;
	b=vITngTIY1xd9KN+dUBAFIq3Fgk3BOMwawBjt2H8Xkwmsq+9EUGaKiCcgeSDLSMPx2
	 ZNoqfcC2kA3LgvN8fIjJFjhRuiRhcsXIyH8N9q+ouRmL7QLbYGsw5OJJpt/5OxEGwA
	 L9TZA3HUlK0VSLRX35jMqa/ngdQiEFM7PVxqwbILbYdYBPJprF0aPWcqEa/iJ9OP3F
	 wnudn+LjS6mldkdDDcsE9UEhv4QQiNiNJ0uKo09sK83vc6hKcOZELDMPwjD/3Jk2VL
	 yJUMlp6U2S5RWFZp7O4lRl1qLIbbSIl/nE1dvUNVYsS907L5tl4VjUOaukFeLfYLFb
	 vKF22oo6c6qiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0592CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171343368.11567.13082199907932644931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5665c92970455e63b0b1447249023c0ea0331eed507e5b63040315d300d6ae3
Date: Sun, 11 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791713433
