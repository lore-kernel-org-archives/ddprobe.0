Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E258F40
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753137594; cv=none; b=ArADSvj4xP1veQ/eFbFccKL9DLIhPi81pfbRuBasSveHZQ2GFYPpRAawI+4SS9m+wW/Dtb6LvQutkMtqdbxoWiabA9ib+8tGcjq8uTkMBy77WqxtoZdjQFXIQ/Kp6hxbe0x4amoeCIQQfOD4GbzqpQAJXzSVm7v0BJTLIKG15lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753137594; c=relaxed/simple;
	bh=WTiUJaReU8Hkgl1U7j6wxwC+4nrU4SHeH2nNz4l5x34=;
	h=To:Subject:From:Message-Id:Date; b=ecaFWAtD5WEw7sTkDib6h2J5WngEs9RsEeCQwhF/krzYEDsnkF5Cj008Hb1ajGHd0wD5AKG7M82QvifbCFdSXURhhy9lQMDQhUGYJxiw6MSgjYyDKuTQfXjvd0rxl3wbZOdxVv+C4+MjHiTP7UiG5KeNoVcKi9f6l9jsh5zq7i0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bG4KVl49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bG4KVl49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7752C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753137593;
	bh=WTiUJaReU8Hkgl1U7j6wxwC+4nrU4SHeH2nNz4l5x34=;
	h=To:Subject:From:Date:From;
	b=bG4KVl49mFdLOa25frxV9ie9+bG3O7saeiubTTSSwkhj2leQZrKF6q6dqrgfrMBwP
	 601zBGGyxWJKzKvAQMO2xxVJgDvLmSM34qtkoifyutCDQBTAVs2DcWG+kdrOV3lHfQ
	 yKPuMZrhofkoDWysmOFyxbd4AUItVHf4pk2kKv41G5OHsTByPT2dAHXcz07pZZ9XuW
	 N048mw9OWpzyHmed7mBOniX9bxzHI/SoZ3hLhPqaJC7zcYDy2ZtScliuOYnuLJo/mG
	 G78IErjSLfGUeAlSfXerVlJjc7CWTj9Mfbw0E29+F3AW26U6RO9E2nDY+ztr3fttNt
	 nQ4zKwkMhksmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92165C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175313759357.27581.18223409510838784853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30bdd7977f3506866e48ee9859b4cbf555af3b4f166420392b778e67dd6e45fe
Date: Mon, 21 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753137593
