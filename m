Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBE3334C34
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765870974; cv=none; b=V5bQGPTfJ7Ky1hNS5mBSOoSMY01bDtQo//Eh0ijxxgErE5/9ezu/phiHMfVm3Y2IrRJedY2n9LQsOTMelcSIcrHeb1TzQcA/npd1H1+Ua/z12w894rL40CXOMlyviiF8dhkkYEKYqev9Eki8B6b1vnWR8rnu4zXnyKcIBbpNq8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765870974; c=relaxed/simple;
	bh=T1ih3TymoJAhR2BbJ2p2vVnVYazKJ7uaH+xyi/kJTIA=;
	h=To:Subject:From:Message-Id:Date; b=ncOpw088pCTd6rq+0xBfc1dfRQBkXRlrFyyT5l+FYRPxNTiTFssvDOlIDaovIH9AHo23PwM9GqJZ8B22Hq4hvnYK7QlVgXfLMR6Xvq2FpeP62thmERJV9gsMi3c/I2LEFqIhvLXEZFWR73imxqe2CAoqJCTQq2i/ih9BwAH2gfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+jClZnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+jClZnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3439C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765870973;
	bh=T1ih3TymoJAhR2BbJ2p2vVnVYazKJ7uaH+xyi/kJTIA=;
	h=To:Subject:From:Date:From;
	b=K+jClZndZBME8r5XGr4wZyYI1YscePiCFB56n2fBp2+N5RYhenwczaL+NN1DC8ANr
	 /NOP3xtyG33SpUsMHvlN3HK44atRbd6uvZe0ZEIEK24dVy1lXDmQsPterEgn5Sv6zg
	 bKVcM0PEwL6D8mbfoTYm0XswPRK3ohr/SX+g0eLRK50nwpSZkNqqXIggQtKKl+XJzI
	 g5nnbSUs/5OgwAq6pIhvsBhyWpU9fz13F97GVIJISN7BiqeO1u8uiQlFWTjuxmwNtl
	 +gKcIdW8lunxEqrzXcdIcVrjbohMKyx4SeoFJ1U5wub5Wx0l3NrnfxJYT19ZldJHEe
	 1UbYbi+ILMFcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9148FD5B87C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176587097358.16257.1877445521120155712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d0d1273e1b2ccd607ad63fa0eac7e56970d5969e8ef202c67bc6421ef74278f
Date: Tue, 16 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765870973
