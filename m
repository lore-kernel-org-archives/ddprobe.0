Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF39202C20
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741078734; cv=none; b=Lr1b+egNqWIMo0fwdmi8oM7MWVwXJQUcfXcbkhWbvyuo8wllIgn0pmVvINp1JhA494u/iKD9jRLiFOwqXlx0U/yL17fX8HqdYYtI5CopssdiuMPw5Js24AJyVybvRsV7wBN4sDD+diZb1W1fqsptNwzzeq0gfiMikW6LuOIRg2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741078734; c=relaxed/simple;
	bh=MHiGPN2jwDgUbW7Db2P5vOSx029aaqI0fbihfzDXBTY=;
	h=To:Subject:From:Message-Id:Date; b=VDmJ4gdJFufgt7VH3B7tUdqA1KH937zR/1dn9jroMUXhhENxo33RokwUL/QQwbRuHqXuL6+B3Y0OZHMCJffP1wjStGXDZPVZCNGwHq/KR3oyFtXAjJ/d3l9TuiekyX4kegcSiKDaTIrM/h3dJXspeif+ekm4vjlxHfQ6tflu8yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bEnr66+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bEnr66+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D41C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741078733;
	bh=MHiGPN2jwDgUbW7Db2P5vOSx029aaqI0fbihfzDXBTY=;
	h=To:Subject:From:Date:From;
	b=bEnr66+6w809rjj1Aoxt7EieX2QSSySgmoLQIZp/3p4Dv5AXyzPn3cpBuDyEfg+14
	 Fr/SEE5c3UCNTg3M5w+OsbAYmQyMTjlt65kJsC3XuR4F3aFSW149itsrp+0zHcqjHZ
	 KHyoNp14msaw+8J8Jvze5ZJSpySYVYxdUtFlbhTkg05ItL43gxAxIzlMKOKz55q5a6
	 hDTey3knNUmAoMFIPDYIySKO2QTLY5odJQ9BQPdy0pHKzlThyArq23NqZRCvgwiZIu
	 fp6O0qarplENKcBgSpPu9wrEFpaltH3R3n+7sMJ7Y88J15XNMjf1wIHdfpIDHPfrZ5
	 OIzDXQJTfs+uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B068CC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 08:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174107873370.9840.4797179791164087525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a9a60a53500a8b72407c2dc6508775063493c01850c35aef1c26b0ef3c47f8
Date: Tue, 04 Mar 2025 08:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741078733
