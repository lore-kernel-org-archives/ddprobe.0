Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A8F2BF3F3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778745634; cv=none; b=hvwsoKtiU6oGqWEtHaGgYDJS9FzIFG6SpeJFT6PgIILQvr7xChFux0UxIWV4pkT+vFwtrtcDJ1rEh2Z/+vCfx4h1ICkmrKTGV1zLw5r3ukifuZPJURI7GzYh4iN0fHYnVAtQSRrKiDOhLX3nhGYNyIcG+eesjYSEDphIEF5+hVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778745634; c=relaxed/simple;
	bh=Hfjwyuw62g0lLecHJL2P1VioGkwrPNpDJkoskUqM1Is=;
	h=To:Subject:From:Message-Id:Date; b=Iql7kfedoA6tarY2nAqiZxXKWPWntIYzGjAVWKkSXECTLv10dCh6x2q1dkKm5dm/kLGSeA1IheR2GsqeSm0wW8NoHVBJkrOpRmyhcdMlT70P0fo3dRt0BCFOfxUDwfX/6G4vA7EEEfgqC1MyZCIm9HW/1lO4pqf5FaIAGgsHujI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZatzZpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZatzZpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC59FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778745633;
	bh=Hfjwyuw62g0lLecHJL2P1VioGkwrPNpDJkoskUqM1Is=;
	h=To:Subject:From:Date:From;
	b=RZatzZpMeQfznYft/afGOLu64JCtAOAo8+zV12PXBxcJaOC67VyHZz2y9F9T/nC+k
	 ntjgd/9ZXiPz7aClAD39GmYO/N4f6l82LahnA1yNxh0iSm1h2ZE/T1EkoGY5DCqwCq
	 fTg0EO+fqhwffLQng0/QPtgRSyKkrCxqBkx+9fXi+lT/vvGid42ZE/mQE8SD6zNbA0
	 ovo3Go5FUb46s5miG54umTmZlhsL6eMarDSvWv+WpVp853n+OtnhZyxeupu2hg/Ick
	 J/ICTsvS4ou5Ol5nqLzwzoNhl/RhpCPuIvEMw1fUnM1ysSMEW/0Hl492eH3ZQ0vCVi
	 O/kOp4O1UIJMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8B0CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177874563369.6606.5601503255815910172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26f1b480e5904a0053fff2525dce55a12abdf49d3f98b1de18666eb402dd8092
Date: Thu, 14 May 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778745633
