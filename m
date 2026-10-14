Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A9D9413230
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792012834; cv=none; b=lSpYp6iiONrxU5Bin/q/o144o7KYHnjipXNAMD36x63TRv+2YHzKjsFHjEp1Y1UpQHZX0wFQBeXOzGi7t9eS50XyUIEwkr48GI5HFq653KHACtS6OblEO6MtA4WgEARmNDGeeKyFRCkZe6XisF2Q6MUKdrLuYctYRc65nqiciz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792012834; c=relaxed/simple;
	bh=67QDHLu1yZeqWbMwsaFs7LT2s5ClHWSbgp83hC6BL7c=;
	h=To:Subject:From:Message-Id:Date; b=RPr4nzXgIJigtnEIJzlfvSMIRBHNSlkA4uo+ZdZY78+HdrRQmNyT4dvmUyRrzfXhkan0c02A5Dq5xddjfe0+tSKV07affIanZRQ+B1oLG0q6ihQ8ArstkSSAdxEz24IFW9H6Cm+7gCxzW0fJ5/ge98hcK86anJBU9nClSD6XYTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3uNxwie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3uNxwie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCB4C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792012833;
	bh=67QDHLu1yZeqWbMwsaFs7LT2s5ClHWSbgp83hC6BL7c=;
	h=To:Subject:From:Date:From;
	b=Y3uNxwiehT7X0KJPPDuHOMfCpJpkCqoXrtX7ZuPIAO7AgOkixQUSBt7uDi7I5Oijx
	 y9iWzzXwrWuc4xl1Ft5BqP3NewLnpJ/K/ZxPByS1N5KbbL/A6uuQCPfPyT2ue4TCih
	 07HG6VIQfDI+KRYFDhK0HiDKoq6tlwYM/wRfjNyFe2xev0Pp71mCPpN9rjtYF2Zqv3
	 oeqPOWC7fTEdZSE0P9kmhgYBLqK38sPAG2WV59Yh31IYyDLvwXNKZ55/40hIhtrN44
	 ztAcgx46QAVhJ8EWNUermw30o8GyJrvbyLed+vJzozSISG4XTA3GQpZfVSsIRmRkaF
	 Dkbillh1EAGwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E4FCC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201283371.23417.12914237616110990755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e7aa45051bd061905b0cc7a52219b16e1d9edb8d0998adb46d91304145d232
Date: Wed, 14 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792012833
