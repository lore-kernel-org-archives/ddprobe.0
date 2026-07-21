Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EF963B8950
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784676514; cv=none; b=IZwJULYh4VOO1OrMLHIKVvMVTjD08Kwjd6Nufv7amL52FvltOolnXK8Djl2upNqXlg9u0yMePgvKeAaBmwSdhF/EEhkNsY7ifsx8P09FG67tlx8NcSft2V4rA6kF9u5w65hHB4YwkZpSsvRiXaNOQIpbqBpi26/HDSnztuI3gYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784676514; c=relaxed/simple;
	bh=5Yfo4z3fR53J88A7e38E5kf2vEdURWbQv7GNThOqHeU=;
	h=To:Subject:From:Message-Id:Date; b=RvIfCqMiMO2g28BdB4bi+/k/ThC7gqooip33cdrlwGGY5xGLE+2ZQJq/IlD7JNxuIuLJDMQH+kQhIqBOTYkFipuh3wYhsRB+vhegTj0ey9AzELo0nTeJEV8zCMvh6gqVtTbLGkWraAwaaSIlDQOqEA1IgvvL8txjXp1Qblw9lyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZabnE5M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZabnE5M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F78C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784676513;
	bh=5Yfo4z3fR53J88A7e38E5kf2vEdURWbQv7GNThOqHeU=;
	h=To:Subject:From:Date:From;
	b=lZabnE5MFnqceb2F9Up51pHDsxtZNwIi9e6bbwbpEXNQlaywGy2N0eSsZJlga193e
	 +11ceT3mMYmyvc4+aBCu+ZBJI/ZAElP0dSPF/inoUrHvAcH4Tk8xpOonb7l1e73VWp
	 0WqZNp5XMvgmcuZM/DI+3qXbFaPw7Hk2cfjcpHQPRHfhXVG/9ZCxBnVdyVBdzcR+71
	 HtsFlNPnWa3TeQNCmIUMi2Y5grszSNusA5Ee0i6R02AFDCzHlM9MzhNhdFb95XpmAg
	 HOD2W2LClFi42gYKv1oVuxSrBWgAGh+jihl3alcMGkIGHTZha2Z1Of5vF2CsAH6hxc
	 gfGqx17QlMaBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9D0C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467651369.10576.15593751805700066722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946ee167d68f5947130f86a4a36240d968cce2d7c194d99f73571764db2dfa83
Date: Tue, 21 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784676513
