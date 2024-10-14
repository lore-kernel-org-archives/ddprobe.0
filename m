Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A4913BC02
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728943554; cv=none; b=KYnp6RM1t++bfnU+grvTbXXmhadMfRKB5jXmHIPs7LJrqeMvrrSDUPuIDmGmDim9v8npsBME5v5IfZvzpfhWrWgsidVG/J9CvHVorRVlVhBYNUilSr4fdI0BJBdzlsN4iyO+iUElOrEwMAW0phDw0plagrip8QTEzOcpJVXG9bE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728943554; c=relaxed/simple;
	bh=1GhT1Y5yCbqFZ4vQLCdbfrgMqNDJVExaeuQwcj6RaRs=;
	h=To:Subject:From:Message-Id:Date; b=ndA6eBaPTX1XQ9DiNMIkWj//Es1wISui+P1IwywsvYsvz2bljM6ewjcRxnrkFa5dWvdONPLSrHo1RzUo0QqizbW67iFBmUw6MjNZPFYu6Q5OtoqiOxDVxe0kGiIS5Wt+9n3HU8R70jxjQXza1vcnRxOxvuY2FrjMg5IuxdYJuFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQKnr+Ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQKnr+Ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8ECFC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728943553;
	bh=1GhT1Y5yCbqFZ4vQLCdbfrgMqNDJVExaeuQwcj6RaRs=;
	h=To:Subject:From:Date:From;
	b=kQKnr+EwN9ld5AABNgotjnB2Y5jlo+G746obdS8b6WPvUP+toTDMTADosAqzrygQF
	 x9EmqGiqBxFF6XfrMjYMGZSrNXbkIaWQJtvxEunLS6X6RAo9oMaoVRQzBTdJVXiGWb
	 3eVTGEihB2exH3zskxIYHlmTpWKRKSVejZA903CkzPYJ59yC9rvDR1xDqw2HZPwqqq
	 EhIoJBifCiw5qDl6iP+keD0wfXCyWyBI0zvgSHPcfNNNYms3h92F+mZSIQC+sYBmoa
	 IsZbZ6rdqFrFly/guaztXrQTHpboXmnKlnXM0+Dgva7V0+2ypENC4NFLBhWMmjexRv
	 bckDmzNRDW+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE04D18153
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894355362.30736.6791713221878770408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2eafb4fa876d0e6b42239ad379e2104d7fb3607b75c8dd49ee4b07eaa984c1
Date: Mon, 14 Oct 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728943553
