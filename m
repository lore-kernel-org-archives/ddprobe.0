Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 552E237B003
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791813634; cv=none; b=GSAFSF2nIrytnBurYEh0pA8Iag2Ro7rSLmY6PZ4j3WaC5IfrLNTjgOoxEb63hvBZACZN98T6Sh6pf16dUb+jx2jTDrHgQd6pHd77fltS9KaFQeplf91PbSoKt2Tcb38otpbh6RUQgr4imezsTiWuDm+Nr4E86bqqsckzJVyfReY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791813634; c=relaxed/simple;
	bh=CfN6N3w2ooMgnbww/9vQhCKfldfKgwaS1wO4N8vMaz8=;
	h=To:Subject:From:Message-Id:Date; b=YXHYKrIILWywS8dxqfcLlosJLeP2kFNcuGJ4in+VGvLMDF1QBjWugVnx8PoafTo7V2kw8IyWgzk9BCiQKAh/fpNu67rIS1Xk6sH3eZz+9QH5wUVcK2AzzC5QUFv1FsZW+xcjj/2IkXJw46yNskzExuEB4mQmXGguOH5OyAfQs+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0ul+NtK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0ul+NtK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1ACC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791813633;
	bh=CfN6N3w2ooMgnbww/9vQhCKfldfKgwaS1wO4N8vMaz8=;
	h=To:Subject:From:Date:From;
	b=B0ul+NtK49PdHmHmgz2+a10dXbQ5QSSnVtnY+9KMgcFDfVaTy+iQitx6SxHCiNJzV
	 lSrn2bI1R0TwmyEsIorO14RenAaAYKAnQIwXEHMVJErfbX9/DOi99pI4Wf90/N96e9
	 a6kqookTo9IagLGcZhr2M27Jut3kCIJFahdFHjdur58FWG7AikkIvx8GqCdv0NL750
	 B/WZ5Mj/q5USa4WxmjDP/MOIv5bu4F9DCqlChD8FaXZU0ER/Np4Ku1EVoNvWLBz6vN
	 0ZcJkXNsBBBdZLfAqDz/yMhPya+eaRnVNnF4UmKX9JYyuXrn/aFaxj++W+ZKdzMrYh
	 ImGCU7OPFjvpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB83ECA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181363369.2285.2217974042648924813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2adf593a19d2b793ae00b23029d60915f419781653c33ca54ed226171c3d1b3
Date: Mon, 12 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791813633
