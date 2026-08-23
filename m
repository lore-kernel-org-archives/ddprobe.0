Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5D82222D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787520034; cv=none; b=toUrUaykdC6eB0rnoJhtk9m6uFK3/s0xJ4N5zYSEHRAGpXFmFdBFy0xRqJ6aUbVzZU8+cWVSLWa1beXoAsX4pTKDe2dmRCM3v5ZwY6IpgsQr4FgTxkjf/mRXOZ5JLxJ3thm/CbJHhw8TOzPh1Mh4G4mc19ieU1LsdhySERIarA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787520034; c=relaxed/simple;
	bh=Lo1HT5EximtncKoYXJQ3/5hm6QzkogWxufPJxtiLEnw=;
	h=To:Subject:From:Message-Id:Date; b=EKUQ8JRDOR393z0WWXaPjj//rF1gwprh7Ooy2mA3wnEaxJXzlxOVpdlQ4lxDtTKaG3vdFITZ05nkafZl2o6ozMquw19fnaZlgrx7KJr3SQwPI5pN3XoCrvHlXgxpaec6Fm1CYHxJlrhqjuN3vRtKeKqoCob890gdLhK9mVLkWB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXEruCFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXEruCFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE79C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787520033;
	bh=Lo1HT5EximtncKoYXJQ3/5hm6QzkogWxufPJxtiLEnw=;
	h=To:Subject:From:Date:From;
	b=QXEruCFnzSh+l8EKYtKvsASyEfUQezcjXBpTtGei3cRDqwP052abIR7Sik0Ev/ISR
	 GGjgYJTTjQI16vOybGr7JzTLCLBQz2YDJ+vbuf2vRW0l7rnY57i3W7Gzm5sWPTRfe4
	 NRkeesFS/RhzqU4TYIwJXz+R/KNb5fsQoXr+tF46BFNh6Oj6nC5mBO7HgmGP1v0jrw
	 MFPB1LdEtzR4mBY492Ecu4z2GcbOjEKEQlli7t6nD87vI6eyn8VMwrfHWOLQBRKNZf
	 XhpxC6gHErn3zsjhTNl1IlTlLQw3uUvG8QdU+D08u2r+jh81CIGIEk9ou0DtmPsgaQ
	 /M0iUeQtVLYPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA838C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752003368.30389.14944734497129424044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a5e90c95ae59c5db65358fa49396216b0b5169337666b11d51f1d93b94cb9c
Date: Sun, 23 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787520033
