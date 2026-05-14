Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22D133AC0F1
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778796034; cv=none; b=UTyTveOcMExB3n/+2u9s1VZRF6vH2cxLqBvVZONzIxGSwvolFGmlCCJ6CEB5taiIhLtOjBe6KGRVy6z2DD81UlvoiXp5iebOcSlIrX+IgdI3esTSZ95qhbAeG7RDorzUmnKNzTCs3iDQRSQlm/06IpGCFKCqb1KaazPRylLzXVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778796034; c=relaxed/simple;
	bh=M6eCj3+pFr2PZDgkIaRMFeaIZtfmcg/llFUziwPliEM=;
	h=To:Subject:From:Message-Id:Date; b=IbgG4p6SKkBOg8QaGlocGw1/Jo2Vkvzqff+9aqHrp179GDvtib3+w52PCsqc1U4baMNd6K2LgKFP+9FmScFLt4q8ccK3BuNrMwrhM0Z/PyAg0i5GE2hH7B7qCdjNx2tlRhcbu0AT+5TaM4bpEo13Zo1MSysfIcd0G9KcYVayKM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSKqQRIx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSKqQRIx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D39C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778796033;
	bh=M6eCj3+pFr2PZDgkIaRMFeaIZtfmcg/llFUziwPliEM=;
	h=To:Subject:From:Date:From;
	b=BSKqQRIxkv/CElJEqjOK49IWS2pm/hMj97AFkXPCk1QcRd7wzuH997c8b+p3r/D+V
	 ++P/rlZ19CwZ2D9UbV8r3aCHZdI7oPdfgXMWb4wKhjtFyNDraumiHrddnkCVVydRfo
	 yXJQBGV7BDaiyREXUZkltDieEdfjoGxkyR20jtuDoorYspoEY2n2AQfzRSpb9BS67D
	 Yg/7Wr7fOehIllCSqFGWjawqQyhpQkkA9pfF6PkF9odPCip+qakUXO04KE8fgX01Eh
	 OHMdv+/U81tzxrYENDttNOfyE0JDKlhCXoY5jKPMAISMWOlJPiZv0ctHmPYwTkTqyz
	 VzZfshNYqTx8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB82CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879603369.13063.23887927261358051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae180b633cd6a7ab19a751ded3f28d1c71c3338efdce7e119b2618dfa1c60655
Date: Thu, 14 May 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778796033
