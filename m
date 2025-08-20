Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23A8F302CA4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755693594; cv=none; b=PczW7/mKSs8UKo+ZLCgfGjJCqYEgXnK7emAKTgeNPWs/DX/kILa/37mVHZUyfTFEkLfWHE95PjEoawOJya6ETvNvyC0UPduieUnmw5zUkTuLZpZATzPpiwv9TncqCuYO+yszbv+0CZNyvMUldjma4zU9ljTPtMKAmFL1K7mGckk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755693594; c=relaxed/simple;
	bh=HiAb/TlixgdSVwOlC3a6mzID1o9AHCAXwkKqWqDHO68=;
	h=To:Subject:From:Message-Id:Date; b=bydEo+QgPtp/0AOwRNqk57Oq/RBxB6dBiomvBHCqE/C0Y7C1onOxKu/ZKqyiHbgjQlGpxfvRE7zdE105kUMq3C3DD8aDTJAaKOlTfwSyzvactem8XXYwNb8LEdQ4tdMrUnbPxmoaB3ctRW9IBJAQhE6Xqx5AaTYdRQZEa8Gn7HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtgJMyGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtgJMyGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E107C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755693593;
	bh=HiAb/TlixgdSVwOlC3a6mzID1o9AHCAXwkKqWqDHO68=;
	h=To:Subject:From:Date:From;
	b=JtgJMyGQEUOvfD5838AgbsZBkEhEjjsHrXhBDr1CWnk6PkmHbKvj4RAYoK/A6ihk8
	 foT76UxmFWdFTljifJVVMx6g1FAdYXXVQ+5SuQqUIsF9vNqcngRnm5vYwlAmPnCU4b
	 fpSJ0Inwtjqx+xsA2XhtWST+WsRte2XvrmXh1UJ8eywGzOnxz1ILmiC9RcwU3O1yM/
	 SEfFxRC3VZYbk8yVTyhm1Qm1T6l/IEp63ATVqJ/0nD6YZCVLZePH2JuHIMICN90Wl6
	 cpcyNUruttiRQkABH0yF5k4WT/3NGj4TBeQ3myhNh2U05Av7OarJ7sXhu9WlwzWkE3
	 2TAPHEdbpQY/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F583CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175569359357.2867.621328756833474884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b6cef123a5323ca59a89a0d441b73f3f60ea18e09ee6f55c4a11c2bf671ad4f
Date: Wed, 20 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755693593
