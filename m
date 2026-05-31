Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C2B149C7B
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780264474; cv=none; b=JVuaLstyiLJrKLpbDvU1lKrV1CoPkabPpBmcWB5sYq6OkVYi0KgzSzTtYSnHM+bVqhIAyYDL2eM+A6Y44F94BBWfzp51p30r1cAQaixEd7s+UW0O9cTWxzTyYum8XLOPE10wTBi6stHLWW7bb+acm4XdFtNlWBGjt5DEZ1aHGmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780264474; c=relaxed/simple;
	bh=FpsYXjuQqFKM8JK62LXG74p8ZlFc1Rg7g9NWG7tzEfc=;
	h=To:Subject:From:Message-Id:Date; b=TcI+JC1jrZ7hZmX4tug6fqioYJATJ78+mv3Nhc+pEzQqTS19e9oJV/ZeC0CML2Qy80FzHdmg1GslFHahHDo+Gy2qyJIoQBEB5lFEx635NOS1Rr2mI8QQOKEsn27rUsi7m2JUABEJvxCIc1w9/mwVIhJeDhWy3q/8TL1Ct7+Z43E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjI5UNMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjI5UNMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA16C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780264473;
	bh=FpsYXjuQqFKM8JK62LXG74p8ZlFc1Rg7g9NWG7tzEfc=;
	h=To:Subject:From:Date:From;
	b=VjI5UNMJNYIG7wjf912FgS1rWFf/F3NgqCUc7Ldkykf4AFW244/VAkfKwM+6cL9/r
	 x7vDy1m/5Ry5qbZiFpy0hdcAiiG/hAamaTaExi3FLSHNwHQrqKbnoBUZUrtxfhuZ5p
	 RfYAi2I1jHY7mDoATozkOPlSYfhRegRmJbk7oTGQtZ0QjKZf36jhFEA4V2ibSnteC2
	 xU5iuwgc/f/0pu+IsJLNMxnEYic1jlhS/IS0KuYum4N2QfJEAqSd7oP0UEvOXe+BXA
	 E8DDUhnQ6EJ8t8qyoGsg4VX55QngbUCYsQfgyRWkmuOt9Iy4BRG4kHEf3e0BOWtSqF
	 DmPhbk2yi6urQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B4FCD6E55
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026447368.5435.873259197926293537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02875fc58194341c09264c187069bac1a0309f14fa95fd1d590d3d213375a7c
Date: Sun, 31 May 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780264473
