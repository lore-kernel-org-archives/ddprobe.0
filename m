Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489BB4D2ECF
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788858634; cv=none; b=icjSRTWV7eMAV8/YEDSiL56iuOEV1STILqFUGX8QYzOUixckhN7HQbXj7Z0irldDdpaiUjDFsy5ol765J/WfMmZQ4PAOBF49eL4OjnrkF1SWPqTocwhqvymaWHAb94UkPHZxIEOOiidpAQV4N4ltlrxNZF0mFMXJ7cmU0iN5DiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788858634; c=relaxed/simple;
	bh=veXsM0bPh6xoEX4vSjhPLyefIn823Ib6KGMiZnJ6fbU=;
	h=To:Subject:From:Message-Id:Date; b=L6GI+cKPemYonAUuZ7TgIBsz9LLsWGZSB+769eOd5JlDTauc203YEEwBiCdup3jdl7QrdbISJa8yJ1fXxVEmfMpHRiLfHL+mtQKD+hhlwIZouiOt4/uGHZ+AnY5VBz3ughfeL78C7hkN9cbXc/v+CQxf8lRLFQTrFVDtJIdGTt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Li9q0lNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Li9q0lNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE85C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788858633;
	bh=veXsM0bPh6xoEX4vSjhPLyefIn823Ib6KGMiZnJ6fbU=;
	h=To:Subject:From:Date:From;
	b=Li9q0lNOPBjLHf0WuA65G4fu7T5neDVG+hYs0+lTrCdKb5Vl5g3Pl3mzNQKu5QHCC
	 TbvNFk0A1cybuNXG+ly4CeNqH6XJGGIpwbQ5YzIChSQYaei0A72hSbMOV21o4d68Cc
	 SAK6tQids6GzDYDjMYXdA5S13vy8krjYLdRCoBUO6rNYcRF5M1W6F4lOVslHaef/7J
	 ia6KyZiSNVMJl3biHJbs+6WzKHt3BghNLkz2UOH91F+oJi40Lr5A5Uilvk265s+b8k
	 om7y46GJnq7LRRTtsMXePuPCDruoSbgQJsuW0pLW97O8mKQT5MLvAwXzn3YBpUEypH
	 DD99QzhAL9k/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80ACC79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885863373.7525.17367234502387456450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19ee50cb2db8317d27ff963b079a649031dde207ba7f3edd31fec93a0785debf
Date: Tue, 08 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788858633
