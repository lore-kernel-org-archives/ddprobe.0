Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2621D280023
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764043974; cv=none; b=cg0VBpMv6TAmCVzz8hlNhwnZu7O5nVjPu4GkaqI8aykzrGRpy17qLyaCoU6MA87Ez+FLJ3cPCSjYF9xlADYcApE9AF0WbubAC7/S6x25LTxZ5R72zANgdHNcY22MTINF9TnY3c7PvT+uXPpK8Oj+2Ld2CcdriIhfnrceq4Mqmno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764043974; c=relaxed/simple;
	bh=BASfWP4rOTLzuNRCMXelYgRuy010eYCnv5ElTDx31UI=;
	h=To:Subject:From:Message-Id:Date; b=AxXWTkLqn3md+SJHcxVFF5QMDHBNz8xalhKgWIPmPp6487cv2KKsA6IMCn3vEPjvPRnRW17vefaHMjIAy1mWeUtEkdK0WywC3MOkJOenTU7vWzM2uKSGgfMBGi1ZxFGwOLTfBk+ZwhE/L69KXwVXg4H5GcUJBTuJm8mnkIpJcn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qtdd1skr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qtdd1skr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3408C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764043973;
	bh=BASfWP4rOTLzuNRCMXelYgRuy010eYCnv5ElTDx31UI=;
	h=To:Subject:From:Date:From;
	b=Qtdd1skrfK5JD5nCXz5fhZCGSZS+ZkmxAw2pdQWZIxaY0Nhz4MkFzB5+vuAVV9LTN
	 PS22tqmsw/59vU2LTsTVpBQyvzl9DGeUtCpRxYx4CnortTFJKnknKIMpfQ0l1+aOOu
	 Hip+MTXRG56E/wZ0brV1g0CVN6x4Izg+vIr0RWk5XHL1zH36eZXjyPvmIZCYP2Dzms
	 KiczburzBZkvJFy85X2M29CyELXtDR+OL14kMh5WD/Pz/8cNTOT28TcSyy7EMT5dQO
	 PIJK1f0OU6Nc9BAGrEcoWHdPZpDrX1W56utqYWZ/DbKgVZJAAiUM/R8dIGUlDw7hVc
	 OEZJrfgkKcSkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94249CFD364
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 04:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404397358.23318.16946600173632652926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c12eebaa9030e34ffd4cff5930f966514709eb1474fb0f008b88c4fc938767d
Date: Tue, 25 Nov 2025 04:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764043973
