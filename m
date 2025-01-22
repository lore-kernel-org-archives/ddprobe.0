Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4F018AE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737543954; cv=none; b=oPfIrYl1RvPIyLtPEWpDY5UuSmTdAa3m8DgmriyvDPayvxHuwjPgrefp7XUZI8cyAxagItd8oWYQZJwiFr3Up8X1jLir6eIP5jt6OWOfPOFP2YoyR1AFyzfArTls1np0Dwhi0QiPlPZv/OFI6sfzdd/5yJ+rruUuZc31YmO46TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737543954; c=relaxed/simple;
	bh=FV8JyLGDxsXf6cS0Us8tqhOcHeUgFusTjEtkK4GB1nI=;
	h=To:Subject:From:Message-Id:Date; b=KqACfbyWCTJwMgv5HRpWZq+wFmZ68qUWrkq5uDnDmjgSwa37x8aD2nak/dugOL6d8GYPdgyzgXwcv0j0rOAnIa7NTHDsExyxH7SjMzvbyC5Vxicjq+38/oWEYHfzg6pkNeA+SRy+oVdLk7UoEFCCDX6DQml18KNWNG+oCaMDhKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4OHfrbL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4OHfrbL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EC7C4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737543953;
	bh=FV8JyLGDxsXf6cS0Us8tqhOcHeUgFusTjEtkK4GB1nI=;
	h=To:Subject:From:Date:From;
	b=Z4OHfrbLaD5TQqCFGUWgr3uzmlC8Leh5WueO8sFfxX4UxW7vTBhrnB69SCrRTNaoO
	 o2EhLBSkJKDK7K7HJLN1B41bCsS1Dz1TkJO736yTuEHzlQl6y4Z0k6T4v6893pZhcL
	 Md6h3k4U2JCDrM7UU2136RLSa04GE6TCfsU6TmAEC1g4BLiLnARwlD1OB+6RI7GFFl
	 H4C8oab1KxFvBqoCHVrqG6Bz5J9nQCm9Y6k4SROhsLD5tWRpjIV04QobDiE6DlZ1rc
	 9lm/nWE9ayUFOZgal0EwN2CaY7N5ctcu1IJpEFa2nxFhhc2q5ftwETkk1kQ/f7mZjT
	 8mdZCGZ6kVvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93ABCC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754395359.29767.12762728467747046234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2974dbbbaf85ef273985e332226f25dda2c70c00d90eb9aee315fd8d0cccfc38
Date: Wed, 22 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737543953
