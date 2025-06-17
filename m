Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0B4188A3A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750136994; cv=none; b=CpnkmQkMwRHDxFyajEIY/x74Etz3OuBgd15B+tVh/mNvrVhdtpF1Bb/w1QMR33BoAzaWJs4FdWaVqaOc/Li7G5rIjuB3uvr3SGwdnRARNmDZ1jtJkRC6xl49awF5Eznh7mAge6RQcl8kn5uO55iRrFqo/LvC0ChMMCcKasnD7aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750136994; c=relaxed/simple;
	bh=oU1u4xvLqUG43gmqHokvHpVsKdpuZbVFQuzbJ2JtF1s=;
	h=To:Subject:From:Message-Id:Date; b=hvPfVB0ck/zLP2EQg0Hqnu2OSTGyYsm48zH4PJeICTFZHRD6rtycy+90AoSMii706VY0QhLmkf/pD5L5bj5nd6FOVqDE53E7w4wJJOPZzaWK6qAaA0hkwes+vKwDZGVRN8ID1PtXBmjKXBHS/r6YlwfrUTgfqBpY4AXrzkyy064=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rH1TOxYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rH1TOxYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750136993;
	bh=oU1u4xvLqUG43gmqHokvHpVsKdpuZbVFQuzbJ2JtF1s=;
	h=To:Subject:From:Date:From;
	b=rH1TOxYJrUIDGkxkeIT6VHz1k2fOxtFsRse3zhkaNNHhFFO8Wt0YdjYL01I10wYvj
	 fvOOqRO6HRBfTqwBpOh/dICJxWO3Zk8D3kTAGnciDha7vx+PGSqFPAyQdUMkyoJ353
	 od+kShEsXdNHciQ77j/plxhCCVgS/DiS+QRIYBZEuumlN2Fnq+28u/+Gko1rxBmjHb
	 a7wPHaLZ05sNH+jUuxw3Uspog660qUwFsezbCc1gGHZvl74H+sC2+jtxgnKcrmcjpT
	 SOVPPxU0Va6IEyKZ9bBSnzDB/Zm4DIcQTfbm7iLhdW2AjnJEQf+zbjUUa95f5EW8B3
	 QAMUqq618+wWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91018C7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013699358.10448.8864977979202892970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96d6bfbb65273e01dbbc475da5f2a99f5d1fb0bbf2402c5a7d1523cff896408
Date: Tue, 17 Jun 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750136993
