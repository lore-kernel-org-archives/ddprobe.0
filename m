Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167D71373
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767398634; cv=none; b=Vl2qU7dkHmjWaQPjDd8msrv2ZNNlNLo2QMOIH/s26b2B4rqLeaMTLpNM7NanFqqYPrpxG8vDl+HJgG1xbFriFvKuAUetgfZpni1GBSQMoPCdBd9N9qsk8clIqVOO+ZyI2Jzi/ggfvYmKA78KrfmGsaC9eCYnZjbUz9vFzaiwQlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767398634; c=relaxed/simple;
	bh=Na+C5C/2DqWuajaOKVfHfGRJi7IG7QcejIvBaxEGKVA=;
	h=To:Subject:From:Message-Id:Date; b=KeqFVcZ1axVLpkGwbwv30V4mRqxGBATuvM/GP5Xt8jJd5B+ug24W/LHtceYL/VdEK3C8SC/v/DnOvkLc9/7AeICB93rNitwF2jFM6rCF9hUO+WXLKQPnTF2HCN5LEkhU+4jgnXevzNcNFUh0J0pnzNbu9RTogiaeKZauP7FtAoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thbPOfwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thbPOfwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A456DC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767398633;
	bh=Na+C5C/2DqWuajaOKVfHfGRJi7IG7QcejIvBaxEGKVA=;
	h=To:Subject:From:Date:From;
	b=thbPOfwtz/+3WamtuJsyxMxETFW+mkw7xFqqS0Vr/4vdBXCGtrdbLi3wQ+rtVPJCB
	 dfmUw89zFlqydA+UPG8OzBGaXeSsemneGrbRDhiAxtgYcw+XSZ3mZVxhyW4lLTW3rc
	 7W02VsqUl8+6wJYqgcySP34mBdFikTSwEy9NiA3H6RpdRodoXfk3sb+VbmsVaks30R
	 HONKVlU9Ic1jqpaqk7Moy9s16q1RBG1nu6fjKjqD4e+eVlimwdbnXE2eU9X9HkXIpP
	 6+nHSZ3qvS3ud201S50RagZBDhcqR/4V09u+T6pGhD8ysGbFyVGFVj7yaFyyK87mmL
	 3rBDEPaXVBMQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E9EFA3727
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739863358.16250.1540996676132648535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 086e8413898b8d66757c4da76b454966a76a1cd74b47f62c34afb04601150379
Date: Sat, 03 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767398633
