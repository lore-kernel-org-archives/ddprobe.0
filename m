Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBF732B13A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780348474; cv=none; b=Q9+Q4rhiGsQ9+hOzzIckPecWCa6mnAIo2zYURG/eeHbvtQR8n3MwrmJTsdesRZHVmLln0nhINEfi2H34MAv8Y0SjFh8awgZdzV+5MwrujTw27oQpmBIqLDkHRAp8NaJZ9TRZFhKN8E1Tr1KbnI6Yqp9kR4Gw/YeraoPfn6RypHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780348474; c=relaxed/simple;
	bh=f40WRQbsgpsq+A8BQFQNLWqAGcxCX0J5brayIUJEURo=;
	h=To:Subject:From:Message-Id:Date; b=MXKIRD/CAxDg6Sbbdw4cE24Nv/gJzw1dZDsOl+mfZHZ/TF53loaH+zZVCtL/ShTDMN63LfG8fwQ4lxHpU6W1jmRUzJJvl2rY3TPJOEGXdfDjVWLtvHd0i8haE2ZaisQ0Lnito5BEMlixns9cKOfT/G1jpFDBq9jLwW7WLBgtZrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2HaZTsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2HaZTsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14D7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780348473;
	bh=f40WRQbsgpsq+A8BQFQNLWqAGcxCX0J5brayIUJEURo=;
	h=To:Subject:From:Date:From;
	b=a2HaZTsgo+dc1+h0PJY0UkJLX4+Z4LpbKMJ/jxcT8XQzwH1DmfEWV9FPbDmMnEMQp
	 8jIOrWH4+k9rQtEBaMVcot/ih3KW01rG7Bi5zvqA0+cd/lamllwEkanPimUwUCxyi6
	 ukeKa05h9uEYAfwjXVnvrbjNSsfHblou/BXTOzVtx58D7x1PmTvs+8+Qu6+i6Bi8EF
	 Fq1sJxZUt/RBFqTZEhZWQcxtxsab45Trw5NSWp4hgshBvqUFk37MFwMVQdLqpRWjk7
	 G3GPSircxd7chSjocTw/yKzs4z7XpB/7EtvxN9AQk9KGR3o/u6l/awoJhZVHKXVA+E
	 WrF1hlTYzi4AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9751CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034847368.14506.9484946024320901448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aedb7036be0dcedbe38112c27b7cf44ea5a8a149654312a4a28617e4184fe97b
Date: Mon, 01 Jun 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780348473
