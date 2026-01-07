Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BEB341AB1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767807834; cv=none; b=YjcovxqBb5kRqvNs5uRFCC/vtnP7HuE387aVVDpshmh+Z4xUIctciLUNZG2apIdfRkghhl2vLibu2KzLEpS2utPQR0m0b4s5dWpSgwm8A5ZKO9gteBDEMFcraX1idqYdcix7xsIg67Vd2XVoSfbcMD3RbiPTAY9xo/TF7xAsoMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767807834; c=relaxed/simple;
	bh=fZ8s2ftKlD4Fp9m693fOUPfdN9XhP+6OJtKivnmZDTk=;
	h=To:Subject:From:Message-Id:Date; b=sYirY3Yqm4o30meCU34VGonaLuMJqyflckv7ONEJek5VSArKpqf8duqfSdhfgvx90TmEY88wl0xW/4eKoj6SF2e4GMzejyrR7XHohn0ZWbRvorDgDNesja/n7b0DUZhMZb4MXTEWY85hxJ3DNkrEYcLE6TGnHPqO2h0qQ8HE/eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwJo6iGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwJo6iGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2275C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767807833;
	bh=fZ8s2ftKlD4Fp9m693fOUPfdN9XhP+6OJtKivnmZDTk=;
	h=To:Subject:From:Date:From;
	b=mwJo6iGww0/h7xt/5egWpERLv7r+IXPGQT6Xe5Kb0VBpSFKs1AzekE7pHy1CA5K/j
	 09+GhpOq+BPqkFcMA9gDiktqSz8U+We6Kz8Vo5zf3l0McDhDLGbhiTpDajdbzfF4/i
	 qnjY6sFrAwK1WDDH/r0U6r43xwD8E+5qBSe2Zh1ROHbgI/8ZgNC8CU0ibSEIEozA/A
	 FUaWU/4k75DY/9/Cqx9C5iINYbjU+X2BsbnqPipvQH3rN/g30MmgjEjq6w/Qn9qlGQ
	 UvKKjoTTZSi57ra+Dqhwt318zUVV+LYRv1X5/BVqkkbHC7nQ8aqNntgM/alGusH5EQ
	 2oP5bepT2IWvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91165D0D14B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780783358.1679.18339613711174914632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 081963ba34dd5b6b05e951d6a62c34f5c8ed345ef5683342a5f44e061bb341e5
Date: Wed, 07 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767807833
