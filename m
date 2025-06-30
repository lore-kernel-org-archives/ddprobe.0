Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E421DA55
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751258394; cv=none; b=RhhQn8vwSzuIJICUk8Qcat7yPwhy7I/hW1d9EJO8yOEhDHXWf1dUhOhSRfyeI7EMo0xJ3qLpgTdO0NZ23A0GV9YgA0PI7MTUL6+Bsv0TX+EXNYc96VuougLB2KgwN1m1wlv/sTtxtNaCGzs9EBrlv0jJ24mip/TGATX9ZF+iblA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751258394; c=relaxed/simple;
	bh=caSfeemKCl1oyGUPzO8pm0uo0v0PwcWn7oeg0rC43cA=;
	h=To:Subject:From:Message-Id:Date; b=T/af4QODvVtMkPLAQ5XZ+9S/VmIIgE5xunFTvzc2Qw4lV1IaPM2+ROUZtXMBWs6VWIeXtORSMRtzQVucPafVRvDbLbL+1hiOIcyKKu9B+DmjujRFpGNG9gQI1X8+g2xaBAiGzluOiRs6sDi364Evn4hu51eZoXdFCmBUT14u9MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qi/8SYOR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qi/8SYOR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27F4C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751258393;
	bh=caSfeemKCl1oyGUPzO8pm0uo0v0PwcWn7oeg0rC43cA=;
	h=To:Subject:From:Date:From;
	b=qi/8SYORaB1HG7zg7Wq6q13wDBMtdLZbK1hB/4llI8XNYxERSbEisvyOuw3bdwW0a
	 of/LigqTne9Bl01CHxPMymVa+rzLAtidNoP4H0OUjgu0Y35j9xfruhJThsF0zQCpXq
	 zb8OXhzwLGvRxfQ2kqJNfNE2odmLPAPaj1eoHmkhDxI2gk/ziKCGX49Mt+6hAIkuIE
	 WEK/QICyug77ETb4Oz6RntJ4V0/EyZPJmIyhkeWEFm9aCCRySwSdR7sgey0XoKj7cw
	 akrqDtjkp97dFWzpx6bv0wPfYx29WD/5bgfczg/HfXJO0zP7B1k1TeETMjDnG7FowD
	 7jK+63ma3a2pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F3C83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175125839357.29915.3941790044758112752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75e3b20584d78283e01161c8b857ee40b381bcd179e8f5070624f2facd319d1
Date: Mon, 30 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751258393
