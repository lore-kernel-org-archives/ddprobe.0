Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650BF10A09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720578983; cv=none; b=t5jVhg+DNJTpN5gEAh5ZBmnFITvWQf2Ap8mMRqmf5/K7LaXe2hjPWIHO38Vxii2Re8pggJALgW/UfqgZ+I40xeH3rV+CrrfmGNz/cMaEXDOpwN/GUNn8YA6yB6BTXo8StvczrL64IP2Pc3qP5R+E+QU+uPIuh/iMd1jodLspooI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720578983; c=relaxed/simple;
	bh=fLqEmV/ryTTa0umi40ZWi13e6NfVA1yx9Zp7yN2pArc=;
	h=To:Subject:From:Message-Id:Date; b=lKYrtY3WXts3QE0tCxbroBmtLDnknqNloQsEOAR5BqmRXLGsQine0W7l+MqT099hMV5Tv3cSyuFXKjH0VZa5k2tyymBhLHthNmoJV9zxMo7VC0l85atkdUg2rNl+ylrOIIg2Yog2lUjNMGMcmxn7d4YUCjCSSA4w6fW7kjWNa2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeUFANAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeUFANAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E694CC32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720578982;
	bh=fLqEmV/ryTTa0umi40ZWi13e6NfVA1yx9Zp7yN2pArc=;
	h=To:Subject:From:Date:From;
	b=IeUFANAwmun34Qa+bIxDLmuyIQEHweev3eRZ/X4SI/gTYt4x/RbRMt8gYZnYGTYFn
	 mV77Qj+HSOMPdcspYIFAWmWwF4lwIs/CpyaksIydM0b8a11htR8kqvJsRgLx9m8CRE
	 eYF5hUTZAqHmilaZWggs82ewotlcJebjv5qAmzG3BTiKisZ0UxHzckOkNwCzbn/51X
	 nYcJ0BKB8j7Q/WZ8mG1ypmsFVMz5aIgwkcWukxlVkHFq83GI0gyaBu2GmvbO/HkoQQ
	 XARx3pISS3LTeODbG/07x06xgI3evl3QWgKsjBMOQxytIcO4tqelt+j5UyINyLTZ+3
	 /B0hgBhWxmT5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9F3C2BD09
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 02:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172057898283.26837.6352877747467527513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07cd43980d5e415c8991fffcade82f453e63e5b1b793450d2e4938b9951d173
Date: Wed, 10 Jul 2024 02:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720578982
