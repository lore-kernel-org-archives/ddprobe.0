Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1F4139E
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745704194; cv=none; b=Wso2mZfQFfbyrYAN688eTuZLFHd88gDGxPjAG/W8A1BfTiLyP5sGhhQxhRdCqr53drI64bNjV8tBWSud4Q8GfwwahuhqCprQ86sDCsmlvvD0ujy5V7uym6bWsMY5U8nG6v5R6aoywUc7MlI+VXLtThTibKSPgX4jkifmIdoMLLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745704194; c=relaxed/simple;
	bh=2Q3v8KuGehxz2ETlGiFFXvddfngYfGce7+SmDw4wNUk=;
	h=To:Subject:From:Message-Id:Date; b=SxGX6nE2iPXb2pSSWDJKXyp2BdMDBJ/7CpxZnKHdquwGcpUiWas98Gih3pB7IFYGJw8o4OTi9jPgYb6DvTsY48a4pVXzrJdl3DmOdQtZky86poNQWrz5epcrHtjhoqynh+6czktddDtLrQFS/t69DKu8FpisPJdO/syh5PHASfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E1GqRUTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E1GqRUTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E209C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745704193;
	bh=2Q3v8KuGehxz2ETlGiFFXvddfngYfGce7+SmDw4wNUk=;
	h=To:Subject:From:Date:From;
	b=E1GqRUTcKIODWERxCWhbaS4KiaSYOjdw8KXED6nqcbNxyiBgaPDKuFIuyhd0EXi9y
	 9B+/BTg0gd6JXfdc2V9JduY6H3XPCd3iTpW6IuUpxh9twvKTsf/HDOQhAqThWQRYdo
	 us+u+zgWvFdNhB0PGM+hCK882lUAw3gdWbstggVJLYoOAmUo8LM/8ZPFgSLFeOJ3De
	 GhlMfjvbwlRuIBNbhwZuQPRZUZq1wRumzJg989GbiRteLnTeTYP0e8gMRCioEBOOA3
	 balr7LnPpPYnXxcLKY6ATmPkubQjFxDhhFN9trWeEL7AzbEDDcLUgWz4bYzZuwQfyF
	 7TBobuUknQ33w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0DC369D5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570419358.2901.217918378067158832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48f74074985209d229c0bce5ca8f37530bea2fc816debb0b166043a5cf89f9c
Date: Sat, 26 Apr 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745704193
