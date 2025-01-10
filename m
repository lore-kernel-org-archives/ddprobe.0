Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2880220B1F7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736489154; cv=none; b=e8F3AlR5p4js8BonJ5IjhlCc6/6YfB1X4b7o4jiwRKT14xWxEFiVJBuY9u6QUOBE4XFEKC6/LFTxAT8otG/Xi2VNzuVY1/3Rn44UvR7mM4eYxFqFetPeU6b+F4fMLMXdoA93B1Ddd4rYb3dAxdihkhUrKUwVPn6IHLRWSzTRVQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736489154; c=relaxed/simple;
	bh=uwndAOrsOGGXm38FwjnN3a7CsjE31+IL27pTxO5MXyE=;
	h=To:Subject:From:Message-Id:Date; b=YmpB2WQo2wz2zboeHKTgZTof0ukuqjGVlNX9/mqeqArv/jDPBhpq4/iwdHychYivVfNlZpsjxuvqWOT2M7GLd2hh9XF1D749lT1o/XwWdGO9doa+C0z2cauq8JQ38+XMZV+Ra4uljBxY+LndfqIHAWbAnjXRfybZyFcuoLUkSXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aod62XsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aod62XsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC92C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736489153;
	bh=uwndAOrsOGGXm38FwjnN3a7CsjE31+IL27pTxO5MXyE=;
	h=To:Subject:From:Date:From;
	b=aod62XsOnE8zmDSCToeH0XKTCCxS3lTshEqwaqqnvi8mrmIe/yAe4hfbInKQIGlWP
	 VIiUODZhnmRH15S6WSld0gLPnqMJDKE25J4ExSJRceI5uyFBRVFKgj+kotpsfDJKO0
	 LFiT6fn2Pjayt0QMkNg0qaWl/UMYkShYjjOaYR2Ivmupu96bgbECv21j5iuNMTaPOz
	 bdeKEJ8gIszxnIR1BU8qTGFCEHNM6XdDD6aafLPnp4pmlWoIZjAfBqUUDmt9m+Vm4H
	 yT0fDIggqpEFcOLglyfYjdVh9WYgvONle0JQkTQGHih0tzXhLgl6OC85bCF35sOP9c
	 VvfU1iwo7JZnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94778E77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173648915359.27755.4119447538995246429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236cb529e9572c05eab992b66203480be181917ff33375ceab860cc968649cdf
Date: Fri, 10 Jan 2025 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736489153
