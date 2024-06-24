Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658621BC20
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719255143; cv=none; b=FqkzjFfZtY/z2g1K9zWarpyG5qtUDhU64UVP2VzDjmzwvcpwJqMRYaGe5vz62lJMVaTEx3GZ2wCaiFHpD31g0+0Y+oq8ghZXPE8G87EJv4WX+kykCfpn1elPBlaD6JzQmo6gMgVJhSqo9eoq4UMLwghG04dcIoZUH9maUWg/lE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719255143; c=relaxed/simple;
	bh=qXYeZCK5k005/HLcdV6KFDQ+Fs7cpreenzrUDZSujxY=;
	h=To:Subject:From:Message-Id:Date; b=bpKx6skE4jwT/pIhBnBNHprpYl7pwV3XylK3CavdkoMzvP82dJkudmk4Dxa/tNoz05qqy9nb9fL7jp5usVOgWhB6Y0W1Z1QXwe6dfNEsVORswAduhKOT1zWy6WZFAZWz+HN4DZHk8FvIrW03h9ypQJCEg8cHS7A49HyQcAFboRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqL2lNUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqL2lNUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6BEFC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719255142;
	bh=qXYeZCK5k005/HLcdV6KFDQ+Fs7cpreenzrUDZSujxY=;
	h=To:Subject:From:Date:From;
	b=fqL2lNUoHqPA6eWZmfozLQ1b2BNCZW1OvLZ0duKu3Guzii3MyjLB6oNMubmnH++YI
	 JK9OmIpY+aMMfyG/l9X7yv1MqssnxlQE7Q/z2lLypswq2y1zRxFXhPuHMM/1ApYREW
	 Iu4WOIeqjvVVJJbkZbgSJqWHHb+FWTJfUcDkOcmY6d1ZDbg/kRZstwXjTbXHCvGefl
	 Ipu1FjjqW/+AKIQRMpioOuukoJtQBsi8sROl7NjVJ6aKe+qPhlCCQ4apzgmDd064pc
	 j5vfJ6e5f1J6EK112FGRX6U5UhuWZaIXpAbxmP2FaxWHx2v2vgZEWsiPLyqkcnhfSn
	 nnA0Rn9ppWYLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFB0BC2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171925514282.23009.18340551618333936073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68487640794ff07f7e6813bf7afe4e4a5e34cc755936c4b193ea66c621f003cb
Date: Mon, 24 Jun 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719255142
