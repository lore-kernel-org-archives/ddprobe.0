Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206302D7DC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764837774; cv=none; b=QVP5xynKwog8Uqev755WGMMvS0bzmn9h5pkQbLDGskndMWPyRQYBGrjp9w0Vpbs5BdciYMvSoHbMQAsmpacuvKIFOtv7UOSpZ4ZteVzq4WldgMZkeaXfHLKz7e1l6rBkzYoNGkNHyyvFEEoITUblJ+b3EtjbxXhMDKbc19mJmPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764837774; c=relaxed/simple;
	bh=SSVN4zP7Mtihctxw15C/q2q6RBlEaiJNJDEr4mS105Q=;
	h=To:Subject:From:Message-Id:Date; b=eme1dgVCErgH9JTWov0V7+tU5XmDUpTVwK1t6JlCGWur6Vs3pjvHMIOOPL9tA3jZyz6EgAwncDXQEtFDE6xtoeKKQiC0u9N1kU1FZFhBEzjKPmR/RyTNRItPC3unFtt88JuJUxcfM+W3RJtufsB8D+mi8Bxj1TSAz6JfLSPcP0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nzm7afNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nzm7afNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA077C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764837773;
	bh=SSVN4zP7Mtihctxw15C/q2q6RBlEaiJNJDEr4mS105Q=;
	h=To:Subject:From:Date:From;
	b=Nzm7afNvsHVF5X59WcAU61HkxPNtHumI1NyRVv8Ina1zc9CFwucMWo2ZkVDrEy8kp
	 U8kjmsYuEYhednC/QaPWbkUXCQfiBj0Q7OWxHFNcZWrkurXaWyP4GF18hHrVnCtCnh
	 86IWyF+mf4nib9Lj5bygvZ8WP4uij9w/WYYGr4MGssZTKVYIvs1RcZDgNlvA5HsU19
	 YBZqsQG2NpGYMy5BZ20a9F+0zSM4SJsAllm0EuQiF6HCQbCZxh64oEttynxjayIXum
	 e4RpdWDaJVaXiwOOR4FSB6nxw4qC7rO6j3BATWlbXfFcGoNYYgyOKDkEQ5ZaiV7z1n
	 Ya21chg3kk2CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970DCD1D899
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176483777360.861.7623516243904206705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67c26d0fef26f01618d4c020ba8d0da58242c5b00e1dcca15d2258d5a58249c7
Date: Thu, 04 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764837773
