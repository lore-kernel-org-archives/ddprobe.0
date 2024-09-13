Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26379143C40
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726210554; cv=none; b=S+VHQ7tQkMGw6qDQQA+l+P6+dBHKsqZPbcDTLHqu4tZNTkGYTqEboKVeEjuwDIFh681rJQZc559g+v/FyS6lJbOAUCHlN5x7vxr+m4Jch3+jITNhA5PMSb2AcGF76Idz6cagiaSJMO0xIWocH7X6+SZInFJ5+DdN3oSatLLgTMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726210554; c=relaxed/simple;
	bh=sH7uRFG0HWGLCqT13IqSXJMkCfRfuhGHD2hmfMS+1C8=;
	h=To:Subject:From:Message-Id:Date; b=dSuxHZnyDzqNau7y2axwLkzrTU06N/qEuNxhjiY9rbetDAqc+hIeDLKlH+mpu5Yx2ZhpotJtuuMxMN8tKmHIHxHhKySo1cE63sPsl4Sr7cdeJWS+3UMCvn4UuH7M2zoPWb33avgZk0tc5DIniCOmvMAlThEmZCjbFE0nwsRfm34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NbnqFG1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NbnqFG1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA41C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726210553;
	bh=sH7uRFG0HWGLCqT13IqSXJMkCfRfuhGHD2hmfMS+1C8=;
	h=To:Subject:From:Date:From;
	b=NbnqFG1N1LpcYBaDya9Tn96xcdMhcLSbQ5jlDEZ9kHBdpdAIrVd0SJlyGm8ciAEbN
	 6Qo/HO0HGCcfBg6pVw0FqA9KSVrbJev+6RDfrsizXBbLJsmbu+seROpdWWZU78FXc8
	 g02CCRTfvFUXizpMO9W3GFzqevUWCqPstk5S/UNRNCAQntG3QM/tt0uXh+EmhF67Mx
	 ooxj4buSfrechkHE5G0VXTHMUqnV9pgSgtoXOPuVQCnrVlodkGWFwlgQnmmpDE/ESc
	 1kjtzletfNlYLQly+EskLrhPmg3kwXtNjCXNux+NKUmUFthz5bvx8Rano2U10+m2fS
	 Zr2A69k5RJfbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE68EEEC39
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172621055362.16456.121677387966229831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c5120fc3847bc681c38c968aa4ef40b9c53013b78bdc57db6b7191d2352ba99
Date: Fri, 13 Sep 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726210553
