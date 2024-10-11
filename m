Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7568121F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728661554; cv=none; b=uHC+5q8lvE8z+6WEq6CnuFTNZh7YWPVKYOv7zj0ACq+ApsSSLrIuv/jVncukfnfgwqOctMZy748+whBSO//6T5E+BsfOOA9dpk7LharUYKN1OsL/9t7s6a1UGJ8VYKjCv5UyQHJCwUwsSZUw7gmbzF/pgTkxuZopdF97wU6d6Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728661554; c=relaxed/simple;
	bh=gzdjlZGVL29GPhTsINDnr51gxeIWICAyYTiFnquq7WE=;
	h=To:Subject:From:Message-Id:Date; b=UM5rjKkYD0BJ+CzsXiHUuiwrEMpQv6p/FWE7W/KWlU8bY4VwagqIece5uVbcwtUfkly2fTZywZK1eEcC/EPBs130vOLxrKYwEoHiRRUhwzsyQaluC+FIz0opTuBejARrj1j2rfYFOZA8E31f1kUTdlrLOF5fXNOTDG3fnDi9FII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gf6ruFWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gf6ruFWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4953C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728661553;
	bh=gzdjlZGVL29GPhTsINDnr51gxeIWICAyYTiFnquq7WE=;
	h=To:Subject:From:Date:From;
	b=gf6ruFWI10/seU8W2gumryElAkwdrJ7GRPSlkjOoNHq8dURUQWbXRfYsWIQ+1ls3g
	 ztxlWUrNIxdLjSFDu4/taJ3+M3azPoVlKhZrm+EQpiZrOP6jDDfClbBFqBJRMjeRbD
	 JcHVV9WqsbpMJkcYyLAmfe6RRu7MYlQ4LoaAOcz04jvgfyKxioH1zKCGU3UgRkVE7N
	 UVgDJgwxHr4VxX9Eurc8C4yRbqdpZo8HecAWaP1l5lrtkUaejKKkAIHLU3SGHJmEQ3
	 5rKrBBIXHFSM3h4/STo0LI1o4zYsdveN1uwFczooq5jKg5dEvyx3X6aiv1fwILVXgR
	 MSabtQmDs4MsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96641D0D7BB
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866155360.19087.5833156324200495478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57c27be61d9d1a7c2f8bf9dd4b22be4b8981d8e98b3cb81dc8d148073bd36fc
Date: Fri, 11 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728661553
