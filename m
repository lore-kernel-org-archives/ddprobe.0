Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76365434406
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789912835; cv=none; b=hMJ5KpA4bEN65JfkloSUPOae2Rx+MBihkOOT4xzaMu+IGsqlhhZdsLFzu9Agga3WxrP/A0LS/bOjRAc+woBVhb4idTuTxXEFGMCMcboFy/c67TdQu5xIZts8Ywn0QHmIo1Qrq3S8THJvEcscC7oLNoLB50fj/9gUdH7fMoWscXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789912835; c=relaxed/simple;
	bh=KXYAwvdKwAl9bP6LgRaaTbOfBnu8ObWnfugmhEryb5U=;
	h=To:Subject:From:Message-Id:Date; b=ff51dFaPdgo9YVc6iP6yPr1yR1fzXtuMXz/aq5QrMkkAUg0x1PG6v5kUOldHBJ4eIlU+dCz4620UbrsSlseQl9cGNqMLFDqKlf5+22KNZeKXtmucPHSGzZha4Sk4JqLnTdFblMyXI6+8nzWKjH6kbgMsDrgAnfUYW6KEnW7cvtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFenhX0U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFenhX0U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2E8C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789912833;
	bh=KXYAwvdKwAl9bP6LgRaaTbOfBnu8ObWnfugmhEryb5U=;
	h=To:Subject:From:Date:From;
	b=gFenhX0UycaWwN/KN9u38QGVGjRGkP8GDMKlfS1A/D8ID3KI6SYjShceocmbPbGdS
	 cvcU5SYphaoczinqRIUaUMsZ1qHZr7J8AoaDSHmSdCXcERWU6F0qytLoxnJqMnpMe6
	 LGqmR+07vfrvAeAdSUnfxUZyjFVnBvCek0jJsmMNb8AuD7vHFf8FN9bVIW1NLHVkT4
	 rzJLEqX8r69wT8N6ggX3CcsDgPqZRnlk7mqqBu/pw3QnmdOPPi+gmn2NzOdCpnIA3f
	 L9W1Xx2Y3ZZHRpf7UuojzLUpNTh6nYzXIOpSgmElDpJuIhG1na7D0RJkHxpYUsxJVd
	 nXNgZNiI9cPTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBECC982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991283369.20987.7086274405935158372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601e9bf9cc5688b53180d2e91091d802f50314307e42252732315e0cf4487b9e
Date: Sun, 20 Sep 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789912833
