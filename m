Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1188476025
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774749894; cv=none; b=nm49o1zW/luwbfZgjM5W8KVas45j6IZlVZtpYicu1zqf0Lo4ONhxaWIdGvzZLgTRfXCJp+iP8oIqRI7E7qkGxgC8IDX4R/Gshw3yuZ4YNzWf0uWovc3VjRxhD0S++BWaP5QoHMU1EYy9r9s9KAkNCpzGn1CsgJBhWlXJO1v1zW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774749894; c=relaxed/simple;
	bh=IC0xqbkMOyyQ/VgjTMw/tjVMLcHUY1hVS64ZyvAz7EM=;
	h=To:Subject:From:Message-Id:Date; b=Vb/u7q5fOXDzm0jay7d67DoGH8v6BfolSNVAY8qWeRgizyjvjnBJ+kCL0nmFyXv5Cd4e1DXmt76fLjx0UF/bBD1ifrBOxVc0yNYfjOtria5FLyN6Cz+Pfc14t0/IJFzqbkSLXokc/jachQo/xjEi8NKgb7BPklhvy0/dKkN6FtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T/UL35b0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T/UL35b0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97AAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774749893;
	bh=IC0xqbkMOyyQ/VgjTMw/tjVMLcHUY1hVS64ZyvAz7EM=;
	h=To:Subject:From:Date:From;
	b=T/UL35b0babp5veZwF7NYShH2SxkMewWqv7L3Z6TIHAW7Y108ZjTOWUKP28JE0sep
	 Z1FMlc2VUvFOswDkRU8dSaRyWhGmkPiOU9L+RvtB/5Li5ZvxSBoJkWkTnqJ2WRfZlQ
	 jVYQ4GqFerS+84um9TfnZyL5UpnOn7tjtuNqX/IijMNck8xMdKnv6ehvSphLFgHUGi
	 HSa+y3KzCAXZ2tjxk2AEXgZ8PcyLLzxTG+ZE4Liv8/TBz2gjXWSMkSJ2oNoPtwLKix
	 Ih8WofYu8G29fsQmQbOafKKJSgJsZpF9nlFIHL6ou4YZlm6IscFgfbHNokolKaMbcJ
	 Beh9nvgV+a65Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 977F810D1491
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177474989358.20730.9652304068727132237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f85bd02cc78937d78d07bb5608427dc787214bccc131d80370d5dfe22fe177c1
Date: Sun, 29 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774749893
