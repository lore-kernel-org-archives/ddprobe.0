Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D5DE28504D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782883714; cv=none; b=gXuqPwdWRmhK8oT8UQLABezyBjGWboACHr+BHPlICKeUzlIYofGJsSeRPhxUMlMbYFg32AKPaQ6oP0sUn+F5c7F4dOhDDQ3sil4+9kGpXsIZ/Vi/zzXmvDJi9kIVw9WYfA67V36BJTaPr+E2R+lE5Gld3xQTNycM2wC8E64XDKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782883714; c=relaxed/simple;
	bh=CRcAqnZSDgvHCWZZlRwu4EwDfCaqUQvsBXnHEcpPhLk=;
	h=To:Subject:From:Message-Id:Date; b=A6eOreFjgb5bxS1YLV9WK6DPOCkgJVRx3WmtxiAB5gFLns2KNY7HXlUEqvFDFjD/AOFzL79WAvormcx2U5rH7ycWkw+wGHp3xI9uhF99iZVsQRUxjPHOnwZzD4MzooqwN3LXMBBGsHsFgssahxfSffwvV/D6LsIl715ogVUjUoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uD8dWsiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uD8dWsiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3B9C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782883713;
	bh=CRcAqnZSDgvHCWZZlRwu4EwDfCaqUQvsBXnHEcpPhLk=;
	h=To:Subject:From:Date:From;
	b=uD8dWsiD9whbPWSm7C0WLwInfuu6h+SiJ5iwElqQpRbB8zaGPhAuhhwha21g12Rps
	 aaanE6hPvoxoNr23Cxtz12WGFLfrsC6QMPZKbkWQlw9fPzguRYL0+6huh2bbClFPtW
	 8YJvYJo6AgAuMBHxlxehOY9L4AooGWSXYBhG3aAwWFFKgNVBpnISsiwEyEF25k0aNe
	 meEpaUGhDqWTALIrwrBHM11pdAta7GsEab0gLnyDlA8Zsz6MHwvGj4t/XfT9SByt4b
	 oiEJKYbrE6pl7LNGC/qupp4ZUSMsJ3GfCMiomUKqRgWMnVL07YCSQjt8yUw667P2sF
	 +Ga7y+auIkLMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45A1C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288371369.13773.11091112643617087530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b9af7b8636a74b3dfe634a145add42adee4e6f55178ad25623cefe06df30d5
Date: Wed, 01 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782883713
