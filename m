Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2DE354AD4
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760892594; cv=none; b=tSBTjEswgsg4LXYhv94LxEUfj+ddIPCrRkcvoF5zZ8LrhrC08Lbn92dnpaFgYbja+qNhedF43/aXCFomlOWXG0EEPMx+ki79dFKvfUyCrBP15rI40yHm4jxe9F0EBZcllTek+LOW9H0B64fsTbN27AdA6Am+5uWDvuas0GnnNQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760892594; c=relaxed/simple;
	bh=+HIInwBFJfKiIOFEkNrsPHqBUOfrvPrKc+11SQfzytY=;
	h=To:Subject:From:Message-Id:Date; b=McDm+jQApPzabeyIIoeNV8iotXJegf5v4DQ92rCjS/pNPkRng6kVioCVaJQXrMIJLRv1y29ZUehtcsryjp+UwPTEEnwvKdqm4wkJlQylPLHuKXDtJVN6EeVbowteey/KLchd3vKAKnv4x2+p+YjHsdmLPGO4YCrB701GBQmZYyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnbKPcfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnbKPcfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12D9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760892593;
	bh=+HIInwBFJfKiIOFEkNrsPHqBUOfrvPrKc+11SQfzytY=;
	h=To:Subject:From:Date:From;
	b=QnbKPcfUdUqlDRX+btJqDLFrezeMzZCcALaPTJXv324KiqANXFcjwZHmOzpF4YbL8
	 dOET6Delo5QTquPSixWLwKziZJgCtnjJ41P0O7KjPCKn3tGkvHNhKMX8ZRWiVu3kl3
	 qKp1qxu5LuP0VcQaAeY7UNu2Ookc1G+4tyKdxd6Z6knu6AoFqjOgfy75i/Wo/litX6
	 UyI7s0/S2ikrwX9+s9p5YBF9b7KnWFyWSphbuyZLOai6fuE64yrsp+CEbiy93s9wmI
	 ducIK69XpSvV7CwR6GkkhRp5Zn8Alk/BEORRJfGTYfiVMvrYFY7SdCksQNorIKWzcL
	 A3we/YETaKEvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64ACCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176089259357.18917.18330478465867322313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa9dd69ce2932c24a38e0444c288bce6e5d3542820efb7b640089f2539dc4995
Date: Sun, 19 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760892593
