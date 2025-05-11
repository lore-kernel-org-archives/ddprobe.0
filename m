Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B642576
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746990594; cv=none; b=XloakGns4x+a+zWivBUYPNc7NrAd75uiqkcPdi+u3UZGjw+ltEFLjowBFx4D4l6NPXlcw4aFnKDHckkA1u0pLTvwMWCwkBvVZHkGNTxbXOe2onDkIbTzbOkXL9NdLm/iRtiCtOReSYNwrP11eawcTo1F51ZCWzMr95dLzkfxXso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746990594; c=relaxed/simple;
	bh=sxWjzM+YT1oMHHeochPj1XdXrA9j+3tcrwH4nXpU9k8=;
	h=To:Subject:From:Message-Id:Date; b=auMsLzINDyssdfsH7mhqJrooKjAnvqq0K0RvdnE+y7yR6vuS4WVv3uGlKGMBxw2Bby6y1o+9mbDD4rfVwe640sj6HsLbXGAJ6QhOhzBOfdZsSsHI5Ad2bRw2UxeCQHrLTjQADaMBNHXlo6wcm84D4ZLa6la0FzPrB/vd27Oqf18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WrpmcPTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrpmcPTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E13C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746990593;
	bh=sxWjzM+YT1oMHHeochPj1XdXrA9j+3tcrwH4nXpU9k8=;
	h=To:Subject:From:Date:From;
	b=WrpmcPTZ+P8C0u9wxde61nRmNCJ7RGNqH+5uC9nFl47awulb35oq749mh3/4dQWKM
	 iTasqv/wzLbhJ195YWVtfqMLQMHhWZXj9PXnIjliKWODU3wzCa3QfFaKNsw/D4P7Di
	 8K3FWJ5q/5u6hI5bbmoaM/lJomLczm1OhtMKsuH0tiOjDUlNftgjkhMZ7JRT2O4Ot3
	 M7FRkFjehnbptcVh5Wz/Hp3M+hLWdZ1MrajoIBkuAFvU7CWSaquIf+qKoSAT7I5zGf
	 tgkZgRySxpSo5iXRtbABuqB4LqMZvkDUtBSaFa/gSG1eNOBufLBNV/deRUtVNca5Dr
	 cC2NcwEXKnLKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94843C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699059358.7518.2815290047918302497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2957f259be4075a21fdbbca9153d6258bad4d2233cad5510cd8e9eeb06bd97
Date: Sun, 11 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746990593
