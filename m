Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D49F35E956
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790892634; cv=none; b=OzSdlzpaLjeNmpuD2pNyZw7EvlRmXXIrf+MFHNWRk4ZkWmxd4KRK4iErwiY2cePXvTOrozO2dam4i7FmnU8p1ADI66l/POiU3GVJBN2lMI16Mmz2jwqIj3g4qAMYEHHDOnYaxUSTsERGP4+gYEBWJ6nMh1OPaiT2e1kXfFOifXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790892634; c=relaxed/simple;
	bh=fjYqOiyFrMiQaa2muOlU7+wY9frVI1DS7R/At4/ljhY=;
	h=To:Subject:From:Message-Id:Date; b=IphCdbf4FaQPNK6A+fOZwABem9NvMonvTLa2Tn1iZ4iyNll6J4xbDyrIGv5qcwPVBri2ragZZctlrkQMp+2qaFNhd10IQ2pbc3eh+EQj2KMT18IQqMhUgkWJX5VBrC2t7Ai80pW5YP4ILdASOUU6YJ0pea77UGnDiGy8Bqr2T6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG0k/IV0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG0k/IV0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5354C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790892633;
	bh=fjYqOiyFrMiQaa2muOlU7+wY9frVI1DS7R/At4/ljhY=;
	h=To:Subject:From:Date:From;
	b=uG0k/IV0zv/rCetPHVFbDqGA0bVszMRwsUqReK9yz0gjhbdiACQwVaGm06ienC4kB
	 aDti+5wGILy8aijmAFM14gutWJyNza1WXiprPz+jGJ6OAQ/Nau/NvXg1mi2IjNSwJh
	 TqhsXS01wdf3b57DkA3jop6gSybm9Bp09yzFPMZtqAyvztnTXq3ly0bEqAZrJD0RGB
	 P0UiGDL/IMGu3roN19vPco5HAVIbBGBJa0lksbY7QBwnCvwjEwiFt2mHQzUoTNo5Ej
	 5yZXeZbLOy4M2t6uQ5g7DntSYXpr1fRCH2xzByY/VNtbQO2Iv5LQtdZtpXrJFNoZ39
	 N6ZoCkUYB/z3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCC2CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179089263369.29733.6568290012443528877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8803e2131d7d495bba6d9ebc46a6c6e79badf23306f50966fc48e2af48212b7
Date: Thu, 01 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790892633
