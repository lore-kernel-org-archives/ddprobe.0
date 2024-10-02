Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC1211D0975
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727877354; cv=none; b=NNGMqjlkIYX6cAooKgD8UzlVUOMpMC0pWZwSJjtQ0VgS9I9vkt2QfIfplf4JXngmhFZOjjafr8BsmgkH9GnZTIPEIbwQTVUo1+9sSJRZsATayzrVnDt98gklT0C/ZvndUDbNW/IisxYu8lMitRTF+jVvWDcZfXefFXUM9e6i95o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727877354; c=relaxed/simple;
	bh=xvtwoWcETv01i5I+FwuovjCG5J8uDDic0Hw/+yGQmq4=;
	h=To:Subject:From:Message-Id:Date; b=u0Z9kiBr/6kbXayOXris3I1IdPanT7j6/tiaQz9oagGO4sJAFBXvWps35eG+lopTt8NaPCj2oUIvkfm7U1WIHw+UNt464vg3fMVHfoVPUiAhWZfu9N/mAN/R+xGEHlOxHMXNXdJ/tE5+exCSZgVP4Zx5mqaqqFELmmioZORlRuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W3/bUXSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W3/bUXSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F24C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727877353;
	bh=xvtwoWcETv01i5I+FwuovjCG5J8uDDic0Hw/+yGQmq4=;
	h=To:Subject:From:Date:From;
	b=W3/bUXSOu2HY4r1Kng8RJjeeQIniAG99qgLygBLu5OOlPpp6poGTM/ViNV0ZA+1mO
	 wSzhyLYn8RpyyR6IlK9CXTOEXkkozGARi5D9Xy1hEZTDZKqeEeZx7uGHl9QMhj8deK
	 11RIzAgb3wAItOhJ7+u/1mSGXLcRj/gJdsGw2YfIBkz2Uci83pwUOiS7GttC9d9XZJ
	 Kry8J+Zn6P1LJxHdU3J75rdjl1vhQaTRFKkaBDEY6c+WjY5BYUXbLInwAh7xEm1u7B
	 SQ73DqS20f8VYm+UsxaOOThOOOqk0G+YRDDepfav11LpH6fgGlthOXqn96oEizhpge
	 62B2GqS2YpokA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82B9CF6D28
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172787735367.27659.14516982216283925201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cede754ad15bb20e06420197bcb0e9e4572d3d539b52550b1dc82e133a9474a
Date: Wed, 02 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727877353
