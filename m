Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D96F1E8836
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762154994; cv=none; b=ZDD5Fj6PO++VXrfPmHm7/f63Xys98u6kv7axlzEP8/cj4r1J/8LEKg/yW12AFVILHKfo5rI3XLWk/y3iGdjODB3KpJXGP8PUW4GtQYNhWMyygcKkVL3Rqj37MJ17hGtGD6fBzh1ekhYJe2fqdMAFFwRpxnS5C5FHLu56wbaIzz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762154994; c=relaxed/simple;
	bh=XPhxSJ/UV3ongARR3ZoLrP+HcQKIAzd5LkZ1T83sM/0=;
	h=To:Subject:From:Message-Id:Date; b=scojMEl1jPIVBKWv6xyFscBljA6tSPKcLrPJ5Fjsv0WzKc0i7vW9aPN3HggclA+gDoAPmS79LLFG3dIv7Vs0rSfdzS8vvA2UU3Liff2I35Og4FUZttu92yChhtwDhwtrkq4XnrI2Mq9pKrhDKg8b9FAlAutxjdYcr2zDIg3rZOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kz6sycU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kz6sycU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B83C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762154993;
	bh=XPhxSJ/UV3ongARR3ZoLrP+HcQKIAzd5LkZ1T83sM/0=;
	h=To:Subject:From:Date:From;
	b=kz6sycU9dW6GBaNedxZKlaX6NPNO0s02pUgNnKNjCpdSUI3TIKlfYSFoMQVjSnomz
	 sWKAV51dOxw880Ygl4wOqFNwpnIb6Fk737vqBxFKbdzkep9heLp7XVCrPhlBl0KRau
	 wccb0nJvnv3t2CiRzOr+PWE1CNTkegTUHNwPFe/c7otBsz8sA/wIdIzjkQW22JFl46
	 +lNR3503BYkp+rokBfeEjNwGRu56kC87MXxzhNINWQXiW8lig0/3FuPgoQWfOpKgrf
	 nQQi7+JzyP/GeY13lMZWaaiWHGLkiXGVcwtM+99dsCilXHjK3W40eOWPj5N8/4xxv+
	 vczRyf5vbeAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9233DCCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215499357.20633.9253148243331045298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db486dd688894ddf49e45fc9d6400b5ef0f0753db59f33ae471fc66a1d9a848d
Date: Mon, 03 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762154993
