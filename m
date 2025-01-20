Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D866383
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737335154; cv=none; b=DVkbHuAYfZq6JXjWjJstDTufDhKiIiz/ErL+cRyZ4sO3zZ3/B6QXVwaLinuId3bqTfIA5FuRr0PIje9kWistizMvgxWwY6npVMGt8UOjlHeM293tlkGaiPv3DuSE4ksbMCqb0Ul0aqefpqj1oZWYXIG6ozMgMpwV7jeouAsD/Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737335154; c=relaxed/simple;
	bh=SutYdJuV7O1sNOecHRXc04aa+KhPZwJP6Tsea3hrnxI=;
	h=To:Subject:From:Message-Id:Date; b=u1CvXTHDLLsxHYY3YtLfhiTKXaMmWV3Y1ThqRWDmMjq/ZiXCKNAixmALCKa/7aOpJNKirniMF3zkBUcsv/TFrf1v2LFALFHjkaZFpxebYyy7SR4t+1tmlpxyufM8YsJyJVCuddFMixhxA5+rtjaiJo3OnXsMb9347kcDynvTUnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BSsE8h8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BSsE8h8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1EDCC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737335153;
	bh=SutYdJuV7O1sNOecHRXc04aa+KhPZwJP6Tsea3hrnxI=;
	h=To:Subject:From:Date:From;
	b=BSsE8h8QLApsdIyR22bSwCyxRyp18F5URMwfHWpEQN/hlw6NUIrYl6WL8H+VXjMi+
	 G1+SI16mjY5sR52R7Afoq6c8qS6We3HlaebaFJSvG/v961tMLrX+OasEa0/Jr8VRLt
	 4Wznz/rVMr+VL1saXe7tzSlD8XCwcrqT/KPbisR7xVSQg2GYxdUpGNbAN6zGqBlUe1
	 yxoYLK6boy5g8SxIxXhulkpUo19I6KO2lRDzmfO7UwEHVecygGQP5JOdyruAMiPPW6
	 oDFjMSp7hwSmNiKzqcI9KQBMBbTzZc+OoYjmfGhON6I+kc4pTXGSHD0ioAdssWX1aO
	 l8nXLW5rSi9Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3229C02188
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733515365.11862.3164195983225639306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 843f9ef814c4550194240a40ea08fe6aa2008fbc14f390edd78a7f5824875658
Date: Mon, 20 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737335153
