Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD351DA62E
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757470195; cv=none; b=nh3c4D6ojJt7yAkaplIcWQfdo5z8dGuSR9GztAff5j4NlhS+o5kgFPQ3TbifGU6tO8cqDcEvNhLc04pvfqW92FjiGgGJCd5bidMrx+UQlC2ICDtVLT1pW7FLMUKDSVZfU2ePzfeosJ5gMk9FAspDUGwQX8XwarmalNCvftAYwAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757470195; c=relaxed/simple;
	bh=y2BNk0LtKCn7wdmL9rENoujxgmpe+GRkoRGOEsiY6Oc=;
	h=To:Subject:From:Message-Id:Date; b=uwgESn4B0aRMtbE3qPBRO2WPrhz5YLV6TUkh45sLLOrEzu2QZcrR1P/DHjNL72eMqL1+bJQoV7rRk5IZKQmvqzbhpM2s2xNjfZnSNsfdhFVcVfBui/arK1K0VTeuKM6dJfuretBFRg7iZMZknvNoEGh7phky79Fg115EwzXbdOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ct9/RpFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ct9/RpFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F583C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757470193;
	bh=y2BNk0LtKCn7wdmL9rENoujxgmpe+GRkoRGOEsiY6Oc=;
	h=To:Subject:From:Date:From;
	b=Ct9/RpFA0iYjJFgVvep9PD4/V/ExAb0v4hp4o43l2/Ntsh1kU4R0Mqj6xkbGSIzMx
	 MXFs0kMQRNFB0cDLi0mRlafkkPrdrxeOUlufZkxvkMwQOUwRUxolyHQxBiE6CQCPyq
	 5FsL7CL1S58bRbx1O6Ev4Eg+NkG40QWze1T2NhlbbILVGMOYhzLXFtNjgn49L0IksG
	 mgmoERPt1Qr4toPptbFo5AlPLo/ZhqHkVF28YFkzpoH1dgMOUTPbO32rFpCbVrEsG6
	 i78YBGG0GB7HaWZgbmEKqiXfxybXYU+lWU6pUbozc7VTtD//6TS0ohaqBmPlHXsLJo
	 nzPQ27DCKAO6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEECCA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175747019358.16850.9073932601686100746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd13b8cfd5b441b415208a113ec9a29aa909d5af39c6abecaa5720c617647678
Date: Wed, 10 Sep 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757470193
