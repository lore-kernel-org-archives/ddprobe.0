Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D64AB3932FB
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776295653; cv=none; b=CubxSY0g5HHtS9q3d2Feh48bkXsRmH44kV09DfidgSec8qm7rZzC51MnPaX6Zwf5dW/DbZZMQVrEiZmJRjwXlsvhy+mJknSitNLgJgOXoJUgjcYw6iuNXIyHjemOCRF+3wsult1JrVrbI5uiHWM9FGugYpBsLPPP6tjv6Wgh3U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776295653; c=relaxed/simple;
	bh=D5mWZTaAKIu3nhCmQQHeLfPiWnLm/W8esA+6yGj6v88=;
	h=To:Subject:From:Message-Id:Date; b=iXkOZvgEowCw3tA6W+GTAfia+wrTxTtYitgSQu2m0ZgnS7kEh+uu7obA8qR8QCbNN+SIDPXoB3yzUfnkG5IGBH/V/iudQCwyf24ZG1PQCrW1DnAW7o/bD83Z//IB9f8UUO8uqKl5oBPuoTpHwBJxzYlpTdPxfyPe6RQwpxKdQag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UBYkJCsY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UBYkJCsY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9879C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776295653;
	bh=D5mWZTaAKIu3nhCmQQHeLfPiWnLm/W8esA+6yGj6v88=;
	h=To:Subject:From:Date:From;
	b=UBYkJCsYIPXTBMW47RK7yU7Gc1kfk4ZpsL1imQfbI2VML9AayfGXBSV4IaEK/Zs7I
	 LVTfcU6wt9LKK+UvM6f4atdVSFQN2S1cu8gyqPoJ0Z6Egcs5n49jTukJyW/n2SmnKU
	 YYYsewWO/MKgArrCvAqrXX4OIEItUi/ljjdngLdpABlCfNIPRo6ic+xjQ3czqsUGI+
	 NbSd1JlzL6G5qfANS3ilWOC9xgFRPBF1tyMFsiCheS+vULweN62a1mG73IoTzkL9N7
	 clM0a/LAF6i7Pzw8/kSTn8swlm1r+NrnF09l2YZTEvGNhseRdYNQcPAMz7eN8S09Rf
	 WkXXve55MD+iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EE4F433CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177629565368.10106.8755557250172668065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b1be202eaea1e53a7ec6e999080d49b8757e15132f5e748e8c0927f659a720a
Date: Wed, 15 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776295653
