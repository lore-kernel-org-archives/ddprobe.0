Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A15CDDAB
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763821914; cv=none; b=mmmxgZ6RplGPgE2sencSFFatTHgOrP0jsSvefyLlHOdp11zp0na63b4k4c5rjpZCJpOfpDSiXSmRSRjTk71fuYW3YC9f4IImbQoUUBxFNPM0cF646RoQE2CmjGguF6Zz86QQMETcth2HrRgncLckzVAHQjlI6rqtZmu4QJIs22I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763821914; c=relaxed/simple;
	bh=LorNauwmdjJld+5SaUUR7wAVsHwtZ5KB+ba5YDqe1vk=;
	h=To:Subject:From:Message-Id:Date; b=Opw+p0ShHGUllzGUiV6rCPfScjBcvDSeO3P7rMzD/lhZZyQ/Or3IYUQ7lQfg5h32m/b0K88N5hTMHY1mhzOAdw5uQaVRdE/o495eeuW1Nx3ihBf2uFcW+wpsjU0Bu1wIxkvapnOvjASb+sEz6Vf3Y41eNDQ+iND8Hj1wX0EzgLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqAAxH4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqAAxH4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A559CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763821913;
	bh=LorNauwmdjJld+5SaUUR7wAVsHwtZ5KB+ba5YDqe1vk=;
	h=To:Subject:From:Date:From;
	b=CqAAxH4JG5DJW2yFTjthuJDZS+P7RJlNoJvd4IjjSaq7eObw9NmmUGGnwKpgh0on4
	 BGibBq34yj8yl9eS4Oza+7sDCfhFbvLrwCfJac5U7SCdVOnti2Q99aq43Ui/r3UILn
	 w9mJadvNakpttnbflQO7TBaQaPQ7JckV0NFo3QDDGAm4aI6ReUoTmuyM3JQo8LV5x2
	 lZoEbi8Ry487C70robPR3mdtTaQARgxze+pXXUU7hntUhkUvEz1XIecsyuArnJ9YZE
	 XzPWybJI8LUcooV2qGbDA89K+fHdfWpG3/bhpLxpK2C6OeXUsEKo62tiWS3NpDovJz
	 QPwTR7V74I6Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93853CFC536
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 14:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382191359.20451.4601501598439300493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa37ba7b7a89318c64324f7c6129afe2b27f32502263827c97f22a6e4654a0b8
Date: Sat, 22 Nov 2025 14:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763821913
