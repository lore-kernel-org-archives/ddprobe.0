Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C51617C224
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745054994; cv=none; b=izryV4sfH7EDbgq27mux8TviBy80ouxw1gS614YfWvpWZKSolTDDokWWHIboWuf00190CLGigHeSMN/oZ+Gt5b4OumloD7AhDKGMmcKVXx26T6vXOeDMrU4bTTx0/Arv+7aSFFDaCqmK4R411IrPaufyJFEpklj4G9Qrim8VsdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745054994; c=relaxed/simple;
	bh=+0WcOLimZObfMlEQOUycyHAA5iG0a9i/ZpPzU8hAmPk=;
	h=To:Subject:From:Message-Id:Date; b=FsvEznSyJpwxHzxBkQNwO4PR+QtYq2BES2Orev6p6ZLmXl2SL/9M2bHa6AGcvBg8yyMYm3Wi2LV+tu8Isay/bpnnX4QNw08GaSZMk26CkfZmXJPGs612i31YFFSmv4p6MukaGO9E3SOaSMhyP+HBl5RVs6tBPL83n4AvwGdDRlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/z/tQok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/z/tQok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCCDC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745054993;
	bh=+0WcOLimZObfMlEQOUycyHAA5iG0a9i/ZpPzU8hAmPk=;
	h=To:Subject:From:Date:From;
	b=b/z/tQokznDxVa90ssRkpcg99damRbrUyTLX7nRqn8HMqexGORI7azpnHPKMzAGxF
	 28fSNg+Gh1B9/75T/pR6IyxOOKPhp55tanYS6xMxwH0zF4I0++3gSsWIkilGi6WCRR
	 1XvCKKEfdKsV1Zu3260nYSZ7AWvlIBSNpEYU+eVO/AXF8TGSVG4VgZtskOqJMxXBWn
	 1IStNVOF6ob6yzp9yUh2idK/hU+8l37Fr7kmIGcVcYFuUaXvNXI3ugHfoNpsqsYRrx
	 jHHPYAH68a1HMllV1TvdUvXaKGWQjwtDKtFJ3nbsZrXwPj3pEUe0WRIlpzT7r6X9jt
	 YUSr1qRe1Bavg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E42C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505499362.30252.7102707050870153676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cda92f37b42439e0995ba1ad283eddea7828857f84d43e6bd08c9313efb3b80
Date: Sat, 19 Apr 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745054993
