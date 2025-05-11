Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DA1645
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746922195; cv=none; b=fnN4m3D21VkB26fBYkavb8R7QFx4ZquQ7Suljnyds3Nyj8m7D3ygKp/Rme5wE377Jghy/zyGf+w6e6V/NUDwxfrOt6qOn44Pjew9cSy/bn2jOyN25LqiAZyBd7Nyn9zsAuVmucM48M5A+PkDAh70GVqB/RiOZRvPMGa4QkPreXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746922195; c=relaxed/simple;
	bh=vuiNSHT6J0hagIj8xv025qcU3AnSz+izWTL/XjuujZ4=;
	h=To:Subject:From:Message-Id:Date; b=qkKjGx9ihjJT50n2pwblEw58iLh3VzR2SilN8zGXdeJ+kRfXzMGD21hsYhncRdmbO6rTyoHbxBXQSWv4yuwJUVj4h6uiKZVClbS70l2CglOQtccyNyVH+j3Lnnj0S5VIsOhs3/1tK8nW933QgCQ7+BEKu8rDy8dpsWEJlzPaDf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijmMfx13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijmMfx13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1753C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746922193;
	bh=vuiNSHT6J0hagIj8xv025qcU3AnSz+izWTL/XjuujZ4=;
	h=To:Subject:From:Date:From;
	b=ijmMfx130oTCWp2LhLxEfyTPUSP4BMcXsthqKTwS2+IvmApl6jptsxgov1p48O2JS
	 A/KvZYJ2iDWbXlm120hgs/dJKiv/pRHo+vmeV1ZtZquJGxTAqVP9BgiVDH/Fkj855f
	 YAYqWAvcWdkUZtE6g43YosP/pxAkS1U/sj6V5NNmfeobR5PPkRd8kHyItnfH4DMQ1r
	 9ikGBqDYiyMKyOKi/ecby7poxm//WptGcf9FpeC2e8nXT3N9lgWykefRBsuJ3Dm+T3
	 llqCbHOy67pT63ykPX7wlsUrFnjdTeFmqepaMzBF2bhogdMuo4SqUUpMfAzsSbY69J
	 vPSX0nQg+EscA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9B2C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174692219357.22751.2520496471441094697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f510a1a470441d11cddf14752fc44263625ae3dc7cc2c43c8872ff07064b7209
Date: Sun, 11 May 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746922193
