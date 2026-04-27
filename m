Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1645330E0E4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777292254; cv=none; b=EZmnm71Vi/i6q/UfBzhkT/b6cVjGPtGVziMUPYNej0p0kW6PyVx5pcEwmPAymD/7F6SImjmRme8+ULZ3o8eQA3ePUo/30aZOqjZIpkNs4bggFZ/F4X4v7+ABkhnTCpzZAIQQkeCp+Qtikst5Lg/kvhxEm2M9EEUrVEvOBkM/PmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777292254; c=relaxed/simple;
	bh=gexNPd/5s0L6EIlbvkcCHmMqsyudAqkMFGI5mK1WspY=;
	h=To:Subject:From:Message-Id:Date; b=kJktcUEdTSH6EtCEf77z2RLqIRLq1UG1aZrAfvmP3LOeE7YsJRQ45LLuCgfvYsgyzczai0Qax3VT25BA7cWXH/i4O5W24sh/nWQudvAUcYgM2bGtqHtjlisYdW7wHrw1/aPGopyuxMDf0Ml029ITTDz3YoGmyhLYNlSx0HQbRPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6F1Fl78; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6F1Fl78"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEC7C2BCB5
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777292253;
	bh=gexNPd/5s0L6EIlbvkcCHmMqsyudAqkMFGI5mK1WspY=;
	h=To:Subject:From:Date:From;
	b=k6F1Fl78b5t7/yqnofycaYW0bMKvBrVFMKWfUpT11XJX32aNCstg52y6xanN+Fv1N
	 PGps6dEGTi/HjqGhaMM/yLrasWSXC2mqAQE/zWM6EMn1PnebtmtqD9xtyV/ltxgYfj
	 cIq1Ikh00ZIwiF7VEAW5P44YGQyRnA/4h8cq2FU1tTe8VaRQUtWr/ciUn8Qs+DQNCj
	 YmVpCeYJrg2LJ7rJ6SdHcVz+ZOwQa/RQujSmkNxT9ZklpjEjP+8okPAnRF5w+XhdFY
	 lRVXds1wwb9DTduuBnKrVY6TBur8v7v1edGmAPv5jPhH2rFGI1QMeygx60PZDH30Um
	 x1BwJwDqeGgwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA715FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 12:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729225368.17609.4368376232270417391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e941c90e1ac008b7f465108a436fa3b10f57beb506cb96c5d7800f05d5690c85
Date: Mon, 27 Apr 2026 12:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777292253
