Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE263346AF
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775274334; cv=none; b=F9hJXbQi7DMvSWBnfW8+8FbtffHQVXszZ/CTudwNmzR1BPpERswxrtr52lx73MsA1namCS1Y2l1sF3zhvmz8VB2AvYyvyk5CwYNJK0wrJd1uYp7ZPtSBAqUFI0qz3Ny8AdbgGrEIJ2eoxLXOMFKn6Em29Cjlhe+BulNjbX7JVkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775274334; c=relaxed/simple;
	bh=6KT/RHimUhTk9ImMtcxVdhsJmFvxzALp4lwp98xOLiE=;
	h=To:Subject:From:Message-Id:Date; b=GmAHMjf/ZR2I1rBilT1Krh94ZBElhwtWNvWaI6qJPCFy9BnhviPoG/79sq9xVjkP7hIST/n0/fZRlcDpYPWRuOp7K3gQk2KpCeP4CELxv62XMywAv0FWFn1COzF2l8C05bIkS7cLZnuJCysm43S6scIfXV974A3T8Kwb+LHV7fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNFtZDaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNFtZDaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5BBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775274333;
	bh=6KT/RHimUhTk9ImMtcxVdhsJmFvxzALp4lwp98xOLiE=;
	h=To:Subject:From:Date:From;
	b=qNFtZDaEtbeyPgEhSMTFH6ycUa0ssZg0QOuCVa+qOJmXQ14n0qLEHncGN600eNA6Z
	 3Bp6IY8FLzs1E6SWOTMqALM4qxOK+dHzEJw6DTixVCidpjiVUWzpuZSbEl3beEb2DN
	 TzGi6Gxo998vdSfqJu1qlyXdn6c8HmGWlwBliL5XEGBoACtpyQhwF0bRFS4rggOoOt
	 6ApSqdzBEf5TYOgGJomPnFjaSKIAwvr0eex2wKpx8m33gZi5kZSaDsSWa9JNUenWIE
	 nt1Q3TgYkTXra27pO4dTIiqo4aqqDEUjddXmF0Mj3xfmfeaUd82TPwM1pfsTlAgfFL
	 Kj1EUi1JSMEUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A3E88D7A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 03:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527433368.9868.15474021921324335486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c14fca55dd51ebdcdbaf20906804171b7b7196a67c5aaddbe0c5b99e59423047
Date: Sat, 04 Apr 2026 03:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775274333
