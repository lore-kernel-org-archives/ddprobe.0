Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C801C0DE6
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714521143; cv=none; b=CU8MoAV5d77JiL9SHUfuoMsYFqVy1KP/uu4ay+uIGVJbKIbPdUO6q/BVp1uJlY4hA7l7DprKg6jwgP7sPAwYRmAXbsHuSvlPGfNh1jYKp/RW1lveVbheT5pnV+s1hnZtWb9FAyO1tw7WQIzkHKrTKszwcSOXYhjpyK/9nrobZ38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714521143; c=relaxed/simple;
	bh=khalLCGpYk9o+d8iiGiiUG7mQaqeKJW74Vc4/032SQ0=;
	h=To:Subject:From:Message-Id:Date; b=cHoASsV5nTD1eGcGOKrQOqzg9+pIla13+W5vjv4G6ji7sU1uCM4lWOa70epthGmkfJRcmvzyJX0HXKQPegxFGUZA6MJUUJncZv3P4fNpFVJk1qIsyVewcLmjomJUxU7huuM8UFwT+VPrmdCdo8fXXdh6A0A2s3zDiTKf1YQim8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0Yn4zHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0Yn4zHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF888C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714521142;
	bh=khalLCGpYk9o+d8iiGiiUG7mQaqeKJW74Vc4/032SQ0=;
	h=To:Subject:From:Date:From;
	b=h0Yn4zHrkE7ngC+M78lXmfuGILCi++52oy+CSzznKGzRWbUYHmDp73Ik9AdoqN0N6
	 Phnqle+n3LICWmt4UDafXotBVqg+bdyI/YOOdhNe+699lvczZ9h6LfPifrbmJSNCam
	 lU4o2ND5umCjXCNRL/3cn13GvIf7u+rf7t9d91OvB4Ki3zW0ngWWT49owwTcJIz1dm
	 noyyh3lJD1q+HXdPqI1vZaaVx+U+Rd9vZGqYHOdXZliXEeCunhVYXPE9A3BI6O5FLV
	 3pBMg1a29i+Qw+UEodiVxc8DZzixeCMgLDxzRrtUeGkyr6ktTevEAdaiIAW47KFRvC
	 6smyEijqqUkjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB914C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452114275.19380.3513176450519553427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27acad4499885907030e5221e0d64ea269aef4585a509bccaea3cb9434c3cb32
Date: Tue, 30 Apr 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714521142
