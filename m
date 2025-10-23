Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5E41EF092
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761183594; cv=none; b=WC0kAFdqsJ3DtxajzmhaEXvuqe55yxVeGjoMafdM93IDPv4a72kCDhAOthRCruGMTzXhrxi7G2d0PpwE3Hp1U0fPRDYz4vQ6xc8OqNraawoNbyBZ1cwPDf3hYih9OMyFmA9nT4BX7Kr7vmaK+3AUFiFdLchxAnh/Ncvbjg8U8Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761183594; c=relaxed/simple;
	bh=K5K0j+1jDbaKRnDvo0wccClRsoRvax1dudgxQIA1o60=;
	h=To:Subject:From:Message-Id:Date; b=K1l7zVgdz7cij5FrEZ5zwF1hpEBkvE7qLW6a/2xD80mSJ4IbrlaFJX142KzlKxzjpNnyx5e8IOaC3MEFH94TOBvv2GNTbR1J3VEvlZwkXDLkPVz8cR9Zt+IErQWIbozSjFHXWIL673WO/8IoG6gbqUijacedsp8uDxLAqrRYH1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXd+y4hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXd+y4hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC81C4CEFF
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761183593;
	bh=K5K0j+1jDbaKRnDvo0wccClRsoRvax1dudgxQIA1o60=;
	h=To:Subject:From:Date:From;
	b=mXd+y4hhnm1fVCGYv3vDWyA/Y2FxpbvksyVp13AC/OzX2oy1x1D9wtcZHQpo/g1Hk
	 C1Da2tsok9br58JILt/IWD333K6oRddfaQaTEBjVECXTAVwN51loE86Wyx4gpB++v1
	 vCJzzmCa/hXrBwRyay0qjieQMife0qlMERTTNCtMSP5yQ9sHQUfAo8RNQoFcTUfUz+
	 dAJpANrptDLiG0pJkodpYHN0PtTmx9Ik/D7Cbq6zicjw7a3sUcucncjRZvSZrkMiP1
	 /krRuN1I42M5sIcY/905tHgeDxkJdsWie0mWY8pOlBTpqIuT1QmAkmho3jM8We0GYC
	 0xFtSPL/G7+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC0CCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118359358.32705.337065357709327263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e823687637e590e1d7868a3768ca6d32cb94c398b4ca4bb2e979827842de8ae8
Date: Thu, 23 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761183593
