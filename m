Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4661628EC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746404394; cv=none; b=gE9Z6GOntNSl8YNLNoj5DhNUY7ZSXroYQ8yLn0IvOmtn465eK8LHXmYZyIbI0447R0oZORnHgVXQnKGBMgWPbmEDw3ZxtrQpB6bRuyNKz4CfTy6ABONuzZaoG+f7PRM+k+crWbV3xDAuG5r12wk6LgTot80PNxJyknp6CWkZvFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746404394; c=relaxed/simple;
	bh=dL+usK5I4IJR7361otLB0aEQkSFt27UtDpxRmHAMehY=;
	h=To:Subject:From:Message-Id:Date; b=nXjrBSvMlpYfCymqF8vyOSsakQqVpcQV+CJdH5ZG2hjmxfE10Qp4ZK3ujijZMiBb1uEgmWVCZ3x0TGxczAcQKCCz+YyVcY/A/dKeOjA7GGjaKGuk34AkT7RlU5fZCC4hqDFsuL5JRYGtcYQ1kfpEfy8js/8I0WH9cvdh6ZtbI+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOL343sD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOL343sD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A841DC4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746404393;
	bh=dL+usK5I4IJR7361otLB0aEQkSFt27UtDpxRmHAMehY=;
	h=To:Subject:From:Date:From;
	b=vOL343sDosIGEHnim2380oE/mhdUJbmqMrZIcApjb3U4evxqyFnxfeG0+KLB1Ip+o
	 vu40BrP4EZBz+x7AjMZ6Ep3n4kgZt1QYbGf+wjMIMdvPCFQwbO1xpGc1Jn8v86gJmk
	 chfdFQ13N6/GdZ/LuUulg6SAj0vFNAOpUVpilqSMbSL8BqZkwfa0QrPw6YY28Q8Nd8
	 KJdvBCu9l4uztV1ZcwWUkWjCMjldtGSy43Yk5ysVRkFdM6uzY0FrOno8uysE/Klbyk
	 iUGPzGjdV/OdFoC8WNZB/L9dkkRC5mO7CF7eo3/glZKkjmRtAyuhPDB8CBmWQMF8KI
	 TT4yipL9YtU+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FECC369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640439357.17390.4418636333434821076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1879225f569a9f7b4c32745a03d2dcac60a86c17d22f9b53198c2c7273f25b6f
Date: Mon, 05 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746404393
