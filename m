Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2686D38F941
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783929514; cv=none; b=fNW3QvzYpytpMHVkMmUOe4tbWd3kTmKNDKxj+iZsQK3ETOasD98nErUzHpuARa6vjnTZeOjknvo9efwuEV0+ElJUEGG+hysyLetmOZZtJYUzpmQ8hf6LDUJIbKApcam2FEb87UaAGu8uIUz38+h9zPJI1us7D0gQE/aaoCS2bnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783929514; c=relaxed/simple;
	bh=zWv1/WzJxeVnbx5ICbtnsQNQHBut0u3526l412D7RGM=;
	h=To:Subject:From:Message-Id:Date; b=UDVIZpzOYjdgvjIlJZ2AyPuYRbvy0dor46W993/bJlepf9xDidRGHxVgpZDSzpIptJDWstowDGoCSReQOrmd461bXd4Bti7JTUA59begMUFIkxkydCCyDR7n+dx6RXOSE2jEsjDWwKcPkes/eEtckBXB+5Nn/TNHxyHUiLsNeWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxfqGT6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxfqGT6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D22B2C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783929513;
	bh=zWv1/WzJxeVnbx5ICbtnsQNQHBut0u3526l412D7RGM=;
	h=To:Subject:From:Date:From;
	b=OxfqGT6c+/KJxewJsSbrAHN+A/5IKUTizIrPPkvCVg9e3brZ/6sALPjgLxjACbYYU
	 T6OYriNlsSwLUsBuSPkbwoUHSCSxC6Ex/8KWbNfw6p/qUilItFh/b8w+GW2DIW65sJ
	 VSr3GTh+KPMWdusxjpAke53XE5jWOeciB2PJLUibMw5Zph5E/f3APFag+LN8zbg6lF
	 VWLyQkvo2XJZQHHIXHAmwLdh6Pl4G2aC+/zW0nmZxKk3DB1yGvakgVPf07Lk/fIQgP
	 pi/lXdTtJO7KfjsQu3KhSja3cQVhsFV6FxEqWGo9SmKy19eJVZpWs7u3xKm4coOQmV
	 qoQWpsPrnmylw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF11DC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178392951370.13810.4080791087818695939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0854d3035d7f97f2eec8e3be26b7c06bd4fbac6de80c0e10b61f8eb3ff2a406b
Date: Mon, 13 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783929513
