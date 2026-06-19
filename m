Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F67136728C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781864194; cv=none; b=ehKnH6QQ0OYp7zORa9EiyYri1sASR6cS3piA1ZJcP7LiYaLDMn9TLCClPkWHzeusgTZK12TETXtXDnxPe7DMNPy1uDUfr/0JP0HUp2zYBR2DcrwjH4rpb3/ktKJ58K+5dz5mBebGnCy+9wLb1anrHM6nlIphJTUwFfB0szGcU3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781864194; c=relaxed/simple;
	bh=LMXxY5tBWbsgbcMUsJyr+GmuZ9cpsUayJd1md+idAVI=;
	h=To:Subject:From:Message-Id:Date; b=n4xyg0zBKvJrMcc5OkhHmNuft1zp256BmTeBFMB4vaat55cLiDyxnNvL6H9nirPKUWMoyOf5y6vctEeLLQm3OFSOopRV18VvdRCCW6JWfJIQlJc5TyfS6BP6Nk00lLHe6b36+9gFa/jjjqDMa+JdiK6fTatI61F3HO8LamB2Tiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OrWEhT+p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OrWEhT+p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58C6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781864193;
	bh=LMXxY5tBWbsgbcMUsJyr+GmuZ9cpsUayJd1md+idAVI=;
	h=To:Subject:From:Date:From;
	b=OrWEhT+pZryDTLINZNy4OwkuTdUcnrKIzQu+x9rODoA8+K5ZdNBjnxx37/bQFIKOT
	 XxEdphLCRgSAt7C5GTAUmF91OLw+hM9JN8R0LhlZFC/lSvw+x+HNAkycRy3cbv4DyB
	 Z7sVxOd5DksVzBw22tvD1m68noqISLFBV+sOLHCs+gx2RKMYkO1nMPkOANHhm6z5t1
	 ivfrrcYD3Di6baz8VKxe3VDxtUbpwHWwLyFVOMV/uk4HTn4jK2DgG0IcY3To03sMnm
	 yEHR0GdjjNDwv+5KYxasTa6x7UF9MYlE+FEZQlSCNb4nPbwx0KajJtd2KmIaYNbTph
	 AabNhjdEGr90A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7C6CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 10:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186419369.17038.13577403294948969845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d079f362fe1d8c256da6de122bc6e1d4de2799884ea8e407e2644d7331f57b2
Date: Fri, 19 Jun 2026 10:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781864193
