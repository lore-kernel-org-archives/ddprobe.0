Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6569348595E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791577234; cv=none; b=gMIP6n0+WrD5LJU3/JzGvq43tfiHf68O9wuo10SBkw3pQ8j+KeFboY7yvukBkL1GYB+ulShIRIPPqsT51ObnG0/hmW4QN0Fb8/xi4Gpa9e9FAUM0bB748dGuBfpwUdwTD7GUdH/DbusEMTPt8gkL7FDVUiMrbSycRz+7L5JF1KE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791577234; c=relaxed/simple;
	bh=Ns2fGN7Rq4yXu9Qzm8H8Fs24SP2isW02ffOzLAuk+LA=;
	h=To:Subject:From:Message-Id:Date; b=gvEQ808QtlGXMKe2jhVNBjDopdIVsDoVrDkSxinyRwlejyu4fCLtuf85rsa/hyUJ/1ZEV3yQlI34n7PGWHgxmDACtrCqLuiQexyKkTJfdU5st6a5HGAyDz9nwNeAhbwQ5t1R5fVdVtAHPyXgnril6FMGubxdjJUUgVfo9WEcp0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VP/+yheU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VP/+yheU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6572C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791577233;
	bh=Ns2fGN7Rq4yXu9Qzm8H8Fs24SP2isW02ffOzLAuk+LA=;
	h=To:Subject:From:Date:From;
	b=VP/+yheUfSubVbzVZI59yfEorL6HFh590z1cpO73p2phjJAztKvDnMqCzQHh8ITBF
	 ZOzEtij8JkJxwbwGQ1e68emgdSgzr6Ds4zhkasX0JhYwF8pS0uUgwA3FTPStGU/LS8
	 sWZ/VbD03qG9hxSam0i6k6mjPbxsmIkjLmxwsr38HEHWIDUmorjGandVT1JDOCQ7TC
	 j5/mqaurRqOgf+YlE+/+5LqRvPwYW/LXCCuDVEQhigf+r5EMt9a2jI9fljmGM3Iq1E
	 VSXDr+SDi3/2tRwe4tCgOCysmZDLT0KDFa+RKts7itUAl2/kNoE6b0DVLpZAp8+A+t
	 WjkCMHlwd/11A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBD9CA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157723368.17341.14906089772196396338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8fecdee6cc50c12427833e51011bf0a2d3c3d4f220c86b8db856877d2a58f1
Date: Fri, 09 Oct 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791577233
