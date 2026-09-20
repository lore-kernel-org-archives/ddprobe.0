Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9EE459AFF
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789925434; cv=none; b=MXwNhVSSNY35ST+BfZ5r/r0HOg8+f5rU0tN7aqgSnUoajGsuFjVaw6a96tCYKKbAZnuaLCRbtzAGgMspO7DnvU+oh1KpKeWPCejbvjxDGPXMMZLO5tnESxohrbco0kbSWVjXYRZo2L/no/lKOUgjMhUQZgtNrUsF0qM+IRTFF5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789925434; c=relaxed/simple;
	bh=wfwspbfasl8LZZKAPZrCrA2YSaUcGHb2va8Dn4/0Xrw=;
	h=To:Subject:From:Message-Id:Date; b=iTDdjjVAG02rBJK9kqpEydbfudpUsfQGgmiZgEjtCN3oCHPNX/qA/e+qztOI4kNe3BXuKPnUQzGJ9plG9WCgmfx58SDRHep86gwO4F+eeDH8+ze1kmczyFrcmqXrGy6OGFkANv4Ultrh3o+4fCszWO4849imHPLeRaR+uYikZOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQXwiOFv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQXwiOFv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF17C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789925433;
	bh=wfwspbfasl8LZZKAPZrCrA2YSaUcGHb2va8Dn4/0Xrw=;
	h=To:Subject:From:Date:From;
	b=JQXwiOFvaimcAz7sO4VgI7UOKXbMNg38KzDOSFrqw5TO/LQlBj8/tVjvk5/0vFSgj
	 n9UuxJJsn5uhiUcrZ/zPza4bRUaZmfbzZQZwRf3Mnl7uLslA2WT8v4QRGTdXjOwyHj
	 07normHBE4DDeqfXA1++I1vL/5Ay9S3kNDAPZsA/KmIPJ+xUAmgbUIYx9ePPyfDwUT
	 i/tQIihVSjqlWae02bsgvIbPbH8GAR0Wrr2+K0eiblq8rFiOSlPx37DtGUWXcYfzWn
	 ipf9blbs0DZvwLe5YKbZfxXVbX8R+lF6Si7J//d6IOpohJvtTug+Aj3KzHi82fEUuA
	 qKowBfx2poU+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA9FC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992543368.8254.2303804395938509626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a1bd5e880c90acb0d1e33912c4d78567d36992e88cb2b133b4db96e1e6d7e90
Date: Sun, 20 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789925433
