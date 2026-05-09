Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E8992BEFEF
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778348854; cv=none; b=t8r2wdhbBNIQrICnaOb+oEAhUIX2EoKyFxFWyzf9BZ0aqRlH93KJYFIc8EC/L/8khQ1NxENwOLHnsg5TIycLplnHCqP5dTHS0CqZ+Hnd8/ST2Al0rcJ7vip7bYT9W7/ivRAe9E0umpjUhwIaOXbpr+4e0jPhYhFtu8bfFlTO544=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778348854; c=relaxed/simple;
	bh=MZZ/SlJ503AfzxGwYWR3FP2MDIrSZ9pOYjrf9g23bGk=;
	h=To:Subject:From:Message-Id:Date; b=i+m3slv7iw3WympeEKJKp2zdTmWq3lcnwqnUxQtqU2+tU72mqR+v8LQxCmGJpxj5jeShzfLgxYqAHnZK85J4z/1Zwvceh1KLUbIp7NNKvXnWrp4hDCDTBs3znbxiqgyBmDUj33cq+6fOTC5gaJnVAZGyLP+kB/rYsmeQdEs5Nqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk3/UBXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk3/UBXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 28989C2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778348854;
	bh=MZZ/SlJ503AfzxGwYWR3FP2MDIrSZ9pOYjrf9g23bGk=;
	h=To:Subject:From:Date:From;
	b=Zk3/UBXcj+u+wTickk7RNV+3hPd4TN1lPefxsEvrAMzsx+AXdWKRUBwGuheelW8ir
	 zKfaAqiOslOhBuImuMyX/V7aiM5z16EWoknPw9zC0M7Qlalr3ah+VFBlMOISas7tTL
	 S91jr1BHn554qjLjs3nGP+JhkvDaYi4hSg5rZCs4oxO0D0YGY98fms805L/8GdSJ/f
	 9XAXE7vPdzpIhMwv1anJL7DwZcQqcLBJcuaZPJM6JZQdEoGfN2Kk90qRiwtlisQkxS
	 o8J1AcTF0mU3NfvC3y8h0Ze9nxs/NcZ0QPWCgYGZj1hYVwD4EnxXpIhCRskhWJSzHD
	 nVuejzchNZS6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E454ACD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834885383.3411.18298862275895866319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b93e0e0c03b0289baddcc7b3685e86d4a2d3bc8a4de1d05aa1d2adcbeb3212f
Date: Sat, 09 May 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778348853
