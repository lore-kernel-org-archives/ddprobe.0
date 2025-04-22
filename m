Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E121632D7
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745305194; cv=none; b=j3vftSp+qWY4Iw/edH94LGHpM7x8u0XtCXdRP0wpbdwTxcJ9RFxaXSV8Rfc/gUlHOtJCOONiiPuYlZlN18xUoPd9vACDF6qnJlNz6TKmL3i5h+pciZqIC24ZnAI9Ykk9gPjiB3oJV8OJleTdnzyA+kQbCmpu5hj8oYfw8PZP4So=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745305194; c=relaxed/simple;
	bh=0ZuCds6LclN9oUnRZJwc2cyMiKNnoW8XJr5mox00alw=;
	h=To:Subject:From:Message-Id:Date; b=E5TS0t4NwWSRZC5EEoxWOB9giLNENur3XIOowWNMS5ejRMQETTArQ306HceLWJRBY4Ef6gbRIMLgX4dlNCqDcCDs7rB+ZMB63ZUejk7JFaAbMD2qUlK4AtZMY5zw1HVMusoFbbvdxOfqAMfs061D6Pty0kK1Te8DJBzc21YwSuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R307t44z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R307t44z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EE3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745305193;
	bh=0ZuCds6LclN9oUnRZJwc2cyMiKNnoW8XJr5mox00alw=;
	h=To:Subject:From:Date:From;
	b=R307t44zXjavPMinyuETyh69+E0KQa0u0hK6dN1i8ECTV6Br4AWrbaGTl8ms4JVbc
	 JzB9oEB80OJ8h1D89Lri/w01PF91CaE7dD1t9Z+oeYB/Loe54UdPCsuKvV69wyxc9v
	 TxdfKM68Fw2bqEBcdNjFrR5v8JTOBeT4HDWr63hp0SA3DUUwLH+Rd3wvytYUsLuEqy
	 cuZf7B2re+cwpCl5Ch3S8aSEdh3iMVj3TO8HFUF3A7AwpFKloTRTUjY90TkyHjxMyx
	 AS9Ga0r2gTq4WSapqNuzb4IR8OLDWDybmnarUgL20RnbNmnbyJsgOIPn3pqN5PMflf
	 ABSLeIWKNgJKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B0C369CB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530519359.632.17278825875591587930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b3dd78bf814a5901977c7a11f16f6e514c99604164a2db54d70da766e0095d
Date: Tue, 22 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745305193
