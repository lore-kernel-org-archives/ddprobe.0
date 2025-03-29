Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314B41FC8
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743252594; cv=none; b=ZxVnFFvS38n0jXG0r0iuUYrbW5D5T7QKAMuWvFdvwg5Hw+iy5otwDVKsO+wInIKd+nilWysNqGpF6DZyVNyZgZyGTedtBhDt3m8bDxRpwiXV7U4uyaDV13e1Ou7hYYXnGMny0l1LnI5KcJ0Avt0v7qyQTXWeXPu2+Wwok8KOAeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743252594; c=relaxed/simple;
	bh=caQtoBtq4StdMksQYBs7f1aGeFAvg5KX+ok8G0CskNM=;
	h=To:Subject:From:Message-Id:Date; b=C617p/isaexRn0ofC+FPRhH/lykz8BHs7A9nbq8BWZ4UwcjHQ/6+RGcnnq5a42qILVrWOkZdWh5lveS9AVB5SKm/u16DsQBehuILJ7eNRilXuYSDYiNEEh6HwPB/6NiE4H9gg/p5MqKxN2DKlyyq0MGRzaO2v7MEt1jMSC1vsUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkXMTsv1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkXMTsv1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2381C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743252593;
	bh=caQtoBtq4StdMksQYBs7f1aGeFAvg5KX+ok8G0CskNM=;
	h=To:Subject:From:Date:From;
	b=QkXMTsv12SlOaYbRVk4WPsiK20IXQC7KJc5R+t6kVVJrv0OXl+oJlFLDrFn3WtPoZ
	 UqD6duU7vGFx7RGWdh3/jKmKQCsc01BuMGMr3NOvijFDYEqCx+u5swacRiDApG96Uj
	 bFUFIMAK/ogAu8bxefHIvoIjDOF3s/TSQDskXSWW+OdG4rPR/kWF3NsOMPbk/wwCTn
	 8OsDJskuwA3AV9o2nG/NTkpFTW/fKhtYAs+BCOgoJW7N/eW2gy79n3AzC9iATOwCEt
	 eH2ds3kpuPwnmbjifdwQOLfJBvk/qHNfsf21O+xwoofm0T9bigQ5Zh9SugVXnW5V3u
	 s9KNB9BJ+84Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D130C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325259363.18808.1797741697157510511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e27146f0842e65aefca610367fec77cb0f3488548f46f0e8bcee422c3cb1173
Date: Sat, 29 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743252593
