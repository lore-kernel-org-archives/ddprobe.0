Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1A32D73BA
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763665914; cv=none; b=OsRZoDo+RVUF4O5cWitCxn2DkbwmegMWB/V8iXffxGgGBAingo9nR/q1o+icVmszXYoK2fxsCAko7PXC8AboGE6QVO6S5pAToeehICaDsW0YiNi3n4MhyQmmFYVXDM3KHTRHze4gTixHOEdXWAVGL1UR26UXj0vpr3dt4Qwx1dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763665914; c=relaxed/simple;
	bh=0yCVYD1Pq2t6HyQSUWaw6OtaUyIoiW8DzzvaGwrvedQ=;
	h=To:Subject:From:Message-Id:Date; b=bPJPYn65gA1kabBP5OEzB18mKEqS/0GxdbpMDEQgUznqKK7+hk7F9Jn1sSXQvvdBJ/wTrHvXQIJHowUypUgZySaYItly7hfvOxucqL1SJOLhScf04/FIE+MaYWrhBdCOlNWpHx455I8pNQeZRIjQKg7NitNYergWqaCl24H2Its=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaexmhJI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaexmhJI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0936C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763665913;
	bh=0yCVYD1Pq2t6HyQSUWaw6OtaUyIoiW8DzzvaGwrvedQ=;
	h=To:Subject:From:Date:From;
	b=kaexmhJIMltGo2Hl3B7CWdZ62NLXigdwSqtIUT5OBqIQkXepK91aQn8WGXY+u3mJE
	 RoZFNCWeeeIrC1yjUjMROhKuVNL8Y48E0qgNzWjCAZNN9R/+xy27bnr3neZZi8v+NW
	 JoMU+HZ9qQl9kADpK1b7mv326FOleNwxwhc+mu6br4R9vXceT2eU3Jc4glTVMO0G7b
	 bfyZpuMUQPtXDojVQhObUFaBvdMaekZIbiE5YVfedBkKh9xuU3ce+fTRWArCkZBdbq
	 eaZ0lk0rot18KsAPlS+FHEEdISWxqGFQquLOZ2hhD/sm2wkA0W9nHTeMzlx9z0jUqy
	 B/m0HlXvC3kWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91656CFA441
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 19:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176366591358.14187.9998847828448824354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e990950d76f6385470563841377126e9f8cd6c2c9167005c299ac846f2b497f
Date: Thu, 20 Nov 2025 19:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763665913
