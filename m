Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F90B3B95F6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785367234; cv=none; b=afYGNq/8D7O4NQvjuxumqYQsWnhhaeKMQ3hVgc/0Origlo1XlTwjh/R7TGhzVGfthiBA8kw0HODeVHip5oU7S8dOUdFU34Xmyk3PH6SDIAxSiQKFCDJ+VUveBKx0PJZCpRnr0lJBGPetclEZsGmxjT1Y7spmvUdSOiS7O78Rsng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785367234; c=relaxed/simple;
	bh=Dl1TXSWSuAWMh0CcXrTEe4weEUGwdLjqsyuPL5H/wQY=;
	h=To:Subject:From:Message-Id:Date; b=s90p0vkNq02Irte8kieZsIUF/GzfvDsolkTpVhlEp0d6iZh8tFL2qvqja0SEhVtV6UrpI46wF9cJIvmyR4iM7d43gPzFxhr/Orw+5ACWtr9My8oOSo4ECH7ZoxdGYr3GYxmmT3dp4kO1deaelMIpsGjvQnOHYE5sfpbaWXSEcJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=izbb1B45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="izbb1B45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82F6C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785367233;
	bh=Dl1TXSWSuAWMh0CcXrTEe4weEUGwdLjqsyuPL5H/wQY=;
	h=To:Subject:From:Date:From;
	b=izbb1B45q9epJBDxCQRUXvByAp2j2tEviYaJREXbkkjuXEo8fhimSZe1g24xlE/D2
	 Bq7cwd3PqPUet4WUwhrzwFBfpWv3ihL8KKu2gtDlQCkBaYjo2VDLtLZbyo0aLGpeOG
	 j3y+AhDPyaNFY8WQbyDSI6qvLhnA9SvZkkLmcsvgvDCVH1Nk3PY4l+xRr5uUW7WFWX
	 JORcj3dS26B6EAnEoH0EgFYbS47fPhW+XO1mmX/8O/yNEtykzh102I8XdvjgdDcp9u
	 xlaiIkE7izwX92VWYUeJRVgUcim6TOHElHzYtCzaTJqD7i5pDgaXKyN6C/l71ZeB/G
	 Hd7WttDRynOhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80FFC54FCD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536723368.25733.4256619882659229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec40fa0926f564d6d7900ed90e364cbc078c831dd609371059a79e4d5ba1a881
Date: Wed, 29 Jul 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785367233
