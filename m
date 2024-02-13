Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166506FA8
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707790697; cv=none; b=eWnt0d0eLq8PtWEkk5ahSPxcNY5zu1Khr6HdzYU0QiqD+Mz4ugjIN/JQDu3kwE4Eam8yg1tMitJp2iwMZT5Jt8C32YCUnyX/ZdDjrAAuSZKSXqfdpHknDEj7kNG8mDyLUJN+wRjDv56w8HMKusgIPIm5ru9yyyshhBpV0x2U0Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707790697; c=relaxed/simple;
	bh=0KruwOv64m0QkQKTwls1Gi4Bxy6GFAfyM+v22vJl0iY=;
	h=To:Subject:From:Message-Id:Date; b=RnLOnhtGJHFlhqTVCpzEapBbmOpKmDvyLtnjDdRMUWsGC4HTnz2QV+4PGYh2e4LDs+0B33jjbP9u+Sanbo01pmph23jTK0aTMvH0HTuvsjMLAfYxD5QumozxWRayDcvlI6H8RL96cRvzUxsfiZT4PEEncyFR5bVWVfK7Yz+B3I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RVKqKYl7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RVKqKYl7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 968BFC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707790696;
	bh=0KruwOv64m0QkQKTwls1Gi4Bxy6GFAfyM+v22vJl0iY=;
	h=To:Subject:From:Date:From;
	b=RVKqKYl7puLgMREhGkRUXLg2r/N77yQDJ1NrErQ4PkJ21lhiy9zDDuo1Z+2ORRGKW
	 7DfSt1G/GcKcAS69XlkDZH5YkTBEAEmORO8RB+ON2a5Fs405sztDR7Xi3UYxmk1iz+
	 FLFFlqiO/H8c/kxOzIX8IfnUZOk7jc5bWmIAcUInlkFJ5bOhvhGvED7DMSFI6xakQU
	 zbKNOtAcBpc68OkcjORcHbs6IYxevGhB3/CGjSgYzkgPuwMrcGeAiv7QzT/pre0rOJ
	 O23qNF0vwU5Hv8RHFBU3OOoj26/59oIqvO0F0TZXEDg95f2PZzv3AZJgLvn33dQgW/
	 5J94xDQrjuRMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E92C4829E
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170779069644.17803.8572753729210004416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2df0dbad816e6c6e1b8e0fb8fefac0079bea84690621547afdc74ba683ff937
Date: Tue, 13 Feb 2024 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707790696
