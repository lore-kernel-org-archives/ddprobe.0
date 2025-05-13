Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A6A01F5E6
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747115994; cv=none; b=EuLd7eAYfwkBrP2bDKED25XT7n6uX5x+xOeAYj6iFrrx30Efr257RuHcdMh5LclNsk8e1hXUORCmVxqZjrKi3bJg5lbJTvLaTgc4/dATcLfaNfxHtkGm60C5gmMUHb+9WR70b0smE/rKKIhkGuPxw0wIcSwhT2mjOxo823yd0ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747115994; c=relaxed/simple;
	bh=pFcshqujAfctGjlz2irI0Fg0acuxaW2HVVTP4w2C7sE=;
	h=To:Subject:From:Message-Id:Date; b=AEp8GJ/aCAVQQjpXvUwzGT+wtFWAVCqFgwrPbCehMMyhLZwDL80MA2ilp/gGOOWnGpB3w6hj/lOdP8B7x7/1wn8dxxR5mva5ecq1DYcC4/IF57jPfBcsVGyYMg78wJH2tyj7lQ+MVnkcW6oaecHzXbHMLP+O032qdk5eu/iPgP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJmiFXsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJmiFXsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A983FC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747115993;
	bh=pFcshqujAfctGjlz2irI0Fg0acuxaW2HVVTP4w2C7sE=;
	h=To:Subject:From:Date:From;
	b=mJmiFXsALa6gc8QYT33DTZYjLngKbe1xUIDUxs0luriBFR1KC4D6zPfXAiDZGzW4p
	 iftYwuWpRY8lXwQv/QzPnZOrbhYdsik3gXhyiId0vZKH1WXmm7ZT3MfzWyXBVNV7LU
	 z49rC9OIgYK2s3pA+PNPwunaAYps/l76q/A80RQUraRiwfWWus0HXYVUPHrwXVWJi3
	 Yjrktxj4SMf5DRclJLyodoqxF2/U2gy589cekhMKlHDgCyIyKmIJ6+PpM0Mhq/9FSe
	 1etrq4moWpi+uLbaJT3NliWJEOhiXjuymiOw5aEUuHCQE0N8yHH82a2Q9Qh5YqQJ9s
	 jfFehQN4CmrGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F2CC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174711599357.30664.6753078441723471777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda9a58cf775851c36239c02b11bfe409d7c37044391fedea07983a802bdc4e4
Date: Tue, 13 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747115993
