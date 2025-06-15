Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4744D2E11CF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749972594; cv=none; b=LmgvKNKilRic9Og2EmdzP/UyGWYtxTGj5BEZrVcI9S+8iedZfMkAAHOi8KTqKqyl5wtHdYWof4CJRoBl6RuwlycRwWsHLXOC0Gk/YzmNWLkaL3gYlo9EeoCM1T1eWiylgtGE/BRw0u62mJAceUg9sQL2wY7V6q/HRcV8j9UvaCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749972594; c=relaxed/simple;
	bh=J57whpYL8tLVCSJS1d+YLvRWEGyl+mHRiQdsH7RME6g=;
	h=To:Subject:From:Message-Id:Date; b=nXRoa1L4gMgcJPSV+7vmXwrsiyMaK0VJ7UvYlSEtF8ikwVL8pUE4lvLwb08zKfJzTH0IG5G8sR/Z957W2eMdSIOK6jVkNJjCNgliqqlKiPjAe8EiX8Kc5DFNTEIYBXZc7CceJVL4oxOWwujsV+kBPKrY+xlzAFoBqOaN3KKe7D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoVbwavd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoVbwavd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A859EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749972593;
	bh=J57whpYL8tLVCSJS1d+YLvRWEGyl+mHRiQdsH7RME6g=;
	h=To:Subject:From:Date:From;
	b=QoVbwavdXnxtb7uIs3jVWCLtlcKhrSbUPT+Mjb+h1FPFb8ImjP4XCv3+2vw4Mt0IG
	 XQLURCARWg8upkx4djp9CxzqrKMJJnykjbEleiJo2eP6wEd5TajiZR50kGJNoPy2sw
	 d+bB9lYgKwrTVD/fr3ncB0Sp+JRfVH3EErNV7KDMoeTLM6ikIAr5miUgAYcRLt+m5J
	 OrLsjAl1GmQNCoEdvQaAZwOvmawXSohegUEqMirM3c6MdEJeC/aeJy4YxkKyekiU0C
	 3wb505QWFXNyRQuY8HCKzg67Z2SF3nyBs1uvd5PhHnVoXZueF+PXJcLPvShWPcUFND
	 e2t5ppZPlh3mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C17C71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997259358.17717.7380146128216582505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 024a8dee7ef3af2831523b31bef7f189c413ec951debead54f1a650577a1959d
Date: Sun, 15 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749972593
