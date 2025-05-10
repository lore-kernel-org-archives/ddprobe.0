Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4974114901B
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746914394; cv=none; b=CIb5YX0jTE6ps8DwxxqOdzm3frsHO/PBWY5OA+/IRBMKmbQEhTcLf8NNawQliT6tmvvx2wDURFZW1IbDeNbwTRBaRkQmFl6oIQ7jAM+9QMo8D/6LLCdkGDCYGMQy3a2CVwejano4462dH5fEHCnZcxp/O12GmJk7Qddx9Y1HS5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746914394; c=relaxed/simple;
	bh=XZFdtskmNhk8wNEpgI7GM1oATVtZcSo6PdeaTpqDnwk=;
	h=To:Subject:From:Message-Id:Date; b=hUrVu40dkVxR7d1muIa2/o08mfPivYH8oKMAUnXjUWOriKjX3UynV7vjzmkrBmYI902wveq74nIqB48TgCvyod/7VgEjRELGIZTV8peZNMxRuHsORE5UgBI2ELN4KLCAxfKzfy9FkAM8vqXqonjn1dbkIYBXVAg6bYf2rmYoXTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeMUlYjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeMUlYjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7575C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746914393;
	bh=XZFdtskmNhk8wNEpgI7GM1oATVtZcSo6PdeaTpqDnwk=;
	h=To:Subject:From:Date:From;
	b=qeMUlYjUmBXcd/im7sxznv9xJdA9fWMCWIKWPixWU79Czm/VZFp/mABqpW8j4+IhS
	 f3hv6ot4djBmUAFaCgOZaVzwbLG54uiREgSMq1luZXcO29EuHq54pfDLNL7Dt+BaRY
	 A303nqAbhzY1nTiqDwuz6jXKvtkQch4PDuibM9h70w318FQWB8luYQZf/0MhcQ8T0W
	 5UR/MPk2evqvkQMgtYoElH0okmr5d0L7ASu2GicbmX0HrLTkxYbntCTBINqdfFgvCx
	 ejU8nc2RZBB9wLTnTlojL8cSirsmNftA3uBIO19UIyeAch/wEUcez/BInImrJLPD1s
	 q5u1SFWAICcgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E45C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691439357.25949.11797071067728300404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8199f6eb93cf94f65f168554b75c46d7ee18777668b605c5f584d93cfc28a886
Date: Sat, 10 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746914393
