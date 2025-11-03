Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27FB2BE7CB
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762171794; cv=none; b=lJ4k9fkAYGL/trqOQnQDRmzW1paXFuDO8gg2ctL5aZnKVTVEMYbwa7D7s/0D8VInq9jPJzyl/1hlrrXiTmL5g60dVy1Gfri8fMsH77lCHArs+1+uNtVcoot8nxiHibQy3E0BgVvuDQMub9fwIJgXQspO2/5Zwm0Vs+JU7aYzS8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762171794; c=relaxed/simple;
	bh=zlRSKjMzoy81RMMF4EeKtm+tBFP1uqaFShB1AnnxljQ=;
	h=To:Subject:From:Message-Id:Date; b=nhfvybjN9QXbbf9AQNNUVtmaIgzd2xpqJgQZzAIUXuWeDS/gDUBlCdBw4uZuFpyc9QvT1F+X4ASqfCY4TFX+e9czfjiD9AJ4yeLuswlYUkx+SSaXqQ9YKEdEY2Ya3Nk9LkI8y9ESiBCRKBd3BlpwngOq7K+Ko1woQb/h71RctgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3oJk9mZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3oJk9mZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0DAC4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762171793;
	bh=zlRSKjMzoy81RMMF4EeKtm+tBFP1uqaFShB1AnnxljQ=;
	h=To:Subject:From:Date:From;
	b=A3oJk9mZ0UDA34+GEvw15pWLqSYX3iA2YTvLTxOBZeWAmV/tlK7z0R1lIzBcJllc8
	 jgl0gb6I+h42TQao4SLxNdm+iM5sy/rc6dGUlMytWLLxbnQ3TbYAHwXmSroGPrzUEW
	 gu4WCgzlXQDZ8ToEnAjK8G091Yz3AAFkqz5yVnHoXBIKUfsVNM2/+bhn2QMtHy6nt2
	 Um6yocpECd1NIezYpp1H6GZQAt+avs0Q5LQwOa7qxkkhESTZnr3j+ZqisPpZbDeC9l
	 /VKzIOw+mUdSsfpBsqI7Rnoyd2/ST1U160YtA+7EYq2bEr/tLvTErEbSIWoN2J42z5
	 SOKfAhAUaLwzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E764CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217179357.29040.98422359429763867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41574332621cdf78b654b2c95ffe5abb74798ff0ca221782347e12b7b68c4501
Date: Mon, 03 Nov 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762171793
