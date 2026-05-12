Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027A2386C18
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778622034; cv=none; b=fjBUMM3YnKr0R2xb9iywtJfbPtXepRPRKbJ4XumtigNetd3FJ3qYza1qA35rOUC75XSBT9wUIn6yqfUapIc3yY64kcDIiW9QCDsTZVfIeDbWPm7qrGgAVVbrLcsAWx2Gwip9Ql3emSgr5atF7J2prSaPuLOUC9lOolPxNXTUqv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778622034; c=relaxed/simple;
	bh=9Ahc0myIdA9UN7hQvZRu7LTfEzijW/f1jMZ4mhJuGjQ=;
	h=To:Subject:From:Message-Id:Date; b=QU9caJtpdt0+72ik5ezRw8LNrRSSN4Iwl03YCv03MfIdp9dLei194vJjzLBBTGoBOKaF6NFUezhgBCp44oV2bCQnwMNkE4bm2remc68xx2UUn/+zJRYFUGBhnNi34MzxgQ0p2gOmCnayOv9e14MElblz0yR0lb9K43V9JwmTj0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJh7q88a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJh7q88a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE96EC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778622033;
	bh=9Ahc0myIdA9UN7hQvZRu7LTfEzijW/f1jMZ4mhJuGjQ=;
	h=To:Subject:From:Date:From;
	b=FJh7q88awY84fMdjBCHhB5Sc+ZMLV+KF0X0/RRIA79+NgnA9nz8/E/2r5RWZfnxeM
	 jZoY7Xj/ZjNl/EToGC+NattMd0Xo/BVAiPoggY0joOH0Rph8Gunrd4VeNwUJjM45cu
	 5wE+VUNrsnGgHLuL4cYhwnHNQPQc44e2lnv27Vepl3LEosFHEoG7dQsHo02l/QGX+K
	 Y/pW02ZycXwnVU2qDx1V44qQzvTurbzQytAZeIuwJNO5bmMH75Dmj78r6mJEWiEyA8
	 +8BQZPMyboC1t2j0av38+ZEzp2vW/741sA8npjKR9UNV/mJ1mLb0ud1hN7F7V3eYpR
	 bTDU+8RqrtM9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD28ECD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862203370.9522.2794702070952510561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fde5ed26234093cf394d607879c7b98e252defacb85ae163a38ce65180a6a47
Date: Tue, 12 May 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778622033
