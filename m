Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033CE3859F6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769807634; cv=none; b=Apfaxo778ig7vyJBcoY46QYfvNEsr5cjq5YVookpss7OhGEwKp+EQE3knAxWKtVOH8yfWID/J3BC6WHG7T6LDl+8pLoh+UfburIbnakLoThzloNGXGyZRb5mTnywHoXan+i80um/oswMX3N8dMi/repWDjImD/KcjvaiXWfls58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769807634; c=relaxed/simple;
	bh=aN4djyKSZFDHokzde2DMgoP5gyeOAu/aa7LDC+ExrZ4=;
	h=To:Subject:From:Message-Id:Date; b=FEccWmLCmXyxtTsSgUgCLx/IV+PxFmcLdgBC6aO3TnmfJdQNjkilpQZYar+yMXXzmlSFxt3Vmwf/qXamt4gYAjvrY7EksxJl4BKpEDokwHIk5YBNEdgvfgPSthKHNu/Ii23MxY3ljjTGfBtL9PiY410oqPTW7U/nFaI/PWRlykk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpDC/bb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpDC/bb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62C1C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769807633;
	bh=aN4djyKSZFDHokzde2DMgoP5gyeOAu/aa7LDC+ExrZ4=;
	h=To:Subject:From:Date:From;
	b=IpDC/bb6jYpx/q9s8HJpZn3Iuf18y2i2iAh8ccDo8yNTouWQ9+Q3gbFmU6Blff7Bv
	 KcN6gxsDPQe9+4fzNzCsfb/13Efux6tNtsj/lTu4tAJovmqzvl3fErtai5WAAYOL3i
	 We/xhyYPOBrgIclUl+c9uAya1AOP4/lzSROqGC0JjKu2d8QHXk0SSIAW7qlvdZ7kwQ
	 0j1ev1VCMBVmSzP/1YaJdsoHv0dBWG9ZKBHtgf0vX/4k3hWosDzSY1A20UBJ0+q1Fo
	 2Tm0zQeiKAd3u/f1QfWCkBpdqlRHvS8YUHlVB131/1Y6KXQW138xOQ8yUXGnTkVPeh
	 XCP5PQe6XQ7Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F50E6BF39
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176980763358.30323.6620078662511188346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62b6ae5508f0c7850973cbb53d81c4926b25c774cbd2f96841b147662f373fc
Date: Fri, 30 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769807633
