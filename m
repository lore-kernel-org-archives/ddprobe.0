Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7033B12F585
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785232834; cv=none; b=uS6Jurq/UFtxlhDxx6DDVxLjTHZrnOH67TIZolEZtWtwYoBJOGiaSImZgPuOv26cqKgeyjuXj2zo4ro9hCwBNFJvEx4IjaSDC7IKOHYk6Sk7D+y9bs0d1AdHrDmHoN/60J9iLnqe2YhUwJxyFxQy5H9p1k7reovR8J3bCEEBLTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785232834; c=relaxed/simple;
	bh=2UanuIt2w2PIaZircE+pyfR4LtlgWJQewypYx7xgmMg=;
	h=To:Subject:From:Message-Id:Date; b=oCqAnaRicijH7FXtkaVinZ51kPeei7K1+NLhrk1oQkcvbycpjS8NEGt0ZFKpBWyAjVioIgQC0D0tjP0lJLGoNUObd53DIHSUuhg7sX503uIo4AtvQ4mYFkOPgVO03I5hMHxqQJn5rUSnSLgc56KGiavrpNQ1Hklox0j4K41v+DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHpwPVNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHpwPVNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FC0C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785232833;
	bh=2UanuIt2w2PIaZircE+pyfR4LtlgWJQewypYx7xgmMg=;
	h=To:Subject:From:Date:From;
	b=EHpwPVNlmGoqzq45UwYoB8HyEPIStGLWJv2MlBZXZrrTBX5/92zA9yYZOeigouIZq
	 vkENijMJW6I/5LICynaGO69Bzl3S1MCvzHEG7EtRJBmJsi/utQWUpbLtVaCdq3eNJB
	 gI37CZIUZbfdOCOlmvbo38hdwDKXk9+7yy423Nax/A6J8DHnXQSKqlOHdzAcb3m2vg
	 XLloEHy6vNdn9fYI7+Q87EbRkvJzKQbehdDPg4QLjKD7GKBXrQMRxEEB7MUbrFIIRV
	 lMkC7Sk9smf6khexyTa8auJyjid0/fYcTa0S2ss7G2vVTSx1snFu0JJimA6C2t1wui
	 eVb1i7yyYeong==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AC4C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523283373.13341.14386252021110426000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725c1d688cebca06f718e6c01fe4e4c72e560f598703b90b14becf4ba4ae7d70
Date: Tue, 28 Jul 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785232833
