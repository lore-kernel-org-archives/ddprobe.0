Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F9D344031
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761136194; cv=none; b=pEC93DdJdG4zWZ9mDNOPlcmtMBNOojD6saRAR9Jmck8BpmvH+9H8zKKkNs8JMotjNAyg/NELgkF3nykhFTttQecgolPf1X/ouODP/tdA7/ykaMFu2ppId1ncKTSZAey4W3Acw25vamLlot4SilF699Bv0aStNbwfiIGqRy3YmaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761136194; c=relaxed/simple;
	bh=w0ukNCMgfjcbZIH+9qN5glNzcRD7ZOXASKtJcv45B7s=;
	h=To:Subject:From:Message-Id:Date; b=Dnwx6a8VoG9KKNmhQU7bANpjtEyqbj0XjMs+gMthcN+p2YD7tQtaUEbLcmBSjrGn0eQuGqEgLObJPPTCT+/8niiG/jr10ynfv4O9DI9VjYAy7IsAIAaswjAkedgSW7fx+GyCTAghoKJpxWkwsznJLQpNg/CMfZhUozNaA9LxLHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ316UEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ316UEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE39BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761136193;
	bh=w0ukNCMgfjcbZIH+9qN5glNzcRD7ZOXASKtJcv45B7s=;
	h=To:Subject:From:Date:From;
	b=VZ316UEL/QVfZJykAG3g/sXkjHWfK/hRITTDViGVOeg6TJq6YsP2Rkd9kh+WE3SJ4
	 S1mN/ZT2asVDqsUh7IXneC4xcFYLDf8pgo2OTVYWbE9EdR3es1vxSj+AMDX7cxdB49
	 7PkleEvsmfmsWWyfOGN7FI3rhYAGNDw1Vvu31jzubIHF/Vw5QLmN/Xn/qjaT2TRoY6
	 K+Bk4bygFrkxNddhm5e1djO4firrE5cfV7Ss9UETczzWOTgrCnPVljnByRAy/RGH4P
	 USW2iEb1yEKgxWwiHz295cIvDItfPNUSdyK3EylgxiHwJUNtKN2zTWPHtDKxlNDsVk
	 MSDBy4ErrwiUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9150CCCD1BB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113619358.12301.10507584311878566084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a46997b4fa08cb6f8ba112d8083344da3fa3dab42cfbb0ce17f60dad2ad522
Date: Wed, 22 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761136193
