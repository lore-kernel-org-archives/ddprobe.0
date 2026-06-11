Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39171E555
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781140594; cv=none; b=VrCfMLCV1v3xgRaVERSewDkNCca75ksLJ1uss7o/ZrM5lEhR7gYryZOuOAuM5wIB5krK0SUZ+ijgQv4AwJ99HEskCdortaALbv/Ck7stYUhyIESeWHVEEi8fJdTrvSG4Sr3If7UBMXWlo1/apvNNAmpyfN1KwcS5mQ3UMXeFqZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781140594; c=relaxed/simple;
	bh=QqZfKbbbvnmYbNYnfb8sogRKgmLkpmW8QcLu1R9M3LU=;
	h=To:Subject:From:Message-Id:Date; b=jgir2z8YHA+yopkGmWkuqTOf3m6EdncsrkV8SKQKKeTLRvKWeqFg2QjMBMAzxDP5H5hxgFg2CYeVDkCAwH2HmLZMb+6qEo6Q563toq1KUJ/jNzto/D7yjWMPxckg5RQR4hD8fUPM/BKmVaGqM8DM/FTCPKQQ1GEVTGu4CTSPUsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFUMEett; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFUMEett"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F02C19425
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781140593;
	bh=QqZfKbbbvnmYbNYnfb8sogRKgmLkpmW8QcLu1R9M3LU=;
	h=To:Subject:From:Date:From;
	b=SFUMEettv66i/m+OdftTIYXhaN1vOafwOYSGK/xZoggEsYidxudjfYUS3cfxz4fdV
	 YwbWlYuY9UyElcdxAR+DvQ1e5Vm0R1jXr7oEEovfTYR8EmsBQ18mvVHkJZc8PD/fev
	 ZHs2o0M7ozvnnSB69bf6MKH7tUJ5CiXwfWP1qAgnp9ZAUWPRbAoRYecJmVhJYP34dv
	 tV/qSxmAAahlYmv5MTyVEQmvcl/kmOy3FaEQY5aUf7Mm8abmgUG+oQQ5Gl+k4+HZj5
	 QsFu9/BB/aTaEcNBYN0q+OdpMpoNtpueX5TdRHOP0XSDyaOYezH8SROy9K1qAvC8cG
	 KMxPlk3SUEnnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA752CD98C5
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 01:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178114059369.27835.4998009263832651069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91f16bd286ba268413fbca646ff4db1ab678bd9322ed09438e6c614314761ef6
Date: Thu, 11 Jun 2026 01:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781140593
