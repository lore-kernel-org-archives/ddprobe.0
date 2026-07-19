Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B5743F099
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784420914; cv=none; b=JeHICX8F6c8FHMNoDGB8GF4WhkxH/Gd7l3eHfeY4TAX+N1hEosUW12InkFzTiP6ikiRhOUs6ESy7B31YSxi3QXkb+Fd75Dq5FhZjkKBnHfE8GyiwwhSRxISqiH16LsoVe4NwXY8w3mjcApFnfU8dA/mAlT0bdLblilul4rVXAmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784420914; c=relaxed/simple;
	bh=WbklVprPc3yHRirbqz+QMp7XOOxyZTc4RZYVKlWWaC0=;
	h=To:Subject:From:Message-Id:Date; b=M2/90cyRJrfG354ecIFLUEe53VSH8jhcVNuLk9CLIa+MbRv7VqAvQGibE/nlFN+T6qudNS9D/6k61bNdGb//Vxf8YfJB43KoYtoDAyLjHVUU7xKfNnNOpJu55dVmVPuCGNYtCYG4Uw98A3Loxhbhn32Wa6Qiu/F+KOAGxM8laew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBOokWu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBOokWu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E531AC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784420913;
	bh=WbklVprPc3yHRirbqz+QMp7XOOxyZTc4RZYVKlWWaC0=;
	h=To:Subject:From:Date:From;
	b=CBOokWu8EsFKiFpAzXr153h4xlwtA01ouK/GCuvjUNAK28/75r6VuBZHt/BMKMxuO
	 OlTylE+LKoRhQzlSZ2eEZnNEzC/VoSosUoO9f/7H/lEInrU5J/qp9R2AKKHoiDhQYk
	 1HpE51e69VUsu9h39ueIMjmBq4qyQni+jRCg06mEpBhNSsbaoDZZEu1rVHCN5C26cP
	 YwqI0C0n7UwCv7MvcHhUu3WTQIk0oc3gZ8XHDW2iJJF0G6U+ehjYhT3bRaBJx//n4c
	 J3HN4A8oRX7CPqjtnup/phg0f3PPxDZ4Su8tr9ySEsJGuexCx8QnZVx8RgwVKj4DBx
	 cqG4q1xhIjbiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB65C44521
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 00:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178442091368.5318.7193463928203128893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420511e654a2cba1ea22c84f6f75f95f55f8817e71ad4dbc5925d5126068a79f
Date: Sun, 19 Jul 2026 00:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784420913
