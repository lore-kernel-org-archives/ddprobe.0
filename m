Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E60B1F2C34
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752480594; cv=none; b=IV/CN5c4NCoBbhn4/CuK7kJa9/RU0/jTCtr9shR6vKpVrhR8ka/nDCgmqW846BzoMdg/dnI9xKBQKKSTB7yYms3qMFLZyiWFDvKt/5jCVdJcyx9HJarY7aSzhSf9r91zVf+y5hzUnWu/oS+JU2NnjpaTnxq5GB0sEyIpEQd6SGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752480594; c=relaxed/simple;
	bh=59bFKsWK9Yiil6Kz6o8IQjf2AvjFSjpsiulZTuQ8XGc=;
	h=To:Subject:From:Message-Id:Date; b=o/Xfk3SbQ2mPzvc3Wh8XGmAsylJXlnrpIy8cbxRYRkUThdLkmfeW2FNjPUn0yiFIDU9+RfGa9JY0E7fZUoQGbR2FRD5EpTxxbXCu+37B2tyYMdKTGzqUOfn75AFXdwnhq6wPqpuvhmNv2TZEgK6fqIpYe0+FE+4Wbr0A3R1OpMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebzPN+2u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebzPN+2u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC308C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752480593;
	bh=59bFKsWK9Yiil6Kz6o8IQjf2AvjFSjpsiulZTuQ8XGc=;
	h=To:Subject:From:Date:From;
	b=ebzPN+2uEPj2OQie4oBApJkuCCMvh27xtuN55f0h8/YTPaCG5UxFKosb6KzaoMw+n
	 XYrjsbt0LIhFWZMJFuahh/hBojw85XbmRuKpspFJiZ+Llf5qLundb0HlGuu13KyyPv
	 fWytOtXUjauSsuxn7kFbjrwuziHQiQ+ECwIe5tAFH5zvcieD2hVDevrjDPRuI2WyTD
	 Ji1nEUvsGsG04kgemvsX11sS0SbU+GQEj2n8LubbOrHde10PJlyE8lKkvfnXWRi4/5
	 5rmNrHh5WwW9Vw/zeRv+SDz5YcMvZI/ys3yPY8gaAKo87foGpel//gawQBIiI18EVJ
	 KAyX3QKWsFTEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C303C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248059362.17881.3296750030812946291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbab361f54bd8e820350cd47d660eefa94b3bb3bb652026d746d06f79703057
Date: Mon, 14 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752480593
