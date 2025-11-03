Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305063191C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762184394; cv=none; b=X/aR1qdC43vtd3TXjrbt9FCcfbAHwbMuXxrwz8O58WdHzvPbvMXKZ+T8Gz2d0O/WqhEYcoiGbafSCTgDP9AjpnwUABcpIMHq2MofVRmr6S+55wz9ue7FY/0wvPpFGVHAck8581GDfWnQFS2eC4NoYMnvm+une5nhhEpHSpxqZLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762184394; c=relaxed/simple;
	bh=rBrbPuJ7FdN4CrL33g1gjG+oyqMNU+9clQyWRXypQVM=;
	h=To:Subject:From:Message-Id:Date; b=c8S4YXx8r3CvvbMsv9+eiM7oBUVjlPh3OddkyG2V6U9w01fJcn+dDzkb51xpwn15lEtKCV3TxtBOPaxPATSGI7RibJdMCXp2kREjsCYZDgYlo56ClFcMXvswrXbMMJvHJDNSksUmB5TSRaDL+Lu6aJUO6XAYKarhumlBEO2PWGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekMLGg9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekMLGg9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9092C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762184393;
	bh=rBrbPuJ7FdN4CrL33g1gjG+oyqMNU+9clQyWRXypQVM=;
	h=To:Subject:From:Date:From;
	b=ekMLGg9MIhbEnyVBBw4OAoqpVOhsu33egmhh90Jz+B3ppgkqopO2LAKvPJQe51edj
	 ScslcEg6ujNE7qKHLmcE3hnz9SOoqac/Lwkc/HRsYMEKEAa5uxHeqRX6eUdkptvto4
	 nEMnFxr2A+HxBirtrZ2Bu0d7bl2ShNHgh4v9pfqu7nLj0F8jJNC3sF7gW2FOJs7qxn
	 3sc1t8klyk6PCe76XPP0NmByKum2aiXRqD9YlRsMc2QkB4Dk97f9C8WJz0FraLVjiv
	 tKqejdkC0DRbute3ieXLUVaoifi+dhqh01btF1rcgGVO5uDRaXOOelEL9G+eLGOnoJ
	 /zZjtBN9TQk/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D695CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218439363.13276.7413900155474308526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a43695894cbd341c6256704ad13606fcba7d0c080842c9edd0859dc0828c169f
Date: Mon, 03 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762184393
