Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6367B33989
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713962423; cv=none; b=D3Y8AVzfOC+nZiBnIzeNhSMjTnvG54VBAGt1nNqd2OvvbA7MPcJoN9Vk0cBGqwKK6wxILIHkP0595EC2V7cTWwTwll7qbzndMuYwFDeBR7MqmNtK2mL9ImoxIrDmWwpjNRzSg0b74XodLbpPRiAimv6uWOvI+/7oNbC4Lx8HVkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713962423; c=relaxed/simple;
	bh=BxSoWpZXyfoyauZsP5vOnIC8srikoY1c38+Oe4uDr3c=;
	h=To:Subject:From:Message-Id:Date; b=c/+kRNQ9Ss8uVY2MQZLnbs/Uc1DPMeL3DerMpuqYkYmY+WDabZEDd17jIlbst/bsFT6w6zmP5fph2IdRgLr1GFHaZQ4ERKnv+6oLpj0Gc8BdoWfmtkQdl6mHTeGq4/QL9TRiy2k4lBsxc8HF69Dhpu5m9wmtYcFYgcMKcOhL7wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWjspav/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWjspav/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF65DC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713962422;
	bh=BxSoWpZXyfoyauZsP5vOnIC8srikoY1c38+Oe4uDr3c=;
	h=To:Subject:From:Date:From;
	b=eWjspav/8odqTRQNyj+JIpF6ibeI99v64GXfqNXvWl++Y0JRGhl7/i77yIpUBW2rP
	 hr5DEts66JzUGa+b8vxlptI7JozFsazyrrRMW8D2m0xNpJcnd9WwbnL/dCLmxkPeeg
	 8w9qo0jqbq7Sbap454aU/s5JMilf3B5rqfd+2LcfYbaIzOFQEPFKf4wnwH1JO9O2wG
	 oPm6ghCIO2n7PXVXnRgCZbZyCFguiEprcqL/nSwgHrovsN7kw6oSsxxOg1mTt/TUh6
	 +AzXx2siVv0O8dvMgEnIdd2HUPH9UJ4mxxJdmE1hHqusqsvuyR1v2ef25/px8dco/v
	 XhCrS6Py8QDdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64EDC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 12:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171396242280.5359.4299648383392584771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3449e0c52ba23efeb1f7a11d537bfef9682943d1b3522beeb818af2bffae15e8
Date: Wed, 24 Apr 2024 12:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713962422
