Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226503234
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754379594; cv=none; b=HLCgUuYhXXJgFlqJW0L6TIUgMSRuJYex8yRLDyMZ+ox/+4oDKRtfP1uKAQlkXKzm3otNozsxEtSPVrOmIYpk/Jq3R4oycifmOoNjFPKIRn7IPTXz621t9g8gnHqanaTir/DXfJlXMVHtj1w1dqEBKBc67cVFN9zN8Y7sF5n5etY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754379594; c=relaxed/simple;
	bh=faR7q+663BlOBWHRO3KgLcJgIZSP+R8BwAcJXv77av0=;
	h=To:Subject:From:Message-Id:Date; b=lhxgcoF0tJEG3AH0BSge80KDXJX2YsY7dEPb9VesybIIi3Dq7yUTMDHJ30V76bigCRzNH+3El+vJuWA9fjgOikT6G6pTP0cqrfMDuLq7jucFqGHc2aCoSxqERdey/a9yJwnCnRNLXJsqruzptPENWXqj4G8gk5iyw41NXM0VMfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Po9vgu/P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Po9vgu/P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1819C4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754379593;
	bh=faR7q+663BlOBWHRO3KgLcJgIZSP+R8BwAcJXv77av0=;
	h=To:Subject:From:Date:From;
	b=Po9vgu/P+/wI+6o0KVP/05+KEWxeNQZXzUK8R/6Q1v2XUzXYAxIT9XZZlB8dLPucz
	 rct6wSXRD0hvSI5UCcPo+1zjaUUsWyX0gbccqEzArNbG8PeE6mh/0Yn+BuCheO8Jrv
	 NZc6sKYNm+DC6P0A9BzOkyoT0Fo2nEXVgahnB49E2LJAq4Miqaem+FxKFcl3M2T+rU
	 BpoaJ8n6kBhodJ0PjzafvPVfYRefLjhfkztp1ye5KkwDmkCL7Rn8Cfl6XlhygdTf6b
	 zqp3aUlEVZRnWUChoCoIdOX4JN7QkfPqq0vWUl8u0vPJQ7wFuMSubrQY5pKOuTJw75
	 GRS67+xYmpP8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92726C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437959358.6707.61933151694529859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9193f0fe73198373c9e6948794293a589f61711ced7eee7cb192b313a3a99969
Date: Tue, 05 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754379593
