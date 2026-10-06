Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6997C49CF4C
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791300634; cv=none; b=pkCPZbI0IiLw51trP0fmaS64xrLF+OewmgJdAoNPmVwRZ4/z9+uSk3E+9r8RHPXtVFJTv1wwRRTmwG9vwQo5MTsHNmGiPELZ12ETL67ecN8moPtkzvQ8UnYRjUdh3879q+7OLeOyWZnwiuvS8/5FEiT030hTRIYLBNcGMuC8HKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791300634; c=relaxed/simple;
	bh=tkT+dzZhA+8Xhim/fa8bRs7qd4oRDEpnMVaDbKO90Lw=;
	h=To:Subject:From:Message-Id:Date; b=SCv7nz7+miMLcv+b+yMg8q7qAKk3wjvIIbaRPBK/PrP0q0z6814hVejop1ZRR69KsS/Podj1adCjXrwjnctIONPkIHl100L+2BI8vRHd0r/xUMXN9l/fPvB4CZBva5CSJUoRWy3doOJiZzb3yjuCTOawd9cTghCn53dakg5iZq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7wRjFt0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7wRjFt0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B80C4AF63
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791300633;
	bh=tkT+dzZhA+8Xhim/fa8bRs7qd4oRDEpnMVaDbKO90Lw=;
	h=To:Subject:From:Date:From;
	b=V7wRjFt0A/g8DCfO8ziiuSy+VXB0vgl1mYTLVBwE/ogrkFjtH07tKIMRCDSm6T4fX
	 oN444PvCwAPNWC7XLTX7GUQ+WYFflqLkZdj7qQjwU7hp/g+0W4OIUVsR4ZfKDF6MIQ
	 z9TtS0Cb+fwhqzHeo+V52bPwKubklcxRzD3UiOBO1nc4ZqoloMNeGaqFkjp2qT+k8S
	 khri2axz1ALc4SuoH8UfTJ/XiGKe/WTdEVatFOmRR0BDTADDBBScgn+NGxyG3p4x1b
	 M/bnqqkcrichgo/J92l+dVrk05ik3paGmPg5c1pHTfcHPKl+QxnYx/smhXY3BHT6Ta
	 H9W2vt6bsE/aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD09DCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130063369.18681.5111243051053356314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57304c30cb04f15fd6b2ffcf8b2ada746a3af8bd722edd46c48862e99e84ea15
Date: Tue, 06 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791300633
