Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7D38F58
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721568354; cv=none; b=Q6jhWzNCzFXl/jCDgbjGkATf1G0fSwBXz/Y3cy/NppigCzhm3toQBIhNaXo/pJfwImN/Spc6rAWphVlWQc/bE24QT2oWar/uH0ynbFEYtdVmadlHjQbkn0agowocKE12ONUIqbhMWmhikrahxMQYDKr6sHWL3UWSWHUAWJDrWa8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721568354; c=relaxed/simple;
	bh=+eTDGLA24SSb/4/c6oLKdP2feCJMyrUHjQzkDw2wIOU=;
	h=To:Subject:From:Message-Id:Date; b=Su64era6xhNWutdnqQ2lFiTtKxn58c1dAOOs7fWPXmn2tZeJSLERWGTNzPfSTOKmn7RWh3OXjlYlmIo4DR+gW/QgZOziRnzyvywevcH/ygxQ8RwQNFaHuX7JXVayil3Sm+g8LGQBf3WJBND6lA27nud2/1J6SuQ713+20NcQD1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfc/9tEE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfc/9tEE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1499C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721568353;
	bh=+eTDGLA24SSb/4/c6oLKdP2feCJMyrUHjQzkDw2wIOU=;
	h=To:Subject:From:Date:From;
	b=lfc/9tEE1LzrfiYBzXUoBVEYaBaOPJ5/tpHUSzugxBhjVmx7uR9DEFCbiKEiRub1h
	 1zk+Lg5KtmOm4MPmF57gMOvjL3MgBhLh9bQIvVKcZ9ZgFTEbAxhj2FqjoEKrycmDg9
	 2fkAvqWp2EzV94GlgjUH5W9ri6wMSTdeHPxqmMZDXotFqFHtTUjuhLqWiREAgetTMk
	 Kia0XUzhRFkEXWjhDJFH5F6YYAHQA/hr/J3mcnlMe+BuQK7MKimkV5jtRYtjhgp3Y7
	 VMLUSq9UE/jP5gC7zZJKK/tBhkwZLbN4QncOv+HyRRgEgSOX518SaEE8w/hipCbtyp
	 Nzj3qKjwxEEWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CE8C3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172156835360.11260.9579212061058364888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de988b0722cdc3a96e85d49bb787b4a7147d63deac6934204d56d5c45fb24858
Date: Sun, 21 Jul 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721568353
