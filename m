Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42522645
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741912134; cv=none; b=DVwkP513K1bseqjBnCZRgn9xV+IIPX9aW+ag7JQEyjSObU7HmMXYZxQF1L8Bwaqr2x1pfUzPqO1QZiPpVi+mELieauHgdLoEzDXjCVKb44he/MXst0SdZCn6+dMNF8MbnI5K+qlcL+0I4bM1PbziVpT9OrNU7xA0GusvbS4KsIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741912134; c=relaxed/simple;
	bh=YyLXfaSC283K+cSCS6J/QHeJAJfeNN4GpDxsYfMXWIE=;
	h=To:Subject:From:Message-Id:Date; b=f61e2voOzklE6/smWkKMUy7gv719NCCfYIN4A1lMegUTc4NxlCdBzxIJa6/HIRloP4TCFAJ7a73GtX4BxSBXw8r5FGu5tV40nYMQLPiHRQYboKhicGAAD/j8Cib4gPBwkZVaaaF4GkZKEtUDz2WGXKVOmVLSlLfGkRWfonqWlEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HI0y3NDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HI0y3NDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B111FC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741912133;
	bh=YyLXfaSC283K+cSCS6J/QHeJAJfeNN4GpDxsYfMXWIE=;
	h=To:Subject:From:Date:From;
	b=HI0y3NDX8dSPJL3PYietZ7SoAKrvAtXDLAmHx8fLQJLEk4KRAOfOp0hmbMOxzHqJc
	 KxNOE2gAqgfaGmiFWJRNvrcEyW1DW5lycYfz4cFPKZEYNSZW7/Ngec9L0V0QgKluq7
	 mJa8ez+QBa8+yMYzlxMPEaWm/2jkNPoeWkhmfLz0sHi0vJkvYhSOu31qqGvkafyQn8
	 IJNG3g1bWVsLFEm21NBlvkwCa+Od45Hd7R6QfcryhylGRara+nSujJZ8fTcj8rWOrw
	 y7TBJxIWj7qq2UCWjSdVYLg8p6xEsF7+wqzrNYPkgeBZcMveiNuOhHlg4vvqeEPvuH
	 ey7JbYODiM6og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99097C282DE
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 00:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174191213361.866.12533500341942925731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f3931ff49883cb0733b733b0df4f53094770bc602009b421672eb3be0117d7
Date: Fri, 14 Mar 2025 00:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741912133
