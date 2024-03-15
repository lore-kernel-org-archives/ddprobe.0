Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20ED18E1A
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710499096; cv=none; b=qNR5ursQLATyjYQ04hPY/Wo2tPFNsYzAyMaaLyRjf9gifgIsxZK6pVV+gAO51aBM9dOJ86F6L8offeOqeKMpn/jlIvvdtkKW0GICvPwFliLEh+NDwAjzRcMV5WBBXXlF9DzTX9CY7/br1b0n8D4KUaIGenUDdDKrjdVvIlHg/kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710499096; c=relaxed/simple;
	bh=SjEzOvNrANlpAtVOxG9XUDeOFOcMa4J4Yvq35p+N8ew=;
	h=To:Subject:From:Message-Id:Date; b=Itk5VUznW+hxGdWVuEqBol5u1rQJ7Sb5D+6FeDKuBbJ3JQg18++QAuUWdx923mZVcxP/16SVghV8mMxxjX/Zxq6t7srsBRDb5wIIlrPKh5vuCsRuql0vj6wzRs4NTrFSqK5kXC2ZDJYXoQmXKm3ysR2r6Ykk4aFy9A+Li8TAn/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfT9uIqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfT9uIqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7050DC433F1
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710499096;
	bh=SjEzOvNrANlpAtVOxG9XUDeOFOcMa4J4Yvq35p+N8ew=;
	h=To:Subject:From:Date:From;
	b=nfT9uIqxwejfgFgwI7nqLAL/ZVop55iOq08XMjsMW4LSgzMcKCsxnw3IdjLgR1cSC
	 +F+VbiWZyPRxJhz6inykpz/Gpn83U9ZyfZmhs+8a1KuLj0gczUBQcG6xeZnmpEqFo2
	 oFM6DPa5NMN9HMD7VS7wMC638omDY+O/dfXTFL+d3Q4KjCRxrHNugm0r2jKz11VBRq
	 vXY3mq3ogHX0BMoD5hSHX8JBzBQSZW0gLhkTlMMMTznPBj2bQjNY+4hnqVPpLuk8jG
	 YInGcKVzYg7zdS3m+//4iH0iwYYrxX2Nx3ys0SrBOUY6UdUj5rcaiqRpHkiqs/FbYp
	 /yDXAUShb0Maw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FED6C54E69
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171049909637.6190.5094778727114644504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2536751166d3265e368a2be40c71169aaebd5c126caef79d256421e634813264
Date: Fri, 15 Mar 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710499096
