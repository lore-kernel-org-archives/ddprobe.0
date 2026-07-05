Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392ACA59
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783243114; cv=none; b=FCbTecydF1Kiw526n5VimuN/zVpShCT5rMUy0OZOblcNBz5Fz7NRvUvjN2OVmPrcrL5nkVJXCt/uGCtYlisovF3pscElghtxzqgI1n05rFibOw7wTP5ZKafGkRFEk5zranPlWstSgwrKxxw/ZMa9yLL9rR7eEy4h3p9fV5Xxgzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783243114; c=relaxed/simple;
	bh=sx+o8iBEP/w30+0QruDWx44kYppI7DQWrKRZFZvW0Qw=;
	h=To:Subject:From:Message-Id:Date; b=TmJ1ZqEXYNbgrV281Nf/Fa/9r//LNV+bxn/EQK6u44hPto5ru5/RRNyQS9GTE6/1oDKOZs9DxIFi2SpPY2j3/8pJgOAAAheEs4Uz+4Jt7po9aZVSgGvt3hVCGEyuMslJT/VJhNFRnJTrb8V/3knL9BtNBrpocn3HZkIQV2WnBRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vC1sYIQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vC1sYIQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FF8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783243113;
	bh=sx+o8iBEP/w30+0QruDWx44kYppI7DQWrKRZFZvW0Qw=;
	h=To:Subject:From:Date:From;
	b=vC1sYIQQdVuVCdmF03nAGMbErJOu/dr6+WWaOZVBmO2KbD9XYPvuIbGGGjRr+t6Np
	 GYWIPH6AMmU/oXaXlSDMS7RUS2ip+H/RGGKZitz3lppIFAgg52pS0BnUBErgItEktt
	 TeiC6YiJ4jeA6/a37lt1ryZx4tM7Qm8mDSYoSu0998g7jtMHdIeUoySGXCpdkKkofM
	 ES4BnF80bS+WrLHV9MrZK82dimzU5vJG0XFiykCocnhlvB6hegyIkWCFSF4HxHd72M
	 7lpzB+PpIS0eEZVtUt7BRcq2uSHDAZutLeC7Dig5bc0oxab/99YJ0jGf7m4QVoVlgG
	 nrKaeDFbePJpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85EAC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324311368.30704.847187888783713708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a1ad53ecf9e381559a6aaca326b54342edd1750f75f860ccb7826bf255fe6a
Date: Sun, 05 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783243113
