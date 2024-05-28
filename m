Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B3F645
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716872063; cv=none; b=No5aGps6D2tBaex8ny4sBauIgobruIOK5HPqpSoabP+JzMta4ZlXthQvHPTUhoSkhIhL1MO+xvSmPNvD1T1Tz8O4ZwYCgl5L99MTFm6tpb6YlcIgXLNs3JZpqX4OWoW+1AmM5v+SZW1192TaBPWBan6rsuq3OoM0slQU12Mr/Ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716872063; c=relaxed/simple;
	bh=VtFXjpM9gygKaUHcfp+OH1CKSXoeFtTXy6kP87NpoGM=;
	h=To:Subject:From:Message-Id:Date; b=X++zrDVZsYptrupn7yMC7rnU/dpXgzL/Uy/7jBn9HasE1saia6gyIKyRHEXvFnYIccB3SKSzdTx6WokI5Gu/BUdtdTbranaHejZPgHHSSU2LRAhOyPI1r/H7cuuwpoZJwt5cJBOsfgeOqv8ZRx9GV1SxQYUZQD4BM35XtiG9nbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JX+LMqA+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JX+LMqA+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD02FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716872062;
	bh=VtFXjpM9gygKaUHcfp+OH1CKSXoeFtTXy6kP87NpoGM=;
	h=To:Subject:From:Date:From;
	b=JX+LMqA+xVCbLbGvOMAfbAp669udKCUAhzoNoPnrVU9I4CRrJvBVI0JUOotqsAQl0
	 UdsFaP6KfKRFX5TgzwBlKksSfRsyz0EhFUOiSoupucfGJh4/sQR0fB+NkyteurRnG6
	 F7UQg+NVEn9xtZODAzkVANwzkbasgs0LasxGHJ5/vr2yrw5Sn011he1GMmgNRIBtFu
	 YcvOLfkapcErFAghEUT7o3eYRRc7u/7bECNUwN3wqB7+K3BWfryMBb2uNznkQ2YO18
	 DvEaU4m5xzoHpXqm6N6AU7hJ8YArpvutU9Ap45V+2s48A36GQ99z9kNxa808VEHfrw
	 kcQrtQYkosRcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE540C25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171687206277.11735.3524828267215984581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb28e92417ee3248fa137ab228771a61efcd4b55dc557950a1dd7e053f927d09
Date: Tue, 28 May 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716872062
