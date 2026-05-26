Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A23402BAA
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779806554; cv=none; b=leWY4/QE/f0DUngNe+zTUbQkjld/gMsK/yO5evK0NzyT5WshAoWyS1DI+9DX/zD8VP1MHq/7pyeICY49TWJ/KfE4knI9s/6k376MNDw/GQtDuYfQt+iY3w9KQTz4CT54U9KTQvVlVvBHWiaa/wRZKVGa91phRiR9NS8TQPZA81g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779806554; c=relaxed/simple;
	bh=NUTAryrZXHpI59Eh1fFM94HkoRe8EK5KatIcrgjQmg0=;
	h=To:Subject:From:Message-Id:Date; b=rsKVRlKDkm7cY6S3junZxm4WBO1eNE9mDWVCbXUvj7nSxVRRtkvRY6bY41qqUUmX5dJ9kRQFzvfvGMHGdGi8uJFBXzoaz/d2tkBaAPAdnGfnjWgu6yr9ZiOvNJyeIq5sMKzYHDQ1u0xArSo52mJphnVNzvr9chCN16MW8NGzlh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mm26QBBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mm26QBBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA83CC2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779806553;
	bh=NUTAryrZXHpI59Eh1fFM94HkoRe8EK5KatIcrgjQmg0=;
	h=To:Subject:From:Date:From;
	b=mm26QBBolGBZ7WpQQXahAS6g7w0bEW+UjoCMySOC9QA1T+VJ9WVYOQAS8rr7ZfqOV
	 zDv+AGxsIZxR0J6UHeQZpnBjoiXQMH8JVNAC+3fsQxNfL7NdnTb4vohZd3MSlkZfDa
	 tOvWzBeA80E6mU1FZJSrPxl48KQ22mCTziBg8vr4W9GDg4cStYP2wupZRgzYN/v5Eh
	 q8+yqziDIUF5w9dkqvXbOR1KYgjOPgnHgS/eauRI4Yi17k5ddPlNLwaYT+IiMLMNNS
	 rgyHg7DDzVKqLAtENN5eLHRBB2nQNrI7lbfcoQ0XNQz/etwhtbY5Agm8KqnjGggVN5
	 n7Ygx77ow2EUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF48CD5BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980655370.24897.1728844781239049887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b533dc29092d407bad1d1b3a898f99f2e0cf71a0ff5ceb1ecf5cf57dd96dd0
Date: Tue, 26 May 2026 14:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779806553
