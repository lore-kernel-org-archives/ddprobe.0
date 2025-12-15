Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A4030BF4E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765830174; cv=none; b=m1q9wg4UyQqHMBxm7059QcqIlA2TuKQlKbiC3EyIVhIqd4iZo8k65aV0II5r9lR85Sm67k4QjzvKQXKXdqwWnPWi4Gu7aNUwfKjIS1VWhQ4dpjDxDZ2YVnAhzUW4IGFdo8AweMgVR3GbOvqOVQnNAPJpVpDW/hSSudQfIJM542Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765830174; c=relaxed/simple;
	bh=ntngoynA3ofwWp+HWv00X9sc3/oYjn5ehPA2zcR5x6E=;
	h=To:Subject:From:Message-Id:Date; b=Bsm2zQH5iSiENZ3XgeFV/XMzmgNMSP6Qexo0/jgyKgiWSCKzdcs497/gbUwKc/8WMTAcxvL2vZxymSeveua4q1ME+y62JqTzC+3BhOWknwK4us8/PEab7zb3nl6//zNEqbqQTub2GoCeG6aADHZtylQuIwxfqCSWSgKEvIhi01Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIgNRyG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIgNRyG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BC3C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765830173;
	bh=ntngoynA3ofwWp+HWv00X9sc3/oYjn5ehPA2zcR5x6E=;
	h=To:Subject:From:Date:From;
	b=SIgNRyG0jdic+VLVPMZ/DmI0zzB3xKcCGX0fjlIV6VrnMWHEExYT7og0WKD+DSzz9
	 z2gTsQY/pYYHmaoYfs+O2gFoh8b5NuUaAmlOXIkfaIu8iOYwTeFh3FIC+wFdbRSSG/
	 qVhtNe9W7bJvdNZqMB0vuWzXdyGcIuYjEIBgRPWu1uvZJuI46t+QM43bFYJZoXJhSE
	 YLk4NwHNjcKKNjxnSYPHtmslBc8VdZuhB8BtAQed6ZqRbr/1B1ze89i7h6gnLBLYCB
	 mfrYn9Q+qX49c8jAfTNWhRDru0+nrGkBhCAyTdbIJ1mMdN8RyGvmq5s8GCu58qMmrd
	 EWLr9a3ivvFiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A93D5B868
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583017360.24158.7079656030534552187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a97c2bc1617ac590550d502f2ed82a68737fcc06282737526693a1b2404676
Date: Mon, 15 Dec 2025 20:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765830173
