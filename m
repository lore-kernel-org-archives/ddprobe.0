Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181441C5F1B
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756321194; cv=none; b=E8AEokp8ms3/ShfsAYsHkN1bKjePcuVs9VhMouKAMQbwbFK5WicQbx7v6i2/6TbzG0mzTw4axLc3O2AV1yR4nY3xHi40KqIItkdakUcGx6Ufp3wvUkbCi5VVTEOpPrzMgzJGstvpqJ9XRf16QtoEZMJLr2eyZshHfr8XiMenXxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756321194; c=relaxed/simple;
	bh=8+Udhw9qwANs/jdCVGENB0t3JxJcQJCV86QIwxeAaIc=;
	h=To:Subject:From:Message-Id:Date; b=p0hgbu7CAbRWR0P7NsFR2HX+BKRg1awZJNIYybGw3pZVPMiysW66d4/W2hIhWZOcSRjbrDN6GNX9IQuQDE8WGfmsWgIyOD4cMu5B8zA26MdWJ3Oui8woNx3hWiqC493dTUMByBP4WF4q+cp/VT9OlHtXNFfe1ym/AnAVxMFJODM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdwIf/wX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdwIf/wX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E404C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756321193;
	bh=8+Udhw9qwANs/jdCVGENB0t3JxJcQJCV86QIwxeAaIc=;
	h=To:Subject:From:Date:From;
	b=WdwIf/wXNGM8j32WceeStVNORrqcDdrYqqh/NOm0m+X2TdeICU3R3cgvlnqhWjXI9
	 iNtI6JyJvwlpV6DA9p/9haFAIuPakYH6wLudV1cbOZmPwE1IP5chDHA0TyNfOwVuVH
	 EJmMhvupoVgUe9k1Zo3jBTVyfgXiAxu8pA28FHfDv6rngPjOYJzDhqIG621bNwvWhI
	 GqAkNuKcEPUmHod5vpD123N0iOhuDgU02+qwaE6fyqOLWSNYzACZQckl5nGBPuyjyc
	 RNtXZBqq5CGT8uW85RmmchlSlfIMlmKZRizrbvYxrKHExz066e8D7NOiGEL1uQF3D/
	 tdzyDKY+1Vepw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F310CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632119357.11916.1230065373312476986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71a0245a450bdd48568202b6c856c136bcc778c8cea26878af3a8dbb3bfd692
Date: Wed, 27 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756321193
