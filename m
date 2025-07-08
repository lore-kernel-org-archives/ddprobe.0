Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1617314A60D
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752007194; cv=none; b=dTVvB24qPyYOlPD7IRnCH64jxwnTld+vIPX+/N9cm63+aIDJFlIqTI0+yQW5kaKO315WVAA8sEQryvUtxwUUZpyQ1s0rVH3BZdKld1BPrW9FEh006VVbCUptbQfAYeKKX4qwYQDQ2UajTR1GRYjTorlDh7Ldkdu2SJGmoLdsgyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752007194; c=relaxed/simple;
	bh=CFe8VeMPQt/twpFbLUw7GUb8859iCFVAXGlryNtPB1o=;
	h=To:Subject:From:Message-Id:Date; b=myEEJTN8SftXgg6Tlmdu/nLLqk7KP+R4c6MNCxJDMiWajy/Y7WKBdk008i6Z1AazubJQb8qgI/BNGNvDlTNSG+EvnOLm8FU7z/0WUES+pDI3QUKa6Lr8fDLTtFJ0ZFU7DtXAflTDdGeB/dbsy2vWKiJ4dfRvhByvFOU9RkCJl3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjUp5hUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjUp5hUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A0DC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752007193;
	bh=CFe8VeMPQt/twpFbLUw7GUb8859iCFVAXGlryNtPB1o=;
	h=To:Subject:From:Date:From;
	b=cjUp5hUIxbE4Cv4CrqdnNrkVI0wWK3zw7NNxuNv461Z9dyRfKhrZmC7WxSIlS/ZCC
	 l+IDflHRlGxNy3wtIslO7zn90C6qpQDKN8kSK5MecWGsC8FyEJr2AIdzRMm6Yg/Yex
	 Kxpu7hDZ2RiBv4PdemSCNPFMiCXcWQM/hZGODQLdMXyaJat13lylmRLFw9jAMbflPg
	 jEAX0MmZOu4OmZuAtG9iVDk1vpy+KPgk9gxG+eLc00Uwx67eWmdMhj9tzBmiR3/Q95
	 D1CyI3KQ7q1UDBZvq4fQ03cZpaIqMS/FfoGq+91Mxdu3tYVVih0OussDxOBs+1cync
	 9qxEdE3qDDacg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF71C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200719358.26021.9149875486117164254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0aef6e3ba5b728b3951d2463ce3ecb9508bb7b88e5e62c8d9de9081672400c
Date: Tue, 08 Jul 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752007193
