Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073A736BCE6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769772834; cv=none; b=pv0ye1X3+Ok87d35iBI11G46cFjqC8U5lxGb/DyOCnyQxxBOigzViwZnoHdrHMR1RhzsYiXYJdE635BrRnCse9bhe2brn0I5vbrM4eO585yGWoWh7GfnCKwJP9MQ6uKmll6pQfe7Tu4O9IuGwu1PP9+bs+Et7eJ+Ska6De0sRNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769772834; c=relaxed/simple;
	bh=3952R5VZIYh4QlIPgvda3R5l5IrsAxa1zy7Z55W5V3A=;
	h=To:Subject:From:Message-Id:Date; b=ThtKJp70iu/H6m+VTnf+JV+nRlkcaBNOVSw7d7eAwo102m7Fw4FL8YgCckVC9NR7hIg8G7o25+Si9kQZvCF49t/8Lm3DKywNKN7mOpyaf3DQfwmyk6WPcUDqVj4Mn0o8lSztDPwImZtj+3Gd1JfhNVGqaA2G6nPchYhZa6B+050=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u2hiqJsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u2hiqJsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0678C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769772833;
	bh=3952R5VZIYh4QlIPgvda3R5l5IrsAxa1zy7Z55W5V3A=;
	h=To:Subject:From:Date:From;
	b=u2hiqJsbWzfMxzPpBmW3+uOnuMoWKB74mZ1Fa7LKmtX0TAArdG7el9EQtTxdiyK9p
	 DbFe/s8rE+hpxFeemkGjuT7weJw7+zKO140Fkvdaa/cJZyeq6/qGudqILSqfqiCZmE
	 s8f25zI98HKAjLzqtazgQYz8f69hXOziJH9ZxNZ6R0zsANH7q68DODG7nV4MvcSrdg
	 9NExdyHM4F53ebxpHAxao89WG7rV7wFl7Ra3/00BWAjVIveYtu15pLfMy1y/0Ee/UA
	 IQm9aHN2+xAFs/ZCGm5aq/G33sX1JhbtVi31LRduYHTgLkyT3zGg+MVf8cPM/hzo5O
	 xOFBjXvmDrXrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF8AE6BF03
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977283358.20107.7977899820108701982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d587eb8b07b2b055dbbf6a567bf13845ef7c4552950199c54fb609aaa2fb6f4c
Date: Fri, 30 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769772833
