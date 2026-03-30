Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAEB2DCF7D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774864494; cv=none; b=dfnlgcaMT5WYEEuz5twWdZddeZfVkQ8oiiW2SLiUK+WxgwVnZXIMGIIO6/659kvEkE35uQ+FEz3SRs+9uksVGVU2REYjKhps0O0bNIN9riZx6MazlUh37frUM35WBfrml2fyRUZscBoYf73OlQ5CHYtxIuZQ2jF/ZEc1wZV6qX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774864494; c=relaxed/simple;
	bh=d2DakLnIae2A+xlna/imOSygbjhs3Y+Sb1/9PdsW8xA=;
	h=To:Subject:From:Message-Id:Date; b=DIxt+kuMIm2IQyWJIlQuuKB68mYdMfm0xA0KvrogCtRepzVsd2/Sj2z6yrhAipaJgQof4sjknHfcGNGXbre4ULk2QZtRBKePrAkzFqbUXy6v6wEFMppfhWipwRNU3mZ9KMycjH+RXldlip9jhah0defHEbQnexNJ3A7tYxFzBxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8mYzZWh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8mYzZWh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A5C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774864493;
	bh=d2DakLnIae2A+xlna/imOSygbjhs3Y+Sb1/9PdsW8xA=;
	h=To:Subject:From:Date:From;
	b=V8mYzZWhXkP6fpV1lAu5jstxqiWTZ9qKme9PRFf/C7k5oh7H9TLjohIpSzIpU/LFl
	 EGZ7w1j1fCyvgezNpytevn6xEyNB3rDJ71nlljopUbWfWBrjVvouhX0rjX/O1lvgMP
	 Ew++wpUf/oVuuZzJToh2Q3RASaIfQkwaJmRGbTWSU+0OHTqgXgxx5cFkLodU4/1uCD
	 PJopAOxVlOn2NeY7tzaQE4OI1+fimk0QoxMypzilu1aesdCF9dURbvFmPK+gKZncIk
	 8Tz1qO24NS4YxiVcb/PUYv86pNezInIcTRkEItWywW2mArNyJ/WWS8h+5QDj4cBw5t
	 sybZg0M3FSAJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959E2FB3CEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486449360.18541.15212940841998193859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb347214f77183362e8181ed7826767304dca228d178048df78c62144932418
Date: Mon, 30 Mar 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774864493
