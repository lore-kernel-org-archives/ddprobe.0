Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C74101C8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747495795; cv=none; b=PCcp1IxqfZrgEeMNIjaRCs3swTQ4vRJcxD2DDGZU+Nxi+zNrE/YEFC2FfS0DgcZLAOmluNA5b9W59XmJq+keljYBtlDTsmHxJAWKbPxzXBeAfjBi7H2KQmFNuIxe5jDg2z1NaDioJrW8r8GOEkHNEw4Qd7W5PHyDqIS6EVTbY0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747495795; c=relaxed/simple;
	bh=3142u3IBjr81bOVaXkKqTVpRDOliAjdU6SYV4terOEQ=;
	h=To:Subject:From:Message-Id:Date; b=p8QfZFWZ0rH4kBkHn3Xx+po87Yp3aWJNc+x/eG79lUMWlglBUUW/UDA+ZeplAYBgkMVxJpCZf9c0Fap58NZn1R7NloBnWFzvY50gn02mepiPyg67E2bWox6BIHezIFqQONO/BWjxWyG1a0XQECanmHj2Pvru4sqiNDTkJa3MTk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7t3qjcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7t3qjcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD89C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747495793;
	bh=3142u3IBjr81bOVaXkKqTVpRDOliAjdU6SYV4terOEQ=;
	h=To:Subject:From:Date:From;
	b=e7t3qjcb0A9QQmZGx9s4aJqDYk0FRuWp7zB4SyCsJ2gl1dOPBRLw3RJij0g06xZrq
	 DzSk6kMfKt2QVmx9ELhgOknQgSqwaYwHgdD+OTDqm3Iyf/kr9wdyMTtmOYJE4eiFsQ
	 fj1podOUgLgPvvbw/S94aA358KajGu+EpsavaQzxOgG1l3wsotU69opBkdglZ82FJF
	 GCWRGR1xi6YfpxuDjkEOfAj55M+7VlcFxDvD6gjBiteaCfYmi5jV3vj8NETaxeqZCZ
	 OLWbqfZypJKJ5ZiqPMUd4yu6r0P7juCkoeMbUN9AhpM08myodgRMu+Oil+sjSyomLu
	 YrzkNq7F0VS3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8DCC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174749579357.29499.4718781183213842386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ef8434eed988a71d7bf1f8f0f4085cb1ebc828816023e1ade7b85daed5ac99
Date: Sat, 17 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747495793
