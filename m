Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F02C2A1CF
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768786434; cv=none; b=bVYWOYalFREHqR0IuhGYF5tnl+AOTfTupOvajTlvIMkdrXSnL3dpy0XbfAO1VrPmxRLdN4l+cY8QQUUaRjolLElOfncjbLJ6LapB/4HvviV/VUIuFnDgZWtALgQY1ohdSjhGinZyzLzC00jVxldA+LYWspIzt8Pc3GrsSZLdRds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768786434; c=relaxed/simple;
	bh=SXG8QyES/dl0DWorpGML1JT0IJyTFNpz3CNj8KH0HJk=;
	h=To:Subject:From:Message-Id:Date; b=BaXofL3I4TglErcteWwmdGmeBcSYKqCszDJtTas+bYFDoQOT3kOEQhbyE47A03V20N4sDt5vGqEUdx3/FMXhaNxRzwlZdFMnDp6hIGCpjhRUxIgXtSMJseV8aL/cH83re5FzQYtecGUoytA7x9TDZ1Ptc+PfZ1Yc3dHTDENd67U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHiwH/jH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHiwH/jH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AFCC116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768786433;
	bh=SXG8QyES/dl0DWorpGML1JT0IJyTFNpz3CNj8KH0HJk=;
	h=To:Subject:From:Date:From;
	b=EHiwH/jHn8x3XVlmggPEZULUvBHzfzJzGdwGjtlOv2GSYcT21NhdVXO6Lqil09/rG
	 8xsi5e6cKPACbBTR/iiIQ8jyblyFOY0vT4iwzIFwNxRkJp0toRMlaIS+lnOu7oHa6s
	 wS6pr/dE9pfl/66F/5KtWI+au6lohQkznEMkOhNz26qocnJ51z2h0qQnNLVmMpEC/4
	 aPz16RHr/2878QUuMJq9yaP0g8nj5bDXbgKiwQKk4dDCBF+9W9rfCj0/HeNYW+S9f0
	 F4UkdB8wphAMfr+qXYdo474/QdFtqunnMk5NdMQW0k92RrjBFjDOfIPlKVmDeBvnkv
	 pcklfvWg4/7og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955F5C9830C
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878643357.16596.5380785570215483862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4352b65cb705998cd32bd3530dd01ea887341c7eb7ee6f1db66d76f6a8dc83d4
Date: Mon, 19 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768786433
