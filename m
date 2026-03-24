Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6C523EA97
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774326294; cv=none; b=fREtFTuswf85BKwxwAE9jwDLA2VDMSbicCs8NW3c+6DJXnk+hvo0dAuZEdJ1uUJCJ7xZwA8aGybtcnEohcMSV5DYz5FgGrOqjfBR0reCgWTw7AwHdv8I1Oi9M7rcv8zRaALh/xRiwmJFYrAG12RMvxRkQRJskUj2gAK6+oxBNgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774326294; c=relaxed/simple;
	bh=d+lzLSyz+DY/RS2snmsESlBFj3mBumkBaem97McK0ho=;
	h=To:Subject:From:Message-Id:Date; b=OxBKbF6I0RYAPYJyMO1Ivr1I9pYtwVMLQDYVczUC43/VncDQbHCTYhp/CB61mou6MUXwFyxUIEvMPPlHflpMVa16bCW2pyNxll4znK5pl5okwQ0Fro0JdTtkLuhj/cpsgkdsMLwiUrU1ouBGIthBvLKPWIIbXPZOvVm+oQKhlUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyY6le3y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyY6le3y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0921C19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774326293;
	bh=d+lzLSyz+DY/RS2snmsESlBFj3mBumkBaem97McK0ho=;
	h=To:Subject:From:Date:From;
	b=kyY6le3ympwAf+GrNXhHIssAGDuG8eH/uKPQHHMy0YJ3X+8ytYR4X3yY8ckNacFs6
	 ggkFmleZhRu6h1NbIE1Kik9GpnogrIuKhaJEfofw2MMQOTVpsV3Wt5grCAKVXNMlXG
	 IIr30bWoGxenwhRce47lSgu6EHp6v7uqWMf5qN6M/0EyzM7/iC/dsJXz6E7gKRLF9V
	 lS7HZkJu5cI1B6dZrAULouTAtNTkZQSeBQXDEVHGejGcag2Bp8Kqe7O85NsMPhU+J+
	 UM7rifOgA3rmGT6Xf89Ta5aZYd1p1klQpThQ1HvWzdUeefcHF+b5ojLPCriwbb1Pxv
	 8z57QlVzhJYWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAC50F532D4
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432629372.32139.14460011603366258370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ce2b899916ddbb6e74606f6909ebc0a5f5a3520bf32f9de54b0e205de119a7
Date: Tue, 24 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774326293
