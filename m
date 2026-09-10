Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B46A2E7395
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789031434; cv=none; b=Qs+Jzenold9iQEqqoYmpPZGRTFhYE28kNMJgvtAcJWmpOekdWYlVzMXoBMFy4rxgalAOxUjWRV7xOM729+g7+KHVmHnd5Wozi6PqjMAcANR+0q+qgOOCldCSxGRIfBwyKBcs32WC82pXpAgbjYG2OeLzAfah5Px+nW1UrojOIU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789031434; c=relaxed/simple;
	bh=ZIrD13FNKcTgcRcgYpSoQ8wQX6ic1c18kbC8oiypzhU=;
	h=To:Subject:From:Message-Id:Date; b=GGIC4viuhKiLu9XfemVYJ+525NGbU7XgUWQIyeNQmQ2oeA6mrxMYC1EGQ7AoIRZDWfKiCG1iNGV29fDSQfLtrAMBqr3xtGQynlX2Mamye1781iR8Y8Vf5W3TIU7v/QwdKAJvn3HFAOpI3WdMnCAI7GPl5K8zq7S7UE2dKveSacs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbn5PRwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbn5PRwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB2DC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789031433;
	bh=ZIrD13FNKcTgcRcgYpSoQ8wQX6ic1c18kbC8oiypzhU=;
	h=To:Subject:From:Date:From;
	b=kbn5PRwtCpx4kTXJZyw6U4JIYUiVZkIPreCyLFS/x+PtLxiyREYgiBSzRvZ+4pexk
	 STadQGvenq0rdWbh9sP8+u5EdLeqltHMM5Z12ez8huM48JP4nBPWCGxaJPE9BL+v8+
	 yRUOtOHGaO1eIndeT7Rn7vgwkjMQnGRRxRNGsX/e2yOOLIdjRU5iSW5Lk8NvwEXHRR
	 7k1xxFUfpovlFTJqnWE37g/cVmmEXAH77e6kJf82gO0oznyiY++LKerpyqYwJz8WUi
	 U/sMubv9PnTysChW3OgPBJ4lR4lWKAaP1AjX3Mc1aeI9Asni42bIJ5ljSdtVaVBMli
	 aO6a07/8s0qfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3282C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178903143372.27314.5634943313338125686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f892900b289d65ff9f0e0f873435b5c2743c115f28d7f3807b2b7776cb68af
Date: Thu, 10 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789031433
