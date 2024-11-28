Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF3C1B0F2C
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732834554; cv=none; b=CO2Tb041KPeufgd8FnUic5shAhkylF2hP1k2VmxSfxIg6abMxbvvyqcLdISS5Rpytsq2zpngrKzLz0V2hPfvO2o5ul2BbmvMCPVAlTfVYYxiFK4Zx8uL1VMP72cKvsI3pzYhUJVJSIQetd71usoPSLV8/Q4dAGa/EUjP5lxTYDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732834554; c=relaxed/simple;
	bh=s0VGyqkBCtqgiFGD2Ugf9/9zu/ueptBlXz/Knx7ehB0=;
	h=To:Subject:From:Message-Id:Date; b=MF7YeZCSu7ZrxHeSdmoJ1f6nJcaVe1Iw6U/Q66INr/FSNj2FZT9e5neAWrh5SfkbnFZnz4szZRjNGYKGHTxthMTcxOVAFmsHQfuSXQeblqq6vbqveUAWWNtuPWaY2uls6eNTkeL8sSzl8+Snb/mvKwzZZfGKeW1+JaJIsDLYN8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKagpAhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKagpAhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE278C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732834553;
	bh=s0VGyqkBCtqgiFGD2Ugf9/9zu/ueptBlXz/Knx7ehB0=;
	h=To:Subject:From:Date:From;
	b=IKagpAhz3Jn9MEluP1+2Ha6U0QLGGjD8mKq9dWuJPZMGG1Sds0I57W//Zhr9suIYh
	 r/f78X33P5V5SBcd9ay6pPml9FKZHcezH/YS2/j8+tJgLFi/LAkidc7CH0uIoq/Wow
	 oSFmmV4trEPHVBX0tX+/XD8FK8DQQfrEZPB30PaOfj0UdQjERujnjqIXYBQvLB/VaL
	 W/2hoKaloDTIAODowgkP0/JEAfDsSffBkCrZoyoj6GFoEiJQaXXyVYnD/bzPUnqUUX
	 UXXYd6se1YoPrYuAptbCbTX41xBgIPU4D2/QRX3m+eukfNIJ/1vrPRB7LNJKbG2vlQ
	 M8y6jR3LafEwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A3CD70E01
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283455360.15137.7814828821521933163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12662d6f787a9d0a1d382c9c0dc0ca07d9cf716985229a7bf941d47f7b4484ec
Date: Thu, 28 Nov 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732834553
