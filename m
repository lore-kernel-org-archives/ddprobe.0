Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F223E9C17
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788510636; cv=none; b=JJ/0CwJB7FpziH6muVWq/T9yRvdwUAxchrsdKxLmiqIuPzuYCSwNJXDIoRwPtMdhq1QDRLQQfXuoktrktB/q3okY0qk+20x3Z0lBqXGkM0jKJEP8ULmIu/hqWkUa7Okwud4adE+sETkjyOrpGfDGAW4Qbnb+Cbiir2KpDODLkJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788510636; c=relaxed/simple;
	bh=ZSzyu+e51Zdmp1ngSr9kouAUtvKBx6dkDs/dS114nHM=;
	h=To:Subject:From:Message-Id:Date; b=QtiqxOmoV331C4jynWn0TRGc8zufxDVT1ZpWCnpqk/opx5jdZYkk1GhAKQst+PYWN/rW2fUp6XfL8cj1TcOKOW+g3xQIFVsVJKNojIX2EzyiH5InMWmN7pI5NqR7aXnCU1WwOwL6/5WafiUvQ9rvx3b71s2MQrJF/DlRRyVsWXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCZLw4Cj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCZLw4Cj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E4AC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788510633;
	bh=ZSzyu+e51Zdmp1ngSr9kouAUtvKBx6dkDs/dS114nHM=;
	h=To:Subject:From:Date:From;
	b=NCZLw4Cj41DOSh42kEPpl6bSkf6AoTzWBKpJOh97VXqHwaPUTlKGuG6WJ5su7T7/W
	 BqPaxIxlVLTKtZWJDiYPczjs/nDbwN4ErAuTxKbzoed76h0Gdq5op+r4QfD+3IXzhV
	 nZeDNdEUatch3/r4cUZDXlse7donfHHQVUvneKzbJIobBTyGq5v8+a+mwY7wHWhEYG
	 VCVf3wjhQit4sK8aYgkIzM7Ni7FFULI3kf+tzvw8tei2Cd+IzGn8eiBPLWVMgeVq2r
	 zVBAGun4HmJHteBM9yUckfgPoEpsZ7Go7JWixbOwfm6NqVTa630GEvt18F5e1H8S/V
	 LDM5AGsMjyNSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F1FC624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178851063371.3193.211418430155348452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b22b7bc8325614b723318dd12c647ade25ec3fec017d81c6bebe7806eb47499
Date: Fri, 04 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788510633
