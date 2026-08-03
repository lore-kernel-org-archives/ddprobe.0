Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1B3B3A3826
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785741634; cv=none; b=XuLE4nB1FSWYc5+YSXWKMF1r5/8CKDmQb8hU6tDLktcCTdbE0K69MFBzPYGX5KworJnx1c6IzFy7QsaNLs1q8rrfqhw/L6IAzTrK6uOoqxEkypzvNS8Jaw9Mtv2EM2odHy+swDmkhZ/vVEx7MlENqKpJyw1SbT/7GoFDj3uGyCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785741634; c=relaxed/simple;
	bh=MV6O0cv44Qrw/TsQvoDJ+Sd7UY07stu6SvbStK3msVA=;
	h=To:Subject:From:Message-Id:Date; b=LZjY0xvWN2smmm7PCVLhJmOQ44wgWb3UE3S9MVR3KokDMdMiCyKwmv41PGqGwvIdFJHlFoZpQJdS8Y1cegPRkcj2VLkMRsYHyuAIu6vUGwTN6/O4LC/lHj1LF7X3PEpQ/nCAKsvndbPN1ZEMF0UrnFw0RV4pVdwUcuxjuvzo9Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4Hb/k0l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4Hb/k0l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1625AC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785741634;
	bh=MV6O0cv44Qrw/TsQvoDJ+Sd7UY07stu6SvbStK3msVA=;
	h=To:Subject:From:Date:From;
	b=u4Hb/k0lt1rsOuJnM8s0lG5YkZNi+P96+3iZhPBemN56V9tYMtsjD+RmUg5MpU8ev
	 jcDO6jFFRksaoKjtvfS0K9MQRlboQCUdhYkWhLRC05ureGHfES5wPWm6aK04Kk7+mb
	 T1wTXXWmBxqKGbHfPY8g4F+9/lodwaIZbgf+mrwn9ZQOL87TdwRmUqP/EEan17arv+
	 6VGc9D8m7jyfzQCG8DgWwamcql0M90uNBU6lyBcIrfjLdnyvM8GF8hHjZt7wKZblx/
	 DO23fmnQXzSaRthwrD0wbOh+8/IcNdNv3HWnNdiRSahMuP7lvrNoHSOVyrq1Sqvkm2
	 X2xeFx1cw4A3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAFC9C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574163387.28615.5456523619768838736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67809cf9a74dacc5dc8aa6047f41271b509314d500d56801f7b67dfb4c6b7284
Date: Mon, 03 Aug 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785741633
