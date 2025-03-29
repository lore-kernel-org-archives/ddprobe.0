Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DFA38248C
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743247794; cv=none; b=ibSXA4gyhn6xrnFrcH02BLiePA3DwpwMuxW+Zrk0oy1UT+8G3BTFa6aTkmY/xirKeGSGw9WpzvffDTnR1YRb3af8i5vuxxGChWAGHNdIOypzGu5efyXb2+xQ+cSQWS3fiOI998bMDN/pAvO4VpgP/zo+LWVVgMVGk4/UQJrDE4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743247794; c=relaxed/simple;
	bh=jGylLyHbvWTg5tcdbcV0C/mwoXmOuXawp2GOQGOGAFU=;
	h=To:Subject:From:Message-Id:Date; b=e8R4RBbbQPl8mW0R8XrLeV8ZlKXwYZLdrcy4x7acsTmn4DmV3fVneF6GmEEYcTB+90flqxzYcGIrcV6SJpNuOLDR3+ODjcKpxC2jzHieHdGfaDzrgXPfULvrfIllx0kTVd9NvCf9YxQqvky90CEJuwGutgklXMjGzlOwNt6auUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwJ57stY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwJ57stY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA61CC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743247793;
	bh=jGylLyHbvWTg5tcdbcV0C/mwoXmOuXawp2GOQGOGAFU=;
	h=To:Subject:From:Date:From;
	b=cwJ57stYeBQHnncJ/JoesWfeqQF52nb8eza0Znm6KQcJgQSaD9g/PZWQ1X08jnJ5n
	 pIXld/dXPaushHrI/INz3IfaHQ+OWPiCJfrmWgUKftXKAP/MpQnEXdEs2jIdQzCNC7
	 vCocBJnwipaD3Pc+F7mL21AI/DLUmgEnRkxHofdp4HdXJzU7sZRW6UDET484UwSZgH
	 2dXoycxR9tgYI6oAUrZObor0UmflGqld3hixygNC0XXNG5Gz6NrXBXUpTefqAHtlQN
	 eCOP7EN+wY2Ukw410Vx/nvwWj627bw7Z5Gvyw6FO2AObJEAMXzFH7e3S/CnxbVtlmE
	 XcM+Z9HQ05pjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A026FC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324779361.1189.14227311704748032781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f972aa72bb9297242a160aa9c91c7748d46d9078e8c6a72ef9891f53f828bf2f
Date: Sat, 29 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743247793
