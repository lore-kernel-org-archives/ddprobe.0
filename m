Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFBE14B96D
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720184723; cv=none; b=lyxbxRTD03/tK8ayJu+F3vP64epkY0gLfZRGZIGoOqlm0zNB0Z7TKxCBoHeHvImSwOR6I/l8jFmbem+XATCwq70Z3GHOZzULg4loM4XHcE/jGXsqUQTnXKPrwZslzIfjJyOzEPWGiCJPDLN8srU0OQIoWr0ePhSgnshkAlgru6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720184723; c=relaxed/simple;
	bh=NgwyuhywgrPvB8Y60OVlog2UXWspkyt8pMmy11MLWyQ=;
	h=To:Subject:From:Message-Id:Date; b=VcCGi8AsNgbJuvICllvwZ39/Dw4csdScRP0slB7KiTbfi/i7lUI21iRFrxDgll0JcEo8ZqBQ++o5wQKxSHOEzbnE2KggkCBg7J9dv5hcAujvUQOBAnyhecJkVHAIZuX4NB3TRbtp8CNVes2XgRg0Q3hMriFRp+JNLLnorz3wlj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kq0MTrea; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq0MTrea"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA780C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720184722;
	bh=NgwyuhywgrPvB8Y60OVlog2UXWspkyt8pMmy11MLWyQ=;
	h=To:Subject:From:Date:From;
	b=kq0MTreabZCjVENAUuwoc6YCu0JZIzqfM97S1h/jXtZFd2DotNMwom/fG2acDyG5y
	 BS0/AGF6rVFVazBgQZCMTV/mzoVGN/n5GXAHRelxk+KYj50Sfqrx2RpH1cxVNUMO5q
	 iFmrb34wowXJzu7Q5LCIghJb6CAS5N628frctcV0Gjkxj1Vnbu9WZtCsYIKNiTVSVg
	 /KmdgE0e8WySvNrWClBvss3EcBGdEYNGRB5yJF1kGAEKt7QWe7/vWwFwCioNaUk1D+
	 ABSEhUNCxhK6eSG+jUZP6/78pTR+FQ3niSR5gSl0o0iJ4CpiUAe6qVVkUjrocku8TE
	 VJfWXRJ8thudQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C501BC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 13:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172018472279.11457.12539562143314392101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5615fc496646c4c95695e58a72f92313c725ee64ef4aae9115efcfac7fd84dbc
Date: Fri, 05 Jul 2024 13:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720184722
