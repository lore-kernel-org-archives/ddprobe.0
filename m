Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8E23209
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735799754; cv=none; b=bponb7Cn6UUi5aXO7ptJvr2I5ZwgTWjCAVNcUY44PNXvp4mXi0WatmWaiK5PhHTzcpk+WFWC/uenXnke7c6bZ+Lk/NLlrHKaGQhpAHJAKSSYpm0I4DqFLNh+qXs9bhpSpMRjyd0+tuMl0UG97zpQgmc9qMST4Uc39dFEoDYATOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735799754; c=relaxed/simple;
	bh=OOsg+4HsMJkx2a8QCdlh53cSy3CZazhY3XuF/t4klYA=;
	h=To:Subject:From:Message-Id:Date; b=BzkVhotTtGEvKD9euaQZbyKa/cZqrduD8j8uO0WjXk8vgbu6Xl+bFUmxehhTfN0X22Od5jFO9O6hZMr2EXO69GjPPldf2jTmsXCBOmthqTMHh0Ai0hthtZ5Sh04xG/7dWibeErrvGlD5r1GWfhIR+mrnEcLhhtnFkztE9ZEeG7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHxCPgmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHxCPgmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2330C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735799753;
	bh=OOsg+4HsMJkx2a8QCdlh53cSy3CZazhY3XuF/t4klYA=;
	h=To:Subject:From:Date:From;
	b=LHxCPgmAUzzJq0ImRV9JXnSYafVl5wyWIhz7IMUPa1N3N1ZmJQKzmGYg3m2lSZjeD
	 csjtoI3Dddyz6U0ul4G+TzWt2/pW6plzUCyk+rIZdYqRPHIEpBS306fhj/c3OV8W/+
	 f+iKwsFN5ULf0x80qP2Bk5g05/uKAVNfXbA7nHzi7KdWPfdPCO1n6mxBsW69T8WH/e
	 4W8ITOyz+dW0sb6RhFUGiLHz8eCNkMp26wl0N6FHB2YaOJzA1V8ihZccSkE+98OyuK
	 qbiSelAYfTxPmCryWEqgaqA90tDPp/O6HnWphRBPtmpHABfUT1wtAPv7mRo5AOAK85
	 BLMfMTaNt2uSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BDAFE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579975362.21103.15049998293580230880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a893f1415a15093e294691ca88e10992152ee4eaead959a0bc9b2ff85d94e5b6
Date: Thu, 02 Jan 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735799753
