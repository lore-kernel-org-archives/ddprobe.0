Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D15220683
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744391994; cv=none; b=X+05EDr6TaL0Ch1dCuZvy0Hi456aJwzIqcwFyfgUu00MIF7acPyGzIqsXT8LkzXlIk0DPwpAltA5FQ8WumW0ymuVu1mjPhcZWVvVSF0fP8YNXOgPSc04eqrSY/902xN2WSBdtB5jks2c9ietZRfHjbssCyElcrKrZisgIfagmRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744391994; c=relaxed/simple;
	bh=CY4hGCa+tkGFpmq033fWF6rgEGkuhr26wSOlryMjME8=;
	h=To:Subject:From:Message-Id:Date; b=thy3xkNQaIOIWPX3BIYgR6seUsQMiVB7tKaiIEKZk6pS2FyaFu+oUrM4VPkpRZ5ZXX3h4QuAHvqtJ0pJLVvCaidzA1K9uC2zbdQuXg+9KMYenR99heuoJbL2szGAhkoVW/aUwqYWYBzCPMTk3gqRJ3rQnm6us1O8TX5Xkct1+X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeX9aWwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeX9aWwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9FC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744391993;
	bh=CY4hGCa+tkGFpmq033fWF6rgEGkuhr26wSOlryMjME8=;
	h=To:Subject:From:Date:From;
	b=ZeX9aWwP9yLNc0LfEZfhfm6Zd3AjkM7P3UUXgzI/Va88exsyYKh/hbELDb+xiJJZs
	 ESW+LqsDBpJHWFDiHwRrApD/hpHfef9W0l2oZnTqVCO+lB1YtNa4tBU5w7mvPdP/Uj
	 hjSAQMnLNkDHeRb62cOAQ9hjJlxRxTQkR6d3pXqABjDhaCvEroH/O31aDuKy5/9gXi
	 pcFFv1U/I3jMwFaioyzkDocxKieSqk4yhhMWcfylkea3UdbeM8LwA7OCL9gQOov9Lx
	 OglW2t/k3bVa/6e16wGsX+DNWAa67DXuV4V/Eb8tlD9Tlh3GG4IORzKO9sWW+w0MOJ
	 lYM45HZqU53FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9414AC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439199359.18124.5920518220137197008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab55755dd7d337899b6e884fe464b8e6e89ad4574bb573f358ea722c0cb1a79
Date: Fri, 11 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744391993
