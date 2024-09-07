Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287DA15C131
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725724554; cv=none; b=udbMLk9HZLLGhwwnN5vMs9VQY/xTRztVBoTwURqLRLkOregKQH9ldWDBYt5rrez5nz5f9jsABnQKxTj8VR7tSA4xpFO+hp6HQnXeLlPMAm5Kuqjkt7al3nu7gtVRDabAGWiWgQzcDbjZAt0YUkymAQSReC10g/bMJVOQCmABQaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725724554; c=relaxed/simple;
	bh=RVmqnqppeaxmmEUqI9DkUrZnPOHfM+DtfqG7ftCwFww=;
	h=To:Subject:From:Message-Id:Date; b=JO9Sqde+OiCICcS+UmmnQVL1G9bPGwNSyKcBiP/WhwNg2nJLQWGZukCMWIMyOQiCptro6nsNTl1TaGEt7oUgUd03/E6HS+ANAyaZpspR1xcQnWaZjBd/jGqySAVUJYMJgK5hwacn7TYoq+nac1aCcuFgMe0VAoikEGadvv32vJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZuPE/+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZuPE/+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B33B3C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725724553;
	bh=RVmqnqppeaxmmEUqI9DkUrZnPOHfM+DtfqG7ftCwFww=;
	h=To:Subject:From:Date:From;
	b=RZuPE/+x6ZvmeZ3YZsZTo2ej5eP1mJ8r5iJINgXNffwGorroNTrlJSC95eFJcwxXA
	 i02qj6APzzs1wlRScW9Img9B8Soq2gBnJmLRHcX87JstEKh1jtZHmFfUqrcFMbyqNN
	 Qjrb6+qAz73amGqqQ8RidMV2f+d5AVzpIbak2bqeplQzucqvGePLc/iAUBlzqCp7fX
	 Jz4U3S8QwCXiYXAvsVdZS0XAujxvfs29IuSxyWWzsumFykvs+DYtvTcRQ3vmPlF32z
	 GjYwoshJjgD2LB5qQT1pL92Ge/VB57OJ6v3yeESEUGl49D17JgjNqR4fhgezwfRGwc
	 uKpxprF3znI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C649EB64CC
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172572455363.10809.7470266846277164932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f2898f0330fc46ebf7f4be94f601e4c3f06b078d28634a0dc156c9825838bc
Date: Sat, 07 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725724553
