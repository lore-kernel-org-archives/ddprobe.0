Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB1F1E507
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736004354; cv=none; b=pT42hErDTutoBp/AESR9XEjdsfUuXtzq5gBoszFdbIUrYa77bS6QiEPRQuxkpAYBSTMl8Yfb0J5BbgUW8yxPgRcAWRSDLHmhbb+0m+6UaAnDVN05hVq2dcnOAJUiqHQaFkqukpoHa3cUk5n9sTWi1gewYt+anK+Erft/Yrrj6Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736004354; c=relaxed/simple;
	bh=JrJuHxOe04sqfXxQTm1ll53ZEPfRXHgz//ugrOtU/18=;
	h=To:Subject:From:Message-Id:Date; b=X8361qu7X55nEPhxhy5PMmqGOf6SnCvP6WP0wkFQLRazMe/+YDMo4BWUVdeSBLxtQzC1xg8uh7X7MuG5hN86lcL6HdvrzCnjgrzr/GHKMnLjNC8dgU+dwp2JJBAgRUT3dwgpPgZQCfb+221oelW0QdTmLRqrJ6YG+KYru6/AZAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZiIeSB00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZiIeSB00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A1FC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736004353;
	bh=JrJuHxOe04sqfXxQTm1ll53ZEPfRXHgz//ugrOtU/18=;
	h=To:Subject:From:Date:From;
	b=ZiIeSB00I4ghcvM8K8f2DYzf5K9XhAQO0S5rWBHSpicpUoIMNlWecRQqtJ/7lFglq
	 OUGSv1fwMm68BmEDW5X9MCatGR5crO0XsdM2lRwB/UWRPlM082X5iKtfJzcxq/hbkF
	 jX8cC+TnFdk6OHBm4FS/8uniEtgCvliH0bkv2aZuQB1mflGbfM9LjjxsRYv58/FmNs
	 sF5UUsgwSpqXXhEzrPA30TcuR+LsF2fC3K/5hMGbKln5pVGjtkt69LtmQBkuzVcReZ
	 3N3fj5Vn+/v4tuiZ532lmFZ/vIAhC/WQQbqJU+JfPCgY2nOQDValKCG2qEwqYdnyaw
	 QHRAvYwuER/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FFFFE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600435362.19535.7199836861873320949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a80239fd0f02b92dabd97435b6f4022ba6dbce2c2ba1d9d0127e2dbef40d61
Date: Sat, 04 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736004353
