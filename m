Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FA234D3BA
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762076394; cv=none; b=bmuFwsWcvYp8cg6TSAqBOtWzzaCPzxqed2v0EZqom9S5a+gI1VqwZEJmELa+lzEpkd1njJ1hRaAbScIzvNRI+KINWbpGnoICR3FuidYVyVHIzAt0q354bQ881u8IDSU/8oHxqM6lGRZqQ6rGK1zdz+qskxeC7hMwx277tvYKaxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762076394; c=relaxed/simple;
	bh=kgT2V0UM+6tvj8rVUrfYF1/GNjI/1mbiXGTBWrYwQFw=;
	h=To:Subject:From:Message-Id:Date; b=UNIPaXrE3iMvZYo82rSa6mNPkaAe313lEmFBfiNrO9udhhPRSwC8WQf38LZmKumUDL0tCymPHrp2RFzVBcIcc1U9wVww5RfUmRRhMNnYjDzLe71s3s7dFDejlv0/is5/G05cZMKLZ7PB+X5wqeM9Ykg71m7xdH7zjdaLlroVMN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VN2DH1L2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VN2DH1L2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAFD2C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762076393;
	bh=kgT2V0UM+6tvj8rVUrfYF1/GNjI/1mbiXGTBWrYwQFw=;
	h=To:Subject:From:Date:From;
	b=VN2DH1L21ctwd5/iV1XourKb+yqDXfNgLUqQCcDHY+Otm+7LzrCfaFF1HX+d3LOMc
	 fbs0XySk3PbloX67tROkbiIlDwGSMX5yoXetjb0FwFZVWI5aa6399nlcDqoCwSkvz9
	 bRlWOsj+TIqDX9IeDYUeSjIBwLWRJCjZPqZ51PvBLtT0Zn2q1OZH3EyHSw7nERpzlG
	 8IbEPHTvFQskj/IEqsxQMbUYaH/pWK6ifl2FTtz9o34Ga9AJ3anEmQZNhAumlWw3Wm
	 eHXQhYNG4+PGsNVNa3NduEeA7WvrWsPM3oi77HM5MKokghYaBnRXV3Gp3VQDukg4fp
	 2++ebns1dfegA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5629CCF9E3
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207639363.19941.16283892666040912315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdd94d516acc37c997eaf06384ab9f9866eebadbdec8a8a8c7a7d6e69e12252
Date: Sun, 02 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762076393
