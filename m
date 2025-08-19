Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDE4202983
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755639594; cv=none; b=r2a3SIqViQhqomBiQh8a96Dsd7Z4wCf1HMOeUJBWwwbFu2sBYnvP+YlQWV/gI1DTiBPw7sEZk0UH35RdMgKFHC/GaAP5XBxO77P4nbK2E8eeYHEWF6Icw2dMwvV35dKOm+iksuFcAiVl6UGwWfZ9O/PdJWjhzc/2/24g5bY43eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755639594; c=relaxed/simple;
	bh=dS5L6Kn0uNFLcrIlZy3uaFLTvvGsavqlVuhGBZIS2Tw=;
	h=To:Subject:From:Message-Id:Date; b=ZfJkpQWRIN0mI/XEoZbSHRX+anmBSxVlVrdJORIjK9DG2D164Onr3r+9gxB1aYADQpz5pRLYfzBUchrnmppMOOR6bZCJb9wy3XLlbWbYRhXQx12qCb60i1U3anBLDufOej+2Ewd0Sb1f1G2Ysw/65bwIYT2tn2Lv0WHVj/XROUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUclPpSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUclPpSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D779C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755639593;
	bh=dS5L6Kn0uNFLcrIlZy3uaFLTvvGsavqlVuhGBZIS2Tw=;
	h=To:Subject:From:Date:From;
	b=kUclPpSccqgnnOyd2Fi7aqYY6wBKd6iMqP7mrzDPqqCf2Vt84422Jkx75NUF51Isv
	 J/Jt7hPyFoVL4PYhL99mGoOf1vaVqrKpggE3xI80P0auWIiuN4pLdLzW0OVH0Hw0MM
	 wHex+9TaE01Se/Vm3zJvQNl2IUYfGJgzjtxMrqrbVRhP0/Dcj3GWK01zGYYDTWSvlw
	 l6hao5hfKge8WJeUce/DnrbwkUr6tTG/cvlyDpPMfGDGNuofIh8K8nWXaU1fimxREr
	 1kpMMhnNQkYw2lf4S1b6+Usxtmpvbzy3Uzco89+g8aX6FOc0vGtKE5Z45O0jMS7EPk
	 QmiJJp4yISP0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F14FCA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563959357.9220.6258155151680395595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d064ee25f8a2761dae4c46cc20819816335990bee100e40fc80abf5de0adf500
Date: Tue, 19 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755639593
