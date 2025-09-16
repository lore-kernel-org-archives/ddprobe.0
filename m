Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB7B2905
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758037794; cv=none; b=ru4COnRhGk/Pe45byrsbhKmv9RhNCRiF7s0XUwUUtt73Nh44cwYf3blGRlqPoENtNcDGdkna7u2ZFJ1e6zzGLCi2kx0cZeOWHtVhA4HUm3zW1lbdIyjbqIxPhSuP5ADKjpq36jjCimmqh3NCXbn2nGXCwCHeGn4iGGHQWw/h2jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758037794; c=relaxed/simple;
	bh=ahPV3J+PqVbhlNQ5+a7iSzSUXeCBTEof6G0xcYan1kM=;
	h=To:Subject:From:Message-Id:Date; b=pP8U8FAbIzIC9PsAvAAXtdEw2sz4lvxXz+1jxyffIveRWDJ1UFaksIIsl+SDGa+QuwaOfI6Z7rJwjDbD2HLA7/cAVBXUl0ggxQMK/VAj+5aGt0EtV3cOvVitwqWcKMvk9AMv4kNgtTHcHU0P5wxvL+4B1CUL1L981XSs/EN0HQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTPEEYHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTPEEYHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC1CC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758037793;
	bh=ahPV3J+PqVbhlNQ5+a7iSzSUXeCBTEof6G0xcYan1kM=;
	h=To:Subject:From:Date:From;
	b=JTPEEYHQGIBaRwPbnrBV8BBrfEvzGPLPp5zgA6pWaWbKH7s3QL5qkPj/n71PWkXK2
	 /TrDGTq2vai41MC0D9Xjy/9gDwUdxQyY7Q4JHjSsN7b3OwbHhoozeDkshbS0CXhHPA
	 kJ0niXDcQ5MEQhS2kLExeKpbr6FJHg4gtMlzdjM+BNEsN5+nYdeEa1Xe6QxBlBvWe9
	 Bz5ky0S5Y46VTdjDFZcj9mvYjwRtCs5CAqzKGBTk6QfAju3tjLmX0QZilS1cK4OxKn
	 tRHR0FlND9Vq0iHIT/1CKO+EY57jYwqnO4ghXeiHLo2uDuhpyGg4Ik9I5wFjPhX4w9
	 LlNLfBmkb+L/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC06CAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803779357.6638.13018474902498881953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31d05e0e589bb4b88bd5c14608fa11d4823e8bf12d91a3c46922ef798479e600
Date: Tue, 16 Sep 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758037793
