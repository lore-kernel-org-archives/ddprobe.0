Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BD03A75A8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778576434; cv=none; b=bUTtzbzDCh1oWAoyETahHZwYyfLq5HBi1D/aaFbd5LeB6/OV0xDUZAuW+oQYJ8JDP2ytAmSA4Svwz+/8IkVqzpFonNelVHhH2q0EP85akMgELH8yDYF7Z//VHpUo1DQ0pMl5cNyrwJYk/X3H1Q2JN4KFcJHDCK7lMHb2Z9m85BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778576434; c=relaxed/simple;
	bh=LdR0ll1L7GnTRvvLYsSFOPz0bQ/ZY4zWnH1HrVjaDLM=;
	h=To:Subject:From:Message-Id:Date; b=cVO9xdg+uVTyUu0hG8VrIUDLwQUs/pXdLIPIiexQtcNzsw0as6yw37Qs2q2RIPT1OT9r3i5lqlNy92vaW+GGuX6tfLjBLZfubxT4KYQUQmrjnQmMr+VEnjuIp9ZtR+7vBAlOy+Ebsv/yJYR4FFwlnu95qIDOhhUBS/snFD81LNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ql71ubz1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ql71ubz1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0232C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778576433;
	bh=LdR0ll1L7GnTRvvLYsSFOPz0bQ/ZY4zWnH1HrVjaDLM=;
	h=To:Subject:From:Date:From;
	b=Ql71ubz1OlfWzGsNpi2HB3YiZ0IIil4AgisDDgzJY9tnw6HQxXzQ707m8i0edeY6w
	 qa/NQaxu9WKy05h4Roie+p6o6NiQ+mbeCL8+xKDgrpmloqReTniRjBez/Z4kqOTqcw
	 CnvvorTbJeiEcC3excqyioxZ2SLrl2gLJ/HiGYu7tXkprtkhGi8X3g12OPjdyK0tkg
	 7aMMFRhttFUc8GvbqCxdGA8JJAU/NsYthAUxmfXlKbVlvc4Kcg90anOhAAwxR9lyBY
	 7yfCiKVPjfm1VMk9ADZ5Vwk0mj6juMNjF/vsap+2gawVLEy3qLb+lXeR2M6cdH20fx
	 49RhZHFxWXwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB40BCD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177857643369.29658.4480619043815688371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9928f3afd488e852125e7fc4f661980629bdf0af976a99ba523b818ac3b3c0
Date: Tue, 12 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778576433
