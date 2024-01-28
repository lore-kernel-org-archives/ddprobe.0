Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AF2D2E64E
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706458696; cv=none; b=LCe/S0TIMSebYVud/S2/Muhq50T5QDKsEhawjSYFgtoRy5OCsJYrjECcIL3h0H0+coNc1lbjC7sMQxtr3+6nzvt4CeUftlsd7MXMBeJyx32ez5JQyawWztsLS8/kUljx9jawhlP06pFwtsdH3MgV5z0ZIlloyrlejQQovFZCyUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706458696; c=relaxed/simple;
	bh=KzRSzqBkdqTORXuyKg+DjjfNiFV+Y40wybcdNYcJMA4=;
	h=To:Subject:From:Message-Id:Date; b=gXqyrt9jUQDo3bQ7RLUdeORGZtJxkzq3BXleFezZOEE9fmouv6RxxHHpvRo2fPou+mVaz/+34J/dbnbcQUHeb7YTx1bkJ3D0SYcBhRA1f33svVigW7UD0JZgRBMsqx4t8hSggHI4bWtfAxNfzjj3TRLKQBJ64Lgmm4EhemDTt0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+CJYkXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+CJYkXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7391CC433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706458696;
	bh=KzRSzqBkdqTORXuyKg+DjjfNiFV+Y40wybcdNYcJMA4=;
	h=To:Subject:From:Date:From;
	b=H+CJYkXBMb16Xfvt7N8/bNn35NY3gSOaWDqLvLK7pu+v4PP5HwGhnG5hnacF7T/FD
	 DkeIWFxO2SnRoWI+PrIdGhCjkRnxsfy/JvrjmgCAuBVbnnzJ4+8nhBWhKYoL8LEITW
	 otWw1gtSAiDOUZ3OqJKEAMl1FFOHzvFDUWAQfY5V3N3dISZJarZGmKJYgm23/05QYn
	 LDml94kSUGl6BP/pg5YX8pr0vtYfawZYDhUqGtav62zzm2UAs2vTSbSpGrDDokrdut
	 NdC8xxDlZOdxR0ELAYDgWDT5ZVSqMwxsr/EhObvXbGeR2FQev+dqERXF4DWGiJCONB
	 5e55KGLbC+yeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D262C47DA9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170645869637.8509.10920249807668704596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b9fbd98dc55afe085550b3ebbb06cd04c3fc6a6cfd808249d8d957105d7ebe
Date: Sun, 28 Jan 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706458696
