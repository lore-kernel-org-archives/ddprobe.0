Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A8C343D8A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777361854; cv=none; b=lmR+MSR+SAX2G9xjap52pgyHgcjN9epaI7oSez5YwKVbmzPSPdi9K5kwZneGPDlglxU+K6jtQwTVKm37kbHDi8QGXLSUXRfhtJ7GlH+KTbbb/LWsDiyjrDv+VtGjNyMoeTSd0GTfq85jGWuI8HKvGNcSyXQbzhCy6w4ZRB8i0qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777361854; c=relaxed/simple;
	bh=JMV82VfP5OdrG8UHH9gtt29EP6ixtf1MjjE7nzLUvN8=;
	h=To:Subject:From:Message-Id:Date; b=KgP9vTIzhuJZcSfFG0qKqbNL2e7DIG3uHadnW4h9TUX5pTGZXgBCp1PLmGHek3sHYlYbpZ4Bl1joRu6DVv5KXrhxQNX1+KRxb+Ejx9WLYqr2pAJIfi/w07qe0fWo+NpJNqXkkMKq7Wz16h0KAoQiMuMsosKLhhQu9eqSA4Sswrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H7xQCNrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H7xQCNrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0BAEC2BCB6
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777361853;
	bh=JMV82VfP5OdrG8UHH9gtt29EP6ixtf1MjjE7nzLUvN8=;
	h=To:Subject:From:Date:From;
	b=H7xQCNrAECCgNyh3UuQJ5V4ZBoM1GO2UH79TT9FhKyCnqzemL2eTji7jK051bYpOI
	 w65nxrLBpMgv3tDfSX/iFWBsLN3xlp4eDHzk2KT0NbRuGgmQXYa95vGmwQyc20/9/p
	 lB70z3RR4Qz6gcwM+JKS66Es6g8nLBzqU8KRWj2WYX35yWfMJ/KwAs9qoRJCW4WP8J
	 kJEkuhI9up0/jr657wILRS1doad1xETdaEYoXVKM46pIJt4usrN7gX8PUbc8B5H1Ys
	 snfZLbutC38k7SAubd+6NNuZhs/OwpgUFdIdD6cRB0Cn/M9rv1WSRf/epqtVk5VQRy
	 qX3tQLLPylBpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA121FF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 07:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736185368.11558.16891811789807784950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d5edf38b8837aa23842d238fa0af92fc034cda8b09efd36738fcf89e8c05ef2
Date: Tue, 28 Apr 2026 07:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777361853
