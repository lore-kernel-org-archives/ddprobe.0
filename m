Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CDB2D8376
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784666314; cv=none; b=UTDqyJi2QfyTXuLS5C9rtgigb/by41kyrgaiJZPrazDt2mqETiz27B8evMTXCIgWxVC0i63beDd3H38YTfUbYeD2eizB00E0KUAwOvonEz38o9zXEMZsjo8a3yoDnbagaRAQchktQBZdAvRtqjEgAr1+XvnM7tJliseZ4/hhb8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784666314; c=relaxed/simple;
	bh=Bd0vLUhZLOg+coX4xmSEO0a4PlHjYT/stg8x2GDorIQ=;
	h=To:Subject:From:Message-Id:Date; b=KqzMdQwotifdijEG17usP9llqYRO+H02MCdrOrrq/mDG+Eszy8BoPQPzoEpeXqhXgOODoHwtZpWxKouQeFcROPFc8mSZGhVIR7SLEzuUdDTJM2I3sRXoeNF0H4l8fkQL70qHeBC5E2IhRowsfNp/I70ZzAfVO1PsRUxSMXUiGoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H33ixDvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H33ixDvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5B1C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784666313;
	bh=Bd0vLUhZLOg+coX4xmSEO0a4PlHjYT/stg8x2GDorIQ=;
	h=To:Subject:From:Date:From;
	b=H33ixDvN92A2Q+r2k3YOQbPavebwBdJUmcY7Qz1DCpz8z7DxJQNbJs5pKWoLtoIzT
	 jZS2vs/MlhvwuFDl0+A4SVAtaWdcyuacJI36U8bEoTzxZP1ioo+nIvKaRM09wiZ2PI
	 gAIQZSFenPMOggELiGqLPDDlFUKXVQSU4whRbYmL0pY7Tm/kuGCUj8YzKXS7qsMGjy
	 oNriGgSaZEDU18bcrpXRx1wWRY7rQBFE25BGA3u1+Fjxb6TjiLWTgSqNgli4zgfQOl
	 O27iQTGtoun0NE9025PCh9iCo70+Y/tyyILMQqNwFwq9AbNSTVX+lpnVLySfwupNSN
	 DY9Xm6fCD8rWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB360C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466631369.24135.11580227326637663158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00c118bb439210a12c4f523fc3a4132904aae4cabfe44ad6caa65d935308aa50
Date: Tue, 21 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784666313
