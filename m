Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BAD28F3
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728018354; cv=none; b=Av0LynrA0xBt2h6TlDS4XWN0gUqS+nvOMqgBrvFLD185JqR/9Y8XbTaO0KUpglDl9E0gz+E5noh2NJK0LT+tYYPERFkwomT4lZ8ySHOotPg8XA9Zbf3FhINuKUDCEmS/FOJ+qS3ax7Dlt8u6mF5F8KoUzo/AIl1+5nHxvFG+XAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728018354; c=relaxed/simple;
	bh=Ka2s7vdKWv1h3Y6ONt9rlYytrh6CFcgOp6jdgymIFR4=;
	h=To:Subject:From:Message-Id:Date; b=RJntQy0vl7ecfsNJ4uslZnxuf98WqXgJibwtqASyxIBFicqA/C4yIvGFtpVWMrbWfprBLLrGDFTD0rSPSMvn7I8Avdcn/XgAgQfSawojyZIp4NcF0MtoEN440htM8sB+H7RwxKvtI4Lygu+4hv1I9amDhaZ/t/aVNN3WgHV5a5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iR5KhRGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iR5KhRGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EB0C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728018353;
	bh=Ka2s7vdKWv1h3Y6ONt9rlYytrh6CFcgOp6jdgymIFR4=;
	h=To:Subject:From:Date:From;
	b=iR5KhRGimiVI6RkbXaPuqzFgTN4YPO1W+yNfrRaU0vpTtsMc4cJ1Bf3v4L/foQOPH
	 53BJp2SrWnlLny4hUkRy2oB+zC2U/ipVg9xcbK05JG2NI4pR1K188hmXU4Nkl2YS8o
	 xaoSss8y9VLe9OvIpmlYiD8IQv5/Q5K1nmigjAD1PNeLnwPTFcBJXcZRViBTIeqGzX
	 q1guFfcojm2uRkcEbRvk0iGrEDdf5cL+izpKO2km5EnfTk/LFl8MnuxJ+mZYvLkyzN
	 dKZ6hqBF7c88AQPCeFfvnUwzuf+jzQhNGeE/BDb7/x60/3o2FoCbhX8PGh05KhC3ej
	 ecronOJYaQ8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E078CFA745
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801835363.15502.6279603900016693243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d0ab3042d927b5d26cc49108ddffe0b4ff1cf2895da2d1755f42104b64d790
Date: Fri, 04 Oct 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728018353
