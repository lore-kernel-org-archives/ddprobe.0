Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECCA37F8C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767860034; cv=none; b=Us4IJX2EwV4NlUo1ACMVN/Xx89UJWk/YwdD/dO69FUAZ2SG4H+iLXOqwM/20pPADaKNA8h4buV9q5622LkusuDCy2LqNm0kTKxTF4kUXYWY34I48UQgHTxD0Fwwt7D3MAInTEcQQ4IwpzCfVYXJpAe8tnd9RnpQ65U4ef6AC2pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767860034; c=relaxed/simple;
	bh=Jbhs+QsYHnrMgaj76SffgUPKQW4+SPVjJ317Ve7vbwc=;
	h=To:Subject:From:Message-Id:Date; b=FfBtHSOGoxub/iAXNGKIRGic2tBPiZM+Dqfq3/LI04g1xRKBtvFStV5aANqnLgGy7jxxOxLAjoYhN6JVGYQVfumrWMRr1hHju2i6QJnWiQa7fTHbatz3zEymYAKo21xAboTMJ7ngWBkcoVll1QhhHaoTHTOZmoGdEtcM0PQNz6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6eE5a73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6eE5a73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E198C116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767860033;
	bh=Jbhs+QsYHnrMgaj76SffgUPKQW4+SPVjJ317Ve7vbwc=;
	h=To:Subject:From:Date:From;
	b=n6eE5a73WaADHT8YB4FbvCxJG/401p68TP810qfXuYxVu6ss1+bqgPaXl4owmwGYl
	 oYZvUL5yh7bMInZpgJYTig6Y03bz6/G/wHAI1eXmkrqIy9ilv+u9bKJ9h6WMTFqror
	 LALyYo0Ja1wEQfiXbcGgf5S1yZYslDsGCELuLatCvHrxWQFvgzYAYlxh0llAZd2rSp
	 HJjKgT/N5AvcgHtR4UFPgmEaLProR6J83+InTEhOs6FIN+EsvmUYCVRyhECXwxzb1o
	 ylsCAMLslQRsfZVv62ElG9PL13bZiwJX+yi54rMQKUXQiY9a5d2RhosqiW+SlwXDrV
	 1cuaqLlstwGIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F320CF6BE5
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176786003357.18263.16626873547887393432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8056ce2e273355a5c0115987df41d37ffdaeeaca2fc3520bb35c07dca4e0e1bd
Date: Thu, 08 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767860033
