Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7824857CA8
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714714943; cv=none; b=qvzdIl5t62RqF9A9cUjVKT5tSk10zbxNBPl8l6ZpCCvpPfdRDPW35dujnB3sNbwluAZy0YEeUWzjdRjGOIM7hizDkpNDo/cnSEPZC+whK3EOV83RRsPH8A3JL3FuQ13WFIk8ZxyX4Pb/symRl9VUl2bcKNcRpXZ2emHyNPgtVDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714714943; c=relaxed/simple;
	bh=k312+e+XQxMpX4yOxCod+obSIzHtjkLAtT2OK+A5Kew=;
	h=To:Subject:From:Message-Id:Date; b=jUiXQzl9LihJaxLOkUWJmQyWH6vrFzDqy5MDBrqTp+Z2YQOjxzNaHnqW3HxjQVf9W6l/KnrOZN/C0YYbHgPIKhyuUWByUBbkNPZ6cpP9HTpWQinyAhLr0fVYV6dR3B+ATxCGZ6FxKBI/01c9W2t+LlFNF+eJX92jzbADJ3lDC3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF4gtFGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF4gtFGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAC0C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714714942;
	bh=k312+e+XQxMpX4yOxCod+obSIzHtjkLAtT2OK+A5Kew=;
	h=To:Subject:From:Date:From;
	b=CF4gtFGYkFdNcd8XOpghD8SaL8YpAMEgBBUq8v5V/U+ALedeQ0e+WT7VG6jVUhK70
	 z6HGrJhc7tNSELx9AuMnClXdmuDT+Fv0jbGaCpYUcI6Div6TyAW09IsTW/MBUaBzSi
	 goW8mCRkh66GPgk7o2He6QvnLaq5csmxf9B8z0/3LbpcJVkZ0ltfQqXDNHXIusvDAh
	 lIF56FXFzINGmFCQUZZPVuk50Yl6wCx42iDQ6YtKOgKxrhTYXxpHy75maVvI0Xjf1d
	 hSO94HudD1CLfLlEfuAQCBOZXtfslb+vVb0o3pxVz8WZh/btHSQw1ctajAb+nwsoYc
	 zKiSvbG5CKmJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F77C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471494276.25692.16701477910961362977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eafc41787fc25b8e0cdcf58fbf8b6c8926e3e31ba693f3c813df4ddc267c475a
Date: Fri, 03 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714714942
