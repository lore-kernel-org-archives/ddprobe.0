Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF5721CC58
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745365794; cv=none; b=nAtop+nDX3T2dgSaFUecPAnsBu8WikZPgUmGNt9k89v4/whUSDcEUCFzB7KxNdk3/95onFF1QQv9Y//XiUBT2vaqkSM9tz8BK12dB2IW/PSZyWIGhrcHICtkV8txXi4Qg/ATt8/as9VMGqAphRn9FUwViL6eaqOgdq/JHSbxJ4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745365794; c=relaxed/simple;
	bh=gkmSh5QZHe0WS0+vQsuUxk72FPlahra66Xf4UrY4luA=;
	h=To:Subject:From:Message-Id:Date; b=UhFVo/s54MN4Wg0ZH1UXbg1dYXB6pvaH/iia0TeXVyOsxTWbnieGqa223qmOxSs2GWvPDu1QM2lFnhunXuKIGVxFNnrQW+1lIiMELaftbayrOmFxLjtR4WZfMjf2iOOny3sqkGp6O8QSBKOiW8E/bUD8P9aFZDDyROzSBDsPw88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZmYbgrfk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZmYbgrfk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C80C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745365793;
	bh=gkmSh5QZHe0WS0+vQsuUxk72FPlahra66Xf4UrY4luA=;
	h=To:Subject:From:Date:From;
	b=ZmYbgrfkmFvrA4oEp62UjLcaEkXUFjycJNKqGfI3O/5St1RtGeeV1EmYkTXTrJWcf
	 vyivL4GbVRMviuPgEYa1bt7Z7FclK62Qt6ZVez/4WCtRKCI9xwK3HqsvIVJKgxEPF7
	 TqT3jMXR7z25gKZrVy+SaM0/eaAfhppACOxjdbLos2ujL/x/2qQCxEUP3s3/ZN7Sjk
	 z8zRj2fhb9TM0PWujvRr7iqAJawVJKoLXDTSTph5wm6JtDT43uXmSRkACVUNR7PS9z
	 LnaAT711m/TncC1qg1cX/kDUP/HvD0I5683splPcPo2G5v02+nsPfnccnAsjt5yKUJ
	 /ctDBBicUg0rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92204C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536579357.30887.11673868979180411349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d690baa45f7dc29d376a4cda91876610f0ee3b3d6c1b9b84115b98885def891
Date: Tue, 22 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745365793
