Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547CE1991CF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732878954; cv=none; b=b4zNnjp7pMnHY9rbBzT277oIOBpCiwB0T5w7eK8xUjYae0srUUnWSDTZK1satOlXqGGirgUJzoiMvtBMoQeGH9dwoK6sN5oYF4bXjXKbgM+z6s1s7p9vFlQZMAimFMatME9ur5e/jpfGhwED5u3uCH018OVkyJHMzL6GQDJFjns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732878954; c=relaxed/simple;
	bh=79ywiW6ZfF8Pi1dKPhWiwiha44CmC+cOnD5itW2LcO4=;
	h=To:Subject:From:Message-Id:Date; b=Sp3pp+f3n3ewO6Ucam8QpFom6kH7XQDarHms7JganWCDUJk+v1Sr5UbRBKtV4MsGq8c8WoUY5Iww8rEQZfSPM26b7eQ3bo2pzdwnTQAbyC9NBR8X7owqRhpKhezLMHEr+qhNK1rFaX6jdKgWiSAb+NRIW0PP2aOQyIneHKnvpWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtIPuI40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtIPuI40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B376DC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732878953;
	bh=79ywiW6ZfF8Pi1dKPhWiwiha44CmC+cOnD5itW2LcO4=;
	h=To:Subject:From:Date:From;
	b=GtIPuI40w3FxezwEf3/7HV5y74dqIH6c4g/XoHkQtG8nXwek96mtzKcz64B9C9Whc
	 DbaGRJUOqYLJPt9BIY5Yy9Wx3dx0vL0UpMDNsq675gW1PSZ7LoEX4X1AfWFQHYKixz
	 q8QbnZ6w7JvFVnEM9k1eDs1/cIdoQYlcVgm+0cIKF8hMoMHqjLa0Qn7CoxF9PZceJ6
	 4n12HP1Zx9JH0ljgadmOLKdGd9G8V1rGoPl8eWNt6IkYkVOO22JsglLGG+xtpNRmVs
	 HlbRhEX/4XxrFdVSz5ONTtY+oKwINTu41KYCBiR1Wcvcw+bwIVmum9I7kRmhTLqK+T
	 Ce2/Zt8uJ1uMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C5CD6EBFF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287895359.8451.13539663649330835181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf89f25154e0ae061512450ade347914a07f8e42a6bc14d72bec8be5e65bb6f5
Date: Fri, 29 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732878953
