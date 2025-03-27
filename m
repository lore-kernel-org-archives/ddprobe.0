Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571A854782
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743118194; cv=none; b=t9CQlCtXrPFou8oGyjwNwaRRNS/MHms+gsEYfPLcZ7JtlLsVLabGgWHTyBpSv/SgOln5SeWsf18HWIEh1J+4Xmp4uiLZdhZNmgzoOofislnV+AYvktnYoRivL3fyNkE6Qdz+CJj/wZgbZ3Opb9GbzvNOWM6LBQ0TgWGOi99U7qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743118194; c=relaxed/simple;
	bh=gOT/PGZvHYO6jwkKUtBOdfbJPyV8W1nJ3AlpkFArC8I=;
	h=To:Subject:From:Message-Id:Date; b=bGefZT+DVc7nb8Q30a/8UDG3zuvPR8OmHJWh5lMEh4U2FaoUY+lBWB7MKOZ/uWEaGLjQ5UArzvyYn2nEt/Par+jtInQK9tnXxZ8NYWbQ36TjA2+zyjTIBx1DMOf0Li1bPDIMXNKPN0MuINlBAq/AaHAYIqxm/KAgwVeB5QVYqzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=me1Qv5DL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="me1Qv5DL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1C98C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743118193;
	bh=gOT/PGZvHYO6jwkKUtBOdfbJPyV8W1nJ3AlpkFArC8I=;
	h=To:Subject:From:Date:From;
	b=me1Qv5DLNKIc7u71Y7Z+d7xNtjHkHgwaLyvetCqgf0a/Z7Nt+1NFYFwpc8Sh1w8a0
	 ZhS3eRA3ghA4TdN3DQ/qPUlY1xZplNhJ7F3XJUrFQBnlN3/bsTYBUOdOeq9y8S31l2
	 9AJz9t9iw6KKmy4kOQHuRGUy2eakCQokf3Hl46zWmNonU/AC3AfZbrVvvraMikw2bT
	 ei9ULxrLy9IYRoBr9+DH5ozgU1LKKJDDS46jh6+esiLDBIBxdyJWTjWkp7u0vwK1Hy
	 HGO4WuQWQchz1IlcXbwfz6HbvhaEQk7IfjCUnabVIaZYbRaeC5332T2o/lwrFWh4N6
	 Ai2gB7ntN45yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72E2C36013
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174311819366.26281.9269677933664993236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a97712cb48dc42a9fcdfb2e1029d04f725bf4aeb7fa57c5694941a9ecb2a7e5
Date: Thu, 27 Mar 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743118193
