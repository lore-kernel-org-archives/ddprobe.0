Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3768D33F5AF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782149194; cv=none; b=Z5/3fK/AN8jSZGxnW46B6/GnUfLWlFlvVQTN+ano2zr1O/ErC9sAtfqSfvWQQdNFNL2a9rsohgWLhlVazW1pt0xIIO3c0NG6gqxOB3Hj/2KmeAVF9xLIT3xrVJ8DHDYMD/JHKXFbe8tFnBo6BHj2To0NB5M45zlgsSIR6XXgdz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782149194; c=relaxed/simple;
	bh=rPypQWAZSkPBOTEdIHHgFKLEPE9ZY3Q0l2rI3Ez2G0I=;
	h=To:Subject:From:Message-Id:Date; b=jdKl0fdYbGsAdfS3eWEymuIOtKm5ZFyPhXkqhLsWyOS6RQEjAmMSWTrYVDTYOsxhOrj1P152ybt/lKp3ASk9H7YN5yaENi4hfQwGJzu9A93dKzr6TZKWNGiB7GvoLk2dKuFG8fXTcOh1YWWZRfjxceTll3J6BDysFVuJJ0WouiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnWJ7xu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnWJ7xu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88C6C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782149193;
	bh=rPypQWAZSkPBOTEdIHHgFKLEPE9ZY3Q0l2rI3Ez2G0I=;
	h=To:Subject:From:Date:From;
	b=dnWJ7xu1l5Wbjz0xH6UPqChi5y9k3mG2Xp9eHaIusz577RcsJgMfRkUURV+WLV/Zy
	 6sYBlsxqfoN0Ns40geglU1tRiGCl/KUNFKfMSzuZwOrFt3DaXh1PDL37cVwXotM4dt
	 K8D41KrdCnZNK8jeFLhFk91S+aKeq7pBwsjxnzceJ1Ltl+jo5W7TAXL2RDKZxbrLF0
	 zXd/TzyWKXr/5JSocJTaZQCeds+8QF1sRB+IbcHpbqgMWcWCQVCeBnZfLZrpyNleUI
	 5Nfxi9AVDce43aN3ktbqTImoiWS1WeP4188dL6H3h1RtQZW8vhWe/Wn0jY66uJlZN7
	 clPapH3HuNHTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11C6CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214919369.28139.771229902217761739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebad5ae63695d448fe810f6267d514046c0d87f0cd8684f99e80dffca19cd4de
Date: Mon, 22 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782149193
