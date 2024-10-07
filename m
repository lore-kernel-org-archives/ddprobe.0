Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3120A4C91
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728299754; cv=none; b=W9CqAImihQyW0i2KI2jHJivVBhtKgvwTCddF4qV67a/J+IFllVjMEUW1jTZgMUJoUCu7VD4FDJ+Fo016KmfYsv+OojX0uDLZfM3lzHUyMqN4k7DlzgW67v4GsWfmHX+wpCSGetafNEYfFfKTxqTmYx4bWmQfpU2yMLEZr7MvB+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728299754; c=relaxed/simple;
	bh=TUBflfkmzf+EplqGVxC1lyPZcCR3IbTW2OkSsEQv/cQ=;
	h=To:Subject:From:Message-Id:Date; b=gAjZctHt9zgarWSl6XblgUoFHdZg/1xYrQwAZHaG9mdADbj1LMXxVEYa8d4UOBxu7nwMEV+wVRvA5pLSOFdgaobRonuvz1Wz1fj1EoFHwjOTd2t/W5b2RhCOTccNYa9GYQNsR1C2IBW4s/0cohWXhC4fr+cyvPDMC0KEIw+l4ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFOzyeCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFOzyeCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B536CC4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728299753;
	bh=TUBflfkmzf+EplqGVxC1lyPZcCR3IbTW2OkSsEQv/cQ=;
	h=To:Subject:From:Date:From;
	b=GFOzyeCFkBQHCY/lNb0JG05VZ2ZWnmi6YikRimX75gX6lMGALlyOGT9lPyoaAC57F
	 qejzmb/n+qa0TAmSs5o16sioNJBBXcNHx/bmmLQjEiLci5WMBpOtdF1pdQYMmfY0qd
	 fQ2JNWq7HtUXlGrMCwjrqxT3epGe161ECFhojjR8wrqCYbfFMxUOt2wy4AAFbNTeOL
	 nLct2SK7c2Ma0dAb7gIbKZvhmCQGr3w8eMjgtfiFZAaQJdmda8MCGfolHq0JUBj59G
	 L9X520HSVp4UyuoZlk+0yZ0rLv/036f0VaxNyg/iM65O0HA6gS8HM+sBKKP7L9ICdB
	 zSXDM3b7pN57g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956D0CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829975360.312.1933838672384734576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767efc1a1f2c329e7fe5a511f963f2935eb06af10e77758cfe84e9bd176d2873
Date: Mon, 07 Oct 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728299753
