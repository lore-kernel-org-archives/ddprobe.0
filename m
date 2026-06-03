Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691DE3F5BFA
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780471474; cv=none; b=UgAI8ROBXtFVpY5t3RnvamE/Zgp3GW7ns8WT/YtAiKtbPkoaaxg9u7IeSSVeFRYT1o8HwVaqh/yU7xD8EzH38mmNB+aMH/MjPxGkKEzUsb6WKpH90FhGxuzY9GJGnV57sfgLEdviZxzZdYWDBla0P8QdxtSbWKu/4kePLc07u18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780471474; c=relaxed/simple;
	bh=KZquWhZd/qYSmuZ98PZksEfJv5XJ19lUVURDyFaWeUE=;
	h=To:Subject:From:Message-Id:Date; b=RlSa5IgBvYvJPxaezN1WuBVrtUtUAeY88SmbJslkZpLnj4Q9xlsHfFz6PuCUAFcbA5SqmMMAr3siD81lhqPkSwszv9ss2AHYp886smdGi3r5aSxTEo/tO9/mFoFe9KcApy8oABTFUqObcntyv7dcxslNxTQpvqoRiEOhBNkt6MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnBvaSBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnBvaSBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C308AC2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780471473;
	bh=KZquWhZd/qYSmuZ98PZksEfJv5XJ19lUVURDyFaWeUE=;
	h=To:Subject:From:Date:From;
	b=tnBvaSBZqHcbIQm7G6sVESB9GkksKQiRxhQbKZX+c//Ax47iy054ENjkkTuXTLqHu
	 +RT0IsGsERGKwOhjKqe2bsiKH4sohMvcMhNN4Aw8pCBycsfsxdTomDorNBS/+p3BXG
	 ePIRMdTU0DQONEnNUs7GP/JdDzT7Bxm4EIaxvFJOfkkD4MDZpvG4kmjIZLHTD4tz9/
	 3bri1uJ4OQvHFQBb03wCj016vs7F5s+MeFFBXcgYz0Hmc+eTkxlVe678CebwpebS0j
	 QSJ4lGcxEWvIWcEbV8RKXDCGwVL0sflHGibMtX20CK0ZKUMLJ+MGr+sdSXCFCE1bTd
	 erboPtxLT7XTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F2BCD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047147368.23866.12621001227182385125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79889a442a6709880585c3845c867649c9ece4792296c9195059117cb9fee347
Date: Wed, 03 Jun 2026 07:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780471473
