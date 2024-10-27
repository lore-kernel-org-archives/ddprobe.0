Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56561161
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730046354; cv=none; b=rcej1QgR8uOaBl0ySKEjs1Y5Srhveb6T2gyElTmuLhrqny34hPUnKriX9SPeAYeQWodoX9FcH16ITtxwhZ9+qCliAl+e6dzFS+rNSnNZsQU6UZH4Uvpi1bBO52HJUOwc45KQfqPuyPjY15M5a3FRCF6nbyq+mJrcNoV0Vlt4Vwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730046354; c=relaxed/simple;
	bh=lPslo+HcXST4gcqyg98UxKxWNrTJDFjkCgSDW7TrgwM=;
	h=To:Subject:From:Message-Id:Date; b=bfe8PC6eWv1vcXPfzIp9OJRG+4+tPNCqM9YFUqlGrJlA1GtQY4rgwgYUXett7bwq0fSza2eANtMxkqlR+TbQb1cs70olptUdaC7VhPI7jKLNSsu/2mB2OoBz12IPhVXWFCfmVpbVcQM5UE9fV2TQysfxgx+7NK+y/+YP6lyR93E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIFXYVfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIFXYVfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23F1C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730046353;
	bh=lPslo+HcXST4gcqyg98UxKxWNrTJDFjkCgSDW7TrgwM=;
	h=To:Subject:From:Date:From;
	b=FIFXYVfjJ9IdCxh21ih/FxqftSgA6/4jcxKno8duzGp7XBh/HVB1CVX0ZjZU0+kjl
	 dvXjL8x/hJ+nwAqmzbvL8STvypiEz6PtPghBCeP1xNGsE2Xm/07X0Qqn8OrDTDHwlx
	 gJNDt9xE8GlFS2pbbzppEPO/v4+W3UaTHAUwZt+COw04LaSWXNzD+kA9mfw/de7SIn
	 iSB4ZOsT/B1Peod4EiL8nd7EfH90eJeF+p2+Eraz45KRenb2wKHqZQ1cXHHWSvvVbC
	 uaOvVzTN9u1ofABXWmZ2ZnHkwDPro4060mpd4Fa/yugS9f5dGkTcWwRcB7Bix/Kano
	 mj7ClOiv40gjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99871D1356F
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173004635360.10251.3028725585248222055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c30b3ff35060ffdb56ef5409d972fd1f48b19b4ae95e65da0b204ca234c7de
Date: Sun, 27 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730046353
