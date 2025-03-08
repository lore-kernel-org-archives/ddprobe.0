Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB124C9F
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 01:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741398534; cv=none; b=BUHhxDDVDPr7dyxjRiLkTDdjzgFgiwiVVRHN6/2Pio0Ii33+1AXt6uxePbkmUhvTsU5FDbA6w4n2z81D3RICMSYR7wzeq/t/g0geDlSrtMhXGss7oBIHJMlYJf0poOyVBJol2mqiAJ9W4QFaOoeUM5uuotqtauHYNW22RQJEQPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741398534; c=relaxed/simple;
	bh=YZnncmRo3I5pPcnGsA4UCMcTye0dHuUR38OR85ozyKY=;
	h=To:Subject:From:Message-Id:Date; b=bWm5kJx18P5tscKUdtbXEeOlHMBENuiEGpXs/ipcN3VPx0iFr71YhD8r9gf6ORQGj7FgoONcKJm+Oi209Lmq2BmG82JlcilpvyGZPf57SKZDVg+KR97cbR2d15Di+hxEvK8sunUyOYp0cJ0iNPAAq2HDPj4d4eCGp0OaP6qi8Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkLAObcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkLAObcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89CBC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 01:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741398533;
	bh=YZnncmRo3I5pPcnGsA4UCMcTye0dHuUR38OR85ozyKY=;
	h=To:Subject:From:Date:From;
	b=rkLAObcPonmqr2w50JVzNPpV1qEwGpVhwuJLEqZct0K2J3dr0oVeK0aQmktd4N4X+
	 JGu/a7RtmNweK8UoA0h8kNLYnLsk23+Klq4ziVovZUKuOA6wKTDsTBRXEJEq9RT9X3
	 hUps9IE27L+1WgjBJrBVfYjkxJRvHuK2ZzrSfEf73M4rsM2eS1ayiA974KjpYJRtMK
	 VyheT6ziN05isfHQBgsfdQI2WGAF7LcLzqimPWlkBCqJY9ng04p/nqnhuaKOx6YrwC
	 dQ5j6miSQIJUsmppvnm7Af5P7cLbBP1MzssrSyXnncSAIG/0xcQ/FjBTBRYPmqFEl6
	 HZ+jAvQUOJrDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6E2C282DE
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 01:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174139853363.20839.10119073294012938664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1678a4c04e97aaf57a5ce34d5fb73ac6442346bd28bbd08e6747d4454bedbe2
Date: Sat, 08 Mar 2025 01:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741398533
