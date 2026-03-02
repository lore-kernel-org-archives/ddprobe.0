Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A22A423A68
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772471094; cv=none; b=jBg7Mz8KaMdYz4xpOLGXrxzNVP5/2L+itpwSejISczdZXYBw/y1zCEebSfYpwC5GSGbHReCCkLuvEMYgsU9xBST2XVAxAif9Jz3wzpwgg3R1vIhTMcXuZDoVE+W+7EYiVxh1YggsM5ijv+BobzpByUK+i9PYLfONOqKSZdRU4FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772471094; c=relaxed/simple;
	bh=u0JH6prOu8B8uhw9fxkcf5VXweJSrRk6//pzv0CqGGQ=;
	h=To:Subject:From:Message-Id:Date; b=oQkpevKdSGzgPjm+Clzrlv7QXqWHEVt0mUt/wJBhg08r7wxyRdpQHhKaLqwoBtM1BJGLFJ87SqUAvPgKMjFid695qiKeWMvM0ZSGwE/sVpixe7pZINb3cedAl3420vJxy39qnqW6IPKL3d+LpNab5PM9gQseXO6aQfHRld12nas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBACYMqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBACYMqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DF2C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772471093;
	bh=u0JH6prOu8B8uhw9fxkcf5VXweJSrRk6//pzv0CqGGQ=;
	h=To:Subject:From:Date:From;
	b=JBACYMqvD51B0nXkCIhBPw/AjcfJv7BhPTxIsXOV2ieAa79Yg8dGYCPErKS8/UvjD
	 qgN0od6AgmYRJ3t+xOuM31bjIY3MCewTftc3Zyt4hKIXge1eyd378nmCsqKHw60vSc
	 otpXqfQPmwEkTS8w4icyRPZvJrA+j6hNK2Y9xUMKSkc8GTVQShK+tgonN+oxzdbpzM
	 NLV6919QV9Beiy33rZ96wZirwIYd+4IWYB8GRwyvWluC6z3SkqznuJ89WthxfSxo/d
	 tbOXZDmEq2K81ShswRev1AyaFSlBy5S57faQ+KkkKvO/Jk9FsIzoYNI/h+1LWCZ+VO
	 yzyVOakC9FFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA43DD58E48
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177247109368.17060.4078078625797603949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f014140c31171198ee4886a35e38d75fe83bf062f5307916a8835a184a8908d8
Date: Mon, 02 Mar 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772471093
