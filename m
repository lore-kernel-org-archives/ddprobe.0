Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F281259C80
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766952834; cv=none; b=iABq3gFBCzkBrpNc6brMuw99TwP4FVLwO1LhVT8B1lj79FuNrYw3gntotJ17gL2kTLEAw6B4VWynXsHOcq8Uw9dswcKfG3qAQH6EtlYlGafiShG8kXM3ymHRtH7lTAtPDVmr5Fjsp+n2iF0848T1XZyDJnJsImz6d+/Nu+ZlPOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766952834; c=relaxed/simple;
	bh=nDZWWMVFUHOAD6CpXz/dQdk29C0zIcnGFzcHKze3lwI=;
	h=To:Subject:From:Message-Id:Date; b=PTq3ewBiINmBAJyfTn1Y3bqEQPMsiDu7/cULlV+hO7j/gt45TjLv4uhRXW4vStN/Iyytt7qZlH7VANN89DP5hqav28OkffEsa9xYcG9UG0iNA2fOLgcNeX5xy/vH7y/Qy5bQ8FBc4VFuAutpfKlP6N/ct33MaUNl/jI4DjSkQDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuzb1B1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuzb1B1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC500C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766952833;
	bh=nDZWWMVFUHOAD6CpXz/dQdk29C0zIcnGFzcHKze3lwI=;
	h=To:Subject:From:Date:From;
	b=fuzb1B1h7iZht+xr1mu8aNt4anPzTuXZl81zThEbGC+Qf8nZECWByL/7Yk+QtuYl0
	 O6mdQOwPqcfk03b3aYMvQSKTqfPEQAXvbUJb3BAR7FghEsdzlNkw+sls6+KLKKPFPq
	 eVMQ3riyUe2sITbyvV64zYChjkfe1+AMhzQatv81jnr/ojgXH52ylKabE/2vtvlS9B
	 Lt+imrvLkZKgC3K/BkEiniH/3wJPNmXWbFTHcvLlqNPr09X4JepHgIeibwenYadr37
	 r0iaGDQLq5TCPgAn/pEPc+L3zlsX8/TvKt5YYCRmQsus8/jOK7xxjyiwU8eFUpQ4FO
	 1aU+I8Lpg4yww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931ACD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695283359.29123.5478297579865282888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482eb6bbee479ee13c5e7719b340ca03cd2fe9b86a2c963c3a3c3c81f94a3ce5
Date: Sun, 28 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766952833
