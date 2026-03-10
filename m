Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C1D35DA6E
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773143694; cv=none; b=Qw7qf3qZSOIjH4+ntEfwXYzzQjfTHQAOK7ftTRVpDjkRQMyB/Tr4PGhupGqTTNIYQ9MMruzfKLcJ0rPVRNdV3UGOH3Su0MZZBBY7MV/RQb0DnkglgGbcFt4mx8S8dLMd4tm2lDJKz4sg5tMQ6jc6NTh1g89fwwqeqrVi2mq+8h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773143694; c=relaxed/simple;
	bh=dIffUU1bOIj60AixSxj0o6I5SXBlO6oaqsBMDI9m3fg=;
	h=To:Subject:From:Message-Id:Date; b=Pm99fVglSfp1QwJMXDfkJ5ja8Dcw04vJ7NIg6m7g5u3k/ltQNcoG83eqNVGkFwokOItmccGrzTIBVfk4/xDr4/spOBRAovpX59jsXB6uo/462t4Ye6TrvWACw0qGoiKorMWO0Rdnh9FAleRYkBuBsnJ52Gw1/2fxf2u7gmN6q4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiJ6XMUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiJ6XMUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8D5C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773143693;
	bh=dIffUU1bOIj60AixSxj0o6I5SXBlO6oaqsBMDI9m3fg=;
	h=To:Subject:From:Date:From;
	b=kiJ6XMUhkQpf+u4tU0fkCRg0Mpe272TLgs4RjYVuEkLWnV3JsaelfRoB2eT8Ryzrh
	 4y8bTHsJ5igMWLoSo2Tc9v3v7xtOfJLlYLadwxmMDNQkPfCvhyu+b5XOJiv86ePZbo
	 4XFgp5O8O/lvj2T1dJu4rvcWwjqakKwkv/6HvV72E7q0ro17LnGnEBadaBiKf5fM6Z
	 UGbHl+eWjrVFnesvnIofAbA5rYWz8X80MoTGScaX1cd2pnr7LLdARjQFc+XF2ekDsq
	 q5Z+E+MLGpllejbd2WcaGZuGbhYfYY7U85BDM/2QaqcIxFnaGWvpJxhHFvQXCTH3zT
	 lbSrzw2SOIvzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFCEB1052
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 11:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314369357.18036.6471051053231808284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cfd3c2969d366c2db3c8982575b73e8fb4d20f2bad070bd4a49c6dddc090e8
Date: Tue, 10 Mar 2026 11:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773143693
