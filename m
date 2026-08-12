Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 825E8469821
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786547434; cv=none; b=AXSmv17jUCVRIEFEj9glCRZJXHr7Hjj7JbUmuEhsmDrHGEsj/AX6f+SHfQk2WfEzPb3avCCR6KGpnkajdWx9SAb+U6Y9JQr4L1BXiwhw4bpqTzgf+9Ei3s6pVL8WjCXK7a9JrxNlmrzVf1KLGH51GD8x7fFPZsvD5k7ELsIpez8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786547434; c=relaxed/simple;
	bh=OCXyp5YucrU1zl1EweC8Gcq2BRCs4Q3nLEwfOxE64D0=;
	h=To:Subject:From:Message-Id:Date; b=BKfDyPae+xAFBVKSYgeGD6HSmQfw0s3HxBWKf4nChKDCYce3vuK5rjJ7+2fiBp/2xIUhr8qqr5CzIPrvHWzjCuUWJ/FGighKmtrnjGHZRYDSt5D2mU6gB+KX0TJbjW8tAzs1WG9Bg4rRciP0TMs0wzKlA0ob9OKEN0x9Gw3db74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dA/IidAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dA/IidAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6ECCC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786547433;
	bh=OCXyp5YucrU1zl1EweC8Gcq2BRCs4Q3nLEwfOxE64D0=;
	h=To:Subject:From:Date:From;
	b=dA/IidAN8lLkNo1oDm6f5FVhsy+rImmxLyezS1jPL0ejwAHcvAJtX+YXmhyWikAIt
	 4GbBhKAgbNf3VhUJIW+fea+6ga/3Nm5SqYGjDwfRXNzhut3QSvJaMzzHFswlzdxIPv
	 9xdiF9+fc1HH6QlXTdycU8HxcmQ4IIHP0L/RyTL/7UcvVNQJuPSQgZUHlM99RFUVq7
	 g9+ih08P8SfTmtoeTsNuho7zcR0ek0OPU+wn/vZoAegDMLoLyRLQ7SRHbSSdb50a7s
	 re/nn5d0KiZykTj/JXNTYr0s0vnnsyrIZGi7XCHvSk9VA9p7cesb0iVq8Qx7fpo8fS
	 snSbAVS88ZAUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28B9C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654743372.12678.11921633560022690498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bda9c4e55ffc2be7b65f3951c9b3864cc681ec2612f5d90073c296c8ca78fa9
Date: Wed, 12 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786547433
