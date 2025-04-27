Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D84C288B1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745792994; cv=none; b=BXwFAJIgU2QSQ0ApHQMiLE1WQJ/m3ZW2u3PFGkHsfhbJdAKwPMhFj9vCmC25CS+fGf2pmJZZiwERMxc2zQZmWbLrYh3+4lQ8P+ava3QwnFqJhvDkAz772ChyQE6Bguz6ASP9WEyyR0Rw4bo3bMPZBy86B/zjpG1V5A0BdZHlVy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745792994; c=relaxed/simple;
	bh=zPbBr6XErvkRgQTzD1Bvvp+fSSimsULg6+G8Cm9mVvc=;
	h=To:Subject:From:Message-Id:Date; b=Ivm+X6QHMUGLENjQe8idzOvUDv883yMqWhF2MLx0ZtlkmZrXtkUzQYXqcK85ko3p0NMylUwKqWh60qzNcx0NzPTyaID2CoWabocHG23Xwm6QfCM9GFgS1aacr5iW9ijfzDLvRvZNFQ/lnzdrjsmxKDBMky00CYLfvQ/ZbnQFX88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBj+fc4C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBj+fc4C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ACBC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745792993;
	bh=zPbBr6XErvkRgQTzD1Bvvp+fSSimsULg6+G8Cm9mVvc=;
	h=To:Subject:From:Date:From;
	b=TBj+fc4CM3Xy5yuEpgC4ZXYdes7JXOqoLyk0ItHJRlH134GxiyEZP3vgUrAi6SjJB
	 /IPjq4+NgCt384nsh5OsNvCQsqyPgWDcsrEaklwLEtYLRJUbwYejgSn+3f6V6IXUie
	 fLSyfhy2yluyq50MrQiGUBexQpkUqIlYgI/iKccLZ8wykw8xNvKDsGqfVPCKtRtqXH
	 UC7KcNxugpg+B2YeuuTftKJFkSrSvVp86zuwFF/Y05d0VntJJvoGp0jMj9BKwbjz0K
	 6vEKj7cKECC0Vve8lPFM3rxzgiBbP3icvPo6vkHSgZH1Mt4hxpnh8IWNc0zh12ECak
	 Z4SJLhyYJJuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B8C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579299358.2666.2489556687052982825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49d0335a7006af91338e8e8e9a431ba6011e735ef41f1d1885cbf03f2072b5d
Date: Sun, 27 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745792993
