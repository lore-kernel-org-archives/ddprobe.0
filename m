Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B0E37883C
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788369034; cv=none; b=GV9karXfxnkGmrKuAQRXdXNMWIqLC0joeR7UGq2RXpAp821IrVWkz3f/gbwYC7VIMrlQQhQeYOnbXR+ge3GyEs78Dnccq59zHiQmvM+BJ/hhIJn7mdHnPJp/hRkZoITVVJvRUVNkZeZVAn502kbZa4DvJg33SduXT0pzY1cwQfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788369034; c=relaxed/simple;
	bh=zcwsj8CiT+IgoxGuiNswsFAJCcpomqeEmyhsV6BxFi8=;
	h=To:Subject:From:Message-Id:Date; b=sMrcCaz1ANukdmGPojmgZ/nyrj+wbprzJVdaQ7gLaRmbLhWWhnriAnBi2Kw7uTAaSgUqod+GgWnkAiD+CC5Io0HBnLDrFaRRayqZLwhyyiMp803XkdWvBpLF1H4GI+B5t/jrttsWf/+UJu36MC5oktofJrNiHDcXR5lFuFHVm+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GM+naSv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GM+naSv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5E5C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788369033;
	bh=zcwsj8CiT+IgoxGuiNswsFAJCcpomqeEmyhsV6BxFi8=;
	h=To:Subject:From:Date:From;
	b=GM+naSv2cAO3tc7jfV4XlkxRYIgxJ2TjQD86b+UCWjDEBXAX95pFSthpaYlFVpwhM
	 hpKKppP1GZyg6zErF3i6nyA3DJik3lyMHScwHavikMbty5dBQ9qHQx8tO8U6SVET7h
	 Y6AhBs3aCJbM53/w07PaAZXnbDR0zUdBpxxevoxcOxQSfTe2LlxR12lR6QPSyNSbE6
	 N2Y+pzb4vBAIPRDAc3n//bz24ZW6XAK4/svUjPc2gEHzaBejNHS/mljeIGN5ErXW9t
	 xVNspH3b8mhEZMTjNmJxty2CpUr8OvkorBQQn69wbXybR7jFZiUfUXNzFuadHswwvp
	 WFmWZ1xn8NLiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7ACC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836903368.10300.13165356315587850655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebbbd9122ba1804cef3463814ffea514203e98bf6d2f811a48a59b95b19eb73f
Date: Wed, 02 Sep 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788369033
