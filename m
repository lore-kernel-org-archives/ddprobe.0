Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5868FF9D4
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713835823; cv=none; b=FGqQBipOKdhjqOx8RdmB7P4lZHbWt3K930OvTfqbKiGCeXzrW+ct1qd/TyrwDma7fFP6AESTAOB+d+j87PAS9huhJhTlPeb+wd1rYykoGVkRjNJU5WJfPokuYqSPIx94pCCZj/ecmh/h/vfogWtA3PbiqA0uXIT4Qe34gwUB3+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713835823; c=relaxed/simple;
	bh=TzJkzT7ETRQQqlfsTLCqLigo+3mj5G1m2psFZ9duMRg=;
	h=To:Subject:From:Message-Id:Date; b=MfPC9QjsuEyVdGSy2zYQG2Abtp1RgtBxolsXrEf3Dw17cIGGuIIzOew2S/j4pYXMS/QVlivB9Nfur6qQxrWONX50Y2pY+ZVAc/iF1XphdMdHi7aEUzfJ27aThdqq6Pibv4tAi9PzfnLSQoOF/OM2EyHBz0t2A98SJS8yfXpv8yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3HrCQdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3HrCQdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8622C113CC
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713835822;
	bh=TzJkzT7ETRQQqlfsTLCqLigo+3mj5G1m2psFZ9duMRg=;
	h=To:Subject:From:Date:From;
	b=E3HrCQdvgjFHd2jnxPwgIVL4YfoCanCbojFhOzG/4YiJdFV4WlgH1SNChgFKi4jg8
	 edvs1hcUm8fKNjEhU5NaO9FBx7dR6XdGFr2Pf7oSa0bI8esqzImhRbgZGLF5np+lmm
	 gPpkMPcD9sndBkwjdDMkIaEJiJ8k6G6dPTpwhIVxaoulz62jWlkdckmabG9ylXrEjo
	 T4UmXxvkmCT+LHhVL6zLuMVL/Cf44EcmpVE8iagvf/s+sRCRlDW/KlBQKxLz9Ih5Uy
	 XEkVm29ZDanXRgeOdUcwig14bhTWny6ojICZ+KFIZxelytN5Kq73GUrcYpV+hu5tUf
	 ooJv06p50wq5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1FC8C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 01:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171383582277.31501.5072775260311620202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bed01a733f77d4eef4262c8ff60046713f4039deccc40a240d9dccf8406db8c3
Date: Tue, 23 Apr 2024 01:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713835822
