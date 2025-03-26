Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3295619D88B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743027594; cv=none; b=Hnh99VVltSoY9ZLVoQKwBGjFUx+VMXgiXHtiW/mgooBCkWlX3cTuiBcfiWD1IHS8g6vv880ZG2krjrjeuvZEufo6i7kUvLFfUNRyaAN2dyy3OcRnTgaY1K9itAZ033yj7cxAV2pjeaIlv6GDJm/+3Aq+TZOVwiqH+Zu7jRTRWnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743027594; c=relaxed/simple;
	bh=pcfWhNgXxx+ZkLONnUM/14CNq5IH/H4Hd4vmRjBDn4A=;
	h=To:Subject:From:Message-Id:Date; b=UGhOz8mBALRYEzz/CXqBu8h6ZY7c1xEiL+c9Ex4DZPIECR/NBIz88ORZQuXymn9efZLOPWRAespV5cscj46QiH+GInaNcKOA5SlXTF3SEwFYbI14KWiZyR3WU4KQa5sLKKuTihC4BFqCD/PQbrXFHcpZI4mDXz2K6K//EBS8Vws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRUZwVw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRUZwVw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EBAC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743027593;
	bh=pcfWhNgXxx+ZkLONnUM/14CNq5IH/H4Hd4vmRjBDn4A=;
	h=To:Subject:From:Date:From;
	b=lRUZwVw3J5YW+p0Y//SfgYhyjy2sa4iaQw6QVqThMm+/m1BjUIB85RcWB5ChGVX4Z
	 7cVR1lnt86sH1yEsqjrEZrC4yeqp8vO44R/IzYYSy41DATIUVA0V0F52bxz8kAMg+I
	 XxwwrnXIfrDsHbtm+DjtF8/14EQUC1aionnWWuJAOcKlg/dQ4M/MkaEuxjD0yex84c
	 T0Gkb+IpXKxLcYU2Keis/MGUYSu0ElsT2J8gIug2ReTKKTEruzZCi0CVREa37sFCst
	 UWG7e/1VYDD2gcVe5Z2nRkqZr1zV7bxtiiXEp5ym+ftMYeFU2vu16xCdOYJ93FbRLE
	 ZjCHN93VPTT0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1E3C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302759362.26274.703940336112550614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb096aa5b8ca0c89e2cf52e1c35a4959a30e144a17e6d49450fedc8cc71d04d6
Date: Wed, 26 Mar 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743027593
