Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BF92BE043
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777693054; cv=none; b=eTeTPEJnY9j8atli2fEikM1IbSoaSsialEAvz/ZJ391zxlKgXXJCi1rM3w4d8Tik0Pdh3s3P5d5vKok5iNN8xKOtvH0H+0XPUV8OmxxZwKf1e5mouUaZLxxDXlkuX4EOE60Ro/qcDs3dtCVKJUExzZbyYIMo1yt332Zcbb0Uwtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777693054; c=relaxed/simple;
	bh=d2IPpXwoQKsf8GOZ5NZ9g5smTCeyVVf8FpiGTvxMg1o=;
	h=To:Subject:From:Message-Id:Date; b=gj1VcJ970tByMSghYIbj+5oaO78ajHmlsXfNlFK8216qEZdp0stdQ6eYNag/FfjQSvT+QIBHtY2lDrIYpjC2rgJrDUEkLN/ZYOqijHVKbM9RoGuJM6EtPHkP9BKxM0L7GOuRjHs7/cQhyMinVJYKK7VJsgYA0HCnmoV6b/o1zI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yx8gFAZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yx8gFAZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C156AC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777693053;
	bh=d2IPpXwoQKsf8GOZ5NZ9g5smTCeyVVf8FpiGTvxMg1o=;
	h=To:Subject:From:Date:From;
	b=Yx8gFAZ253dTLTJLehYxJf7Du2NS3z7Nw/v9o/ul0jY5cITzM1w5LYCu1Ko/jK2x9
	 IO2Zowdl7Ne8h5IVT6fP4bYNY83knvimLXAWFp2za4bjkU6xdqkziaW11zNQ0AeeI+
	 bs4uQlgBZxEOhQdSLQv87UgMVmC4DNIBHGkGDel3WWztrY3BR852aSUEKY6gq/PwHo
	 tka/yBVzygm6UWw7OlNXU4gMAilG6TB1Zio79HrDRLod+VFrQ3N9J/Jx8B1RxHKUmv
	 lgewQqBk2zstzmy3+Z8O287Vaggfxrwm9mgKbKr14/pb5BXIzgg3V4gR0EQb+/8fEX
	 18JoIhm7Abk6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16D8CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769305369.21687.7666117020916679498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7a4060f876a05ca06014d89661986cddea0c9bf86035c44649aa1f3fb3a7d5
Date: Sat, 02 May 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777693053
