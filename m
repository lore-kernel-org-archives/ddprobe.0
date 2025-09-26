Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1870F2580F2
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758887994; cv=none; b=HOa45N78Xnk4ZqN0GqdvixBjgAcfHBbJ9KUaJJs8jUaKcJ3VrY/ap5g9rJbz3yqcYcr8tA3LrazQSDGV8LoZdhlrlb4MtLl7y5dOq9X1x7cAtCIbk7CnFYopldJJjlQ5v8uD6sIdBvKgpr0LtXTRhKk2rnB5nNkfXtYu9SYKgO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758887994; c=relaxed/simple;
	bh=TklIj6SmeZz9ghray7dOtmDBQNytCqzCNm7oQ251ipY=;
	h=To:Subject:From:Message-Id:Date; b=Ofhml80ZyA/VKeA+/AoCZ4R1Qx6W1mZJow+TOyDOVaxM6Ibo2ryej3hjLAnOHoasBh37lfn5wrNuWeiMaTJ/ks4pIgm1O4LJtXqteNZSf9H4KNs11GCr5jckxggae7bdFK44gsiGS48W1PgL1YiG8HXyrkP6j6d+bg0pdYa2Nkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8dN2uQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8dN2uQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4704C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758887993;
	bh=TklIj6SmeZz9ghray7dOtmDBQNytCqzCNm7oQ251ipY=;
	h=To:Subject:From:Date:From;
	b=K8dN2uQzNgJGgbk4T5S29ZnSAAu523WEsceDJNTkATuqHMIsOhhxlR0NSECxoNSxl
	 pmSZ+7xuBnxsjH0DvGbOd51v+31oBGHkd1uR15uB+/QJ7n26MC8IVbOdh87s46xDLj
	 Cnv5ChDRNdKtIap8TwN/zrolAMLHUZNK1R087p7+1IOjmtDBpTNT1/8DNuAYWDc5yQ
	 buPHgUxd/BStwGxyN3TNwEZtyhe1p8MzJzS5hCoG+P80PYx8ZuZ7hxIhEtt8n6SU+n
	 VrUar0EFgGMFFUKcXk+MwUTgkfx5P3N3FVmQiCWvi01qVAdCxHuc7Ut7if1TNBMNas
	 lPnF9+5nuSdtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905DDCAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888799358.14203.777394977046070610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5c8a7f72660b56c33559f70df4c027aa1458ce654adfb2b5364de9e4553af8
Date: Fri, 26 Sep 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758887993
