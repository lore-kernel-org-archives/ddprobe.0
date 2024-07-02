Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FA43171AF
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719913523; cv=none; b=BaaPyvGTlsgVeDgvq6FYn1VIQMRj/yYi2DEfsbfYbZC2lfkwsm1lnyMDUEsbDx4gaiuZdSjlY18qJxG5GE5+en3dJTA1tHSyjDlRWWFD4tpvUIBjpsMwqSaSgASvXw5/1tBnPL6hcN7pTGZIp3tKTJWEGmQQ8Wat1SqqqTotyeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719913523; c=relaxed/simple;
	bh=VwTZsMvz8cUWpnZnBIi8OA6id6LQ+OtWoW4TjFxiGxk=;
	h=To:Subject:From:Message-Id:Date; b=ZyVu9V0JvYAdKRKVJiHug0PPK7h0OpgQMYXR6GFF33kd7WhF+QU8afAA2twN5BZfETvTHmm2pHGeg0oQjpoMIcQtjTF8ap5BxSJWU+TyfL1Kf1EJbqgOdoxQDeBlnVNmK8Z181yd6qpvoZl9V92/iAJvsHKYE6E3EvNGk0HB0uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8Uc95D3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8Uc95D3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB59FC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719913523;
	bh=VwTZsMvz8cUWpnZnBIi8OA6id6LQ+OtWoW4TjFxiGxk=;
	h=To:Subject:From:Date:From;
	b=U8Uc95D3xEJIbq2qgeSPA0qXPAhneyDs4B/h89G+vAMX3XckJHicbwE1NWDjQ+Wgk
	 e0dosM+ZVlqa7dR2b3Z7G9R1rOYIyTorgYD1c3Ocpruj2q495O025Exj8NBiRtf8i2
	 UgkRd7dFZaxlnXWZV8pIGRFlP79LowoKXd5MWpPmE3dI7lPCv+T+FjYBIxiJABLwZp
	 H5efWxUrdHF2BXbg3UOFU31MWsfe4u/Z1+O+hyZC/xYmBRf+A7b/+eje+idzviZrgI
	 GGnNkR/1yauNh0RniyPZvCKdEnQSuiooamOxoEdoa02cVKiehmiGtDypLSbpqXRFUe
	 O/pN6YNxMIbiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6AB5C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991352281.3984.195261677693502837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477ea554f7fd6636e0a42d5995a4e0e601d86e0aa7904f7ab27641726a70d0a9
Date: Tue, 02 Jul 2024 09:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719913522
