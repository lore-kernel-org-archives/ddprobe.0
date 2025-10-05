Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306A71E47B3
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759652995; cv=none; b=kSN1vdPTJ9Nzn+8YyFDyYaiVP/iHf4TAIaQHztDG6SRplUggeZjL8FBQGMleP9Ki3ZBjPNNBdVkWn03PK5vMyQtaGrGiNnOTywr82PgieKtTms3gQYGnp5C7vQz8n6KFjnAQp6NUbM+l/x5YC0I4ZVIdTLK9Sz8nM+ZjqGMIhlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759652995; c=relaxed/simple;
	bh=CgohWgI9ENDMBEPvvm2T3vq9IT2gYAJxx942sdM+6Pc=;
	h=To:Subject:From:Message-Id:Date; b=RXae/z1/uQlu4mqGW2lpVQBYfdvoNu36wOra1ibqmvzgo0nQqps5Mc/gEF3w7PYHBZhMqrdFGCQ3u+3IbH+clY4yk0srWgEoN9tTaO8htbfcyup8jzxbl0kXluzGrwPE1haJScAbqxhFNRdicFMtC/a4OZxr7o/ZsGYHp0VvlFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQlXztw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQlXztw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A931EC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759652993;
	bh=CgohWgI9ENDMBEPvvm2T3vq9IT2gYAJxx942sdM+6Pc=;
	h=To:Subject:From:Date:From;
	b=rQlXztw+8xY4kv97sLJH7zL6fF0V7++njzgGPwuaWpmtDGJMxmBXsBixzgg42p7eL
	 BrQVO9OE397eF/GQKXd0prjN8ZAs/OkHbZnPVp9Ia5knUkEHrxK3RgFVe5d36qrdXr
	 TNN/wXR61Hdofs5G7H8ylIGZCof8yOTOk6pD1uJJFgo8tp/0ZDmoLX/iPOVulNFxTS
	 +t/N4Ng7PGi9fg2H90N0QHyqoAih0Og/c5DT+n4CUhlFwr4Vk4ggbvsSaToIvD7sEC
	 rJ+gU7pNIT3HwUF4zo8pmd4xjzON6qkYPZ1+Ovzgdv56OgEemfJ+EFZATLuiSvDICj
	 BlX3DjYQn5RgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9639ACAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965299360.11834.3268936759223929558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a94b0ca48c4557d2eee47b7fd984300912da8abcb86b37defbf19e778a870e4
Date: Sun, 05 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759652993
