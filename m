Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA300214204
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776680853; cv=none; b=gUInOPyuxXDCTfFD3r73Mu3yUpPPF5wPW2lfgYpDfDm3zX7KuulimWSZXxUuDc3UtmUXl/ZwQrYwj6MBPY1JA+xbsMVg07yi8C8WqCLktZTOI3po4YRdnqaa8gd/hG2kuyp4CMkmP3a55prtO3fNT/KtarAooL11bf5DJ4mr2eM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776680853; c=relaxed/simple;
	bh=XnVnf7s+vIK6KspcyxOlTYcYCvivdIe1DGte5ilDTVw=;
	h=To:Subject:From:Message-Id:Date; b=a8cA65GCimEYhLs4SW2TRIkzxJryIPd8fwrgvqruQo7lhV8hIo5xs587+HVmmriBx9oYovzWi4sXuHaj1GqY005nSDgZPQKX1IYHs74jv5F0wvMr0GRXcAF+2nCAsOmFrYYwLZqgnRKmy26H0QKvYERFmAXthlX7LONdU3qJTqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiqeCp0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiqeCp0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F6CC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776680853;
	bh=XnVnf7s+vIK6KspcyxOlTYcYCvivdIe1DGte5ilDTVw=;
	h=To:Subject:From:Date:From;
	b=tiqeCp0pu9JfLNyEfaKCW8pGDny0799sjvepAMRbFaLIXTQl58UfB4+97Ry1HLgLS
	 tL3LF/xYE8vW48Id8pjHg7uqnivKHQrGstB8KprVnBe9eipIkLg3e2M4vx8DjZWBHa
	 8qIbnIWWM2eiBHFgivbUnYOodOvApETcUzMv7GUic0ntsX/KHVWh8PKONrNAOf6FWl
	 UDedb/ePV75izQWUIUPZBBVWvp8oZeQHsaJl5GCX/ifO7aGmR9DUZYr4vKjhaoWZfF
	 /XxR5LcJnSq00BP1oikaSgHfIhwFey4aBl7rzcFFP+LTjs8qtM55+OFsEhiQjNHsgt
	 0dpvcyaTo5H/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9479F55807
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177668085368.18659.16725009702199676000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7efa33596396ca89dbc3effb12ae53eba0157417e43ecea45b6b709d578f4e30
Date: Mon, 20 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776680853
