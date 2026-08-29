Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 911D735F19D
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787981434; cv=none; b=asm5REXP4G8LPIu8PMXz3dW18DoSIrbEukPoLYISrpy+Md46KZ17PTZdgeWJY6F1aDRKhWEoURfW94gxUFXFUS355vW10vgJNE3QDwogXZv1c0h2WakJoZ42lbZ2VQbXZIphqSDGYJjtE7tFk3wAFUtma73SCqBm7DeoJUSkwdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787981434; c=relaxed/simple;
	bh=sf/8UOD4o0J1c8Dga0VAYaSTIXpKlX0idzUbaTuQd1Q=;
	h=To:Subject:From:Message-Id:Date; b=aKnaQPzJoNdyPONQRnuKN/CgSc5HWNgqGylRzCkV9j7trLRt6QkcC56BMsve5Uj+aqnh9Wr2H6W7suCdR5QlE8q5yqmV4VfBVJDUa0Se6VKJkUhqhMUeIUWzvSjDV+IToL7dVD8KvsHTQVmYqzKzg8ruMnCU04TnkyKX+XAth3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACxYG6k/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACxYG6k/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D77C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787981433;
	bh=sf/8UOD4o0J1c8Dga0VAYaSTIXpKlX0idzUbaTuQd1Q=;
	h=To:Subject:From:Date:From;
	b=ACxYG6k/XgtzIMzIZPHrFZGixYFF0Y1V7N0cLqbYdxg5ko2LDYktigi+Bx/eFG/sZ
	 cmQOrA3TZxNe1wWWrfn085/48WSyQoXND2Yqzwbc+4Sc+MlQAjPW6ZIdw23w/K+Pc2
	 t0islCtoXnUfq0mfbldvf0pS7Ml4RAXbb9oasF2kdAgf/JMMbMikA8mvnod5BXTAw6
	 ertuAF+8e2FeZkjJEdbvw6O0YdLTDMiiQekHBIVrEMVwrI0c4lyyacphvjxRuTcCo7
	 dxu3FOD+0tRPNUGQTccDldnEUy9yX86KgvJSo2TcVGTgRbW6km8zHsV10QgE+vDVpT
	 rdHSG6s/34ktg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD090C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798143368.11823.1339626236492044708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aa4a1f001e6d677a3a06a64505b43fb3a544b96f95946d52e3fcd009cb8a0c1
Date: Sat, 29 Aug 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787981433
