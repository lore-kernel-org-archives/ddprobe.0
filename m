Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9B92E6CB3
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780616674; cv=none; b=YJq8QlpRGzzmT2viGtsZwFUu6pg0h795vTkDc0D1GgpDnrPe3rlE1j8vn44sadLZwqX66iXdikbvxanm2Vp68+b2tVlLEWU8FXHcRYcuTzzHSmuloGU6CFjcEW8MOxAP7S8KL9oZzkx/ikISNHs6udM4F0mYgL5tt+RUW6K1vz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780616674; c=relaxed/simple;
	bh=iVbj4+JdGC5HkebSGwK+OVKvbezmzbs/P7ATSQ9PEUg=;
	h=To:Subject:From:Message-Id:Date; b=G0DyqVw9NUIhx5UpN+udQpTT9cTzg53awA13r0iAPNZ2gwrQNylsEPgALka7YZnwoIx+ihUjt81SrFMM+5t4cx71io9cjMxyq8Up7IwKYXj7ksu2Ken2+NQxsTeJNUhrUqj23qnw4TsqqRa3YxbO2cB7pB3YckTtbImwqwm8zvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDmER4mN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDmER4mN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3741C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780616673;
	bh=iVbj4+JdGC5HkebSGwK+OVKvbezmzbs/P7ATSQ9PEUg=;
	h=To:Subject:From:Date:From;
	b=uDmER4mNKQVCbAS22p8dkQIbGpSGHmuUugbBIVnH4Em/mOx84xijUU8XAu0hQUkCp
	 UrrC6/Gk3l6b8CAHiZY15IznzZRACGSNRxhwpK99QTsUacqybKjSXW93+h1xuxhIWc
	 8/YpIHKFVNx7pyS6nNCVdhV+hReR6d47zMo2q9Q5q6Aw80FTiDZ/yxQcuBENzBp1uw
	 bf0t9pdp2ZUTScOq01NS88s6emJZv/juh8FtORmq79LwnSlLqktJ5vZ4OGTuJ0mQU+
	 FsuiqHjvjEZ3cImK6QEpOyY/Kth4g9dqecagS5WcJ7rjCK0S29q16riqY1R3epZ7wd
	 RmFWWcrHMBzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9176CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 23:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178061667368.5410.3722498256944032232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77fdd1e183836897ff0d92b5d0fe7f8a161f0924efc4e1e756ec8deeaed1b0e
Date: Thu, 04 Jun 2026 23:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780616673
