Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E67B277818
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765255374; cv=none; b=EfMoi8LS28H1QzuNP+o9c8Mu8J6ZOrrSsfWphJoSv+gR2ellz0lzty5TLjlVeZlz3N2fXvEi1+ePIWZ/RJPVAv1RNZhxCjkDYi+27MtoQcVvjrXJMjwY387jmGp6tg5gx5hmEDth099bi2ugkpQYh/ebj7oQdp8j1Pt+zn4PqzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765255374; c=relaxed/simple;
	bh=bJYM3CQDOxGcmhvI0zf4fHDd1gnKktfai4rN7tSAXIQ=;
	h=To:Subject:From:Message-Id:Date; b=ldvLMGZ7j8kroiENlRKTF8KE0TEY6ElR5pn5d3qCNiCsEsHA+/Q0UdZe5xi5L3mqZ2J15lybBGl2cWpwTDyYkSLECkBcxLqNe9/OmW4zrfSqX//sgK7cFC/7cO/7rGn2vXaCQoKsGEjejOn4obrdlNZnun0Gpf27vqh8eTDtuHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+n/FOUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+n/FOUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AA8C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765255373;
	bh=bJYM3CQDOxGcmhvI0zf4fHDd1gnKktfai4rN7tSAXIQ=;
	h=To:Subject:From:Date:From;
	b=P+n/FOUPON7oSihq6idY9srqlb4FCy2JrElh3uthqCzc8pnlCqwqn3ruaP3UndEbM
	 UF65V6mgS5NwWC0QCIYSFvmr+t98hBClxFmYv1VS23um2MIzY/krJV1hsxy+LgUuBo
	 8avcHs1sV/7dKg0XgdJqvmterVZDYq/0XtzHS3QS0JxuqJNp8JnsgJTW+/psVyNbtd
	 2CtnsJrC0SGql/hzY5TLAFGSXzRK/NObJekEcEe+rm44JZwyPVSrzodFCdveHs5Vck
	 Kg+ihed9XjkMFPUDs8YHcPsWfd0vT/aueOA0fg1u441pU03y851vAcrh+qBIpIZWxT
	 FwY/I0Vh116ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91216D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176525537358.29318.11663500810749467290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f323b84a4e118acc8d127913b4dde73662666b87ce55037f868d940241863db
Date: Tue, 09 Dec 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765255373
