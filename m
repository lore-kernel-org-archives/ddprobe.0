Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CEA22A7E4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769549034; cv=none; b=Eo6Unsb48yDU1TiUQtd5UnQrHmX0A0I0ii7pSpB2V26qYng4WF98p/4WgyuvEMRyV5AVtMjjSwX5wJXein48YAHS4xSmn9kt+bDgCp5g0sWWk3zgpiR2RspHeIkWOxPLX0tvyVRzSjh5++PPFYDL+7nxB8IsMmgLd2AZdxc03ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769549034; c=relaxed/simple;
	bh=ELiRP6AekCefnptM2PQ9hMVQv/OF+XHsl3NrjDHRYaI=;
	h=To:Subject:From:Message-Id:Date; b=ChkO2+NeGcv8KbML16A5Ert2UZ1rw+R7opdc/h5Vl23kbM0WAVrv6Kc1Auh62Vyqh61R+JQLFASQvI+HiLitdi7yP6KG9RLB+GKq4jjUffFvjLELvICpFk8XH+K4ZYl4QjnKzEldzSINaI9x8DYZjh5Y5pkL40400Bo2yf8TtZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRB4YeY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRB4YeY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EB9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769549033;
	bh=ELiRP6AekCefnptM2PQ9hMVQv/OF+XHsl3NrjDHRYaI=;
	h=To:Subject:From:Date:From;
	b=RRB4YeY+1KHd27/UJMV79wfUZEHp/Hf6X4sgEzaKhG+fR9iCHVT50+CKuLoBckHha
	 /geg47YcPfUh6bV5O+lWZ0IwEFUVejcGhBtG8sua405WdSfb77Va9czfkxHW2CKuCY
	 kxdyQctckal9aO4R481Tj450tOtqzgIFnn3pIgzX7fu0GOiKWizan2ZjV/i5SAzqZn
	 GrO5h1gZY8oZTDfuMUi9YJc3d3Hkl3l4kwLQF+7VNy1teRUxywbnvKIIVWJVGbndod
	 t45t40wgQD7IUlRx7POoNe01MjK+bbHBaRSZsoHPbs4TidBq1a36RwC1ayX7G25yI9
	 8jTJGYEKfWe2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B88D2FEE3
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954903358.18404.15578599668766423123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57d1803eddadb8f53a65d2c458e6108e85d634aa812b1e87105bf5fa01739175
Date: Tue, 27 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769549033
