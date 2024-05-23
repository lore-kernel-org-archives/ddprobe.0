Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4559413B584
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 06:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716445403; cv=none; b=RSmdfzGkBjKpsslmi/ojFpydPHt85yJjLMfKzglusyEDvi6FxJmHe4Tm+3BEI2HBXtNJj+XTeoGKYAThQbPxutOdDuIh105ELdzZL9Arge8HmuRSSGL2aOl0/+/4dTZ1qUdeANAHafWqcyVeuE9WqMYmm69C1lCwiHA0RAC1kqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716445403; c=relaxed/simple;
	bh=23uG+KD0b1h8qtMId1s6/8VL57yYRi57ZL125LTun2E=;
	h=To:Subject:From:Message-Id:Date; b=aOycNgMYth+E8gjwZtLqO10xUTZujkx5OUlcMBTjXFUxAdNAO+VPOOqPql81Db6+MlT+JrisQI0HpfLq5+ZwrFGamHLyVojtSqoi5hLSnqbWLmmrgTEfexfpsoKDAUK3IJI6cS/1al+jj4LEkVnougkA74YHtV/hWI3BeXvkOf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6xSaTK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6xSaTK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47B7C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 06:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716445402;
	bh=23uG+KD0b1h8qtMId1s6/8VL57yYRi57ZL125LTun2E=;
	h=To:Subject:From:Date:From;
	b=s6xSaTK4uMEuBLyuGbF2o6d2tcVVmZ5zhYtXR00t0gLra6rgUzij31o8suwhf9YMW
	 r3udK/K9r6+0Mn6uCPt2vHUfvY6+q/5Ui1IUTsVUDR4ozHjtRfatAwpvyeoZKINvJT
	 3PYIiCYifHy9WQKTjx6xAYBsZhxbATFDxYlTWjgu2Hq34pmrYr/QXkkuTUxEGky4hW
	 aTYxKz0KZiYAWXiOkiiVK3+esruDaxFyRazNze75lbKba11hTXNsZr7fm4cbzDEmXd
	 oQqS2aiMCnk/zmEg5gmt45Nw0d6EoDpGqTeiyVSDA+hfY0zMZaIQHZJ5cyD7qZDsca
	 4iFgYDNDbFvjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4224C25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 06:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171644540279.31854.16992997855108640311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2516ec114bc975a63f4c82ee1a995057f89ef746cec376512614c6bd6fb15c
Date: Thu, 23 May 2024 06:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716445402
